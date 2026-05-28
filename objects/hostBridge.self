"hostBridge -- the Self end of the SpatialSelf Swift<->VM host bridge.

Reads length-prefixed event frames from an `eventFile` fd (host -> VM) and writes
length-prefixed present frames to a `presentFile` fd (VM -> host). Both fds are
created by the host (Swift) and live in this same process's fd table, so we just
wrap them with os_file copyFd: (async -> reads block the green thread cooperatively
via suspendForIO, never the OS thread). Frame = 4-byte little-endian length + payload.

This is the durable bridge object (plan artifact B.6, modelled on eventWatcher.self).
Currently filed in for E.2 verification; it still needs transporter modularization to
join a world snapshot, and a `bindFromCommandLine` (read --bridge-event-fd /
--bridge-present-fd) for the real app to convey the fds. The trivial `handleEvent:`
below (bump a counter, present it) is the E.2 test payload; real handlers replace it.

Two pumps coexist here: the legacy untagged `watch` (E.2-compatible, used by the
existing tick-button test) and `watchTagged`, the demuxing pump that backs the
generated Self<->RealityKit vocabulary (HOST_BRIDGE_PLAN.md, 'Dispatching a command
into Swift'). watchTagged + sendCommand:/request: introduce a 1-byte tag at the
front of every framed payload: tag=0 input event / fire-and-forget command,
tag=1 reply / request (followed by a 4-byte LE reqId). Replies ride the same
inbound channel as events; the pump routes them to the parked requester's
semaphore via an outstanding-requests dictionary. The legacy watch is kept so the
existing E.2 round-trip isn't broken while the Swift app gains tag awareness.
-- claude & dmu 5/26 + 5/27"

globals _AddSlots: ( |
  hostBridge = ( |
     parent*     = traits clonable.
     eventFile   <- nil.
     presentFile <- nil.
     count       <- 0.
     quitFlag    <- false.

     "demuxing-pump state (HOST_BRIDGE_PLAN.md, 'Dispatching a command into Swift')"
     outstanding <- nil.       "[reqId -> replyBox]; init in bindEventFd:PresentFd:"
     nextReqId   <- 1.

     "reply-box prototype: request: clones it per call (constant slot, so the prototype
      itself is built once at file-in; clone gives each request its own payload + sema)"
     replyBoxProto = ( |
        parent*  = traits clonable.
        payload <- nil.
        sema    <- nil.
     | ).

     "wrap the two raw fds the host created (same process -> shared fd table)"
     bindEventFd: ef PresentFd: pf = ( |
        |
        eventFile:   os_file copyFd: ef Name: 'hostBridgeEvents'.
        presentFile: os_file copyFd: pf Name: 'hostBridgePresent'.
        outstanding: dictionary copyRemoveAll.
        nextReqId:   1.
        self ).

     reset = ( count: 0. quitFlag: false. self ).

     "decode a 4-byte little-endian uint from buf at offset i"
     leAt: buf From: i = ( |
        |
        (buf byteAt: i)
          + ((buf byteAt: i + 1) *        256)
          + ((buf byteAt: i + 2) *      65536)
          + ((buf byteAt: i + 3) * 16777216) ).

     "encode n as 4 little-endian bytes into buf at offset i"
     putLe: n Into: buf At: i = ( |
        |
        buf at: i        PutByte: ( n          && 16rff).
        buf at: i + 1 PutByte: ((n >>  8) && 16rff).
        buf at: i + 2 PutByte: ((n >> 16) && 16rff).
        buf at: i + 3 PutByte: ((n >> 24) && 16rff).
        self ).

     "read one length-prefixed frame; return its payload (blocks the green thread)"
     nextEvent = ( |
        lenBuf <- ''. n <- 0. payBuf <- ''. |
        lenBuf: '' copySize: 4.
        eventFile readInto: lenBuf Min: 4 Max: 4.
        n: (leAt: lenBuf From: 0).
        payBuf: '' copySize: n.
        n > 0 ifTrue: [ eventFile readInto: payBuf Min: n Max: n ].
        payBuf ).

     "write payload as a length-prefixed frame to the present channel"
     present: payBuf = ( |
        n <- 0. frame <- ''. |
        n: payBuf size.
        frame: '' copySize: 4 + n.
        putLe: n Into: frame At: 0.
        0 to: n pred Do: [|:i| frame at: 4 + i PutByte: (payBuf byteAt: i) ].
        presentFile writeFrom: frame Count: frame size.
        self ).

     "trivial E.2 handler: any event bumps the counter; present the 4-byte LE count"
     handleEvent: payBuf = ( |
        out <- ''. |
        count: count succ.
        out: '' copySize: 4.
        putLe: count Into: out At: 0.
        present: out.
        self ).

     "pump loop -- run as a forked green thread; one suspended read per idle iteration"
     watch = ( |
        |
        [quitFlag] whileFalse: [ handleEvent: nextEvent ].
        self ).

     "------------------------------------------------------------------
      Demuxing pump (tagged framing) -- backs the generated reality.self
      vocabulary. Frames still ride present:/nextEvent (which handle the
      4-byte LE length prefix); the byte immediately AFTER the length
      prefix is the tag.
        outbound (VM -> Swift):  tag(1) [+ reqId(4 LE) if request] + body
        inbound  (Swift -> VM):  tag(1) [+ reqId(4 LE) if reply  ] + body
      tag 0 = command / input-event;  tag 1 = request / reply.
      ------------------------------------------------------------------"

     "fire-and-forget command (tag=0). For the generated reality.self mutators."
     sendCommand: payload = ( |
        frame. n.
        |
        n: payload size.
        frame: '' copySize: 1 + n.
        frame at: 0 PutByte: 0.
        0 to: n pred Do: [|:i| frame at: 1 + i PutByte: (payload byteAt: i) ].
        present: frame.
        self ).

     "synchronous request (tag=1, reqId, body). Parks the CALLING green thread on
      a private semaphore until the demux pump delivers the matching reply frame.
      Cooperative -- never blocks the VM OS thread (the pump and the requester
      are different green threads on the same scheduler)."
     request: payload = ( |
        reqId. frame. n. box. reply.
        |
        reqId: nextReqId. nextReqId: nextReqId succ.
        box: replyBoxProto copy.
        box sema: semaphore copy.
        outstanding at: reqId Put: box.
        n: payload size.
        frame: '' copySize: 5 + n.
        frame at: 0 PutByte: 1.
        putLe: reqId Into: frame At: 1.
        0 to: n pred Do: [|:i| frame at: 5 + i PutByte: (payload byteAt: i) ].
        present: frame.
        box sema wait.                  "parks until dispatchReply: signals"
        reply: box payload.
        outstanding removeKey: reqId.
        reply ).

     "tag-aware pump: dispatch reply frames to their waiters, events to handleEvent:.
      Run as a forked green thread, like watch. ONE caller -- never coexist with watch
      on the same fd (they'd race on nextEvent)."
     watchTagged = ( |
        frame. tag. evtBody. m.
        |
        [quitFlag] whileFalse: [
           frame: nextEvent.
           frame size = 0 ifTrue: [^ self].
           tag: frame byteAt: 0.
           tag = 1 ifTrue: [ dispatchReply: frame ]
                   False: [
              m: frame size - 1.
              evtBody: '' copySize: m.
              0 to: m pred Do: [|:i| evtBody at: i PutByte: (frame byteAt: 1 + i) ].
              handleEvent: evtBody ] ].
        self ).

     "deliver one reply frame: tag(@0) + reqId(@1..4 LE) + body(@5..). The pump
      hands the body to the parked requester's replyBox and signals its sema; the
      requester resumes inside request: and returns the body to its caller."
     dispatchReply: frame = ( |
        reqId. body. n. m. box.
        |
        n: frame size.
        reqId: leAt: frame From: 1.
        m: n - 5.
        body: '' copySize: m.
        0 to: m pred Do: [|:i| body at: i PutByte: (frame byteAt: 5 + i) ].
        box: outstanding at: reqId IfAbsent: [^ self].
        box payload: body.
        box sema signal.
        self ).
  | )
| ).
