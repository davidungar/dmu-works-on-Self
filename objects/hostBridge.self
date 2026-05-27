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
-- claude & dmu 5/26"

globals _AddSlots: ( |
  hostBridge = ( |
     parent*     = traits clonable.
     eventFile   <- nil.
     presentFile <- nil.
     count       <- 0.
     quitFlag    <- false.

     "wrap the two raw fds the host created (same process -> shared fd table)"
     bindEventFd: ef PresentFd: pf = ( |
        |
        eventFile:   os_file copyFd: ef Name: 'hostBridgeEvents'.
        presentFile: os_file copyFd: pf Name: 'hostBridgePresent'.
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
  | )
| ).
