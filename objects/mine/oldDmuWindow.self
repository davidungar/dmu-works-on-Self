"$Revision$"
"Copyright 1991:
    The Self Group: David Ungar, Craig Chambers, Bay-Wei Chang, Urs Hoelzle
    Stanford University, Stanford, CA"

traits graphics _AddSlotsIfAbsent: ( | ^ windowEventHandler = () | )
traits windowEventHandler _Define: ( |
    _ parent** = traits clonable.

    eventLoop = (
	[ | :exit. event |
	  event: display nextEvent.
	  dispatchEvent: event.
	  event delete.
	] loopExit.
	self ).

    dispatchEvent: event = (
	"Send myself the message whose selector is the event typeName."

	(event typeName, ':') sendTo: self With: event.
	self ).

    _ eventsToCatch = xlib events buttonMotionMask     ||
		      xlib events buttonPressMask      ||
		      xlib events buttonReleaseMask    ||
		      xlib events colormapChangeMask   ||
		      xlib events exposureMask         ||
		      xlib events keyPressMask         ||
		      xlib events structureNotifyMask  ||
		      xlib events visibilityChangeMask.

    _ defaultEventHandling* = ( |
	comment = ('Default handler methods for ALL possible event types.').

	buttonPress: event	= ( debugMessage: 'buttonPress event' ).
	buttonRelease: event	= ( debugMessage: 'buttonRelease event' ).
	clientMessage: event	= ( debugMessage: 'clientMessage event' ).
	colormapNotify: event	= ( debugMessage: 'colormap event' ).
	configureNotify: event	= ( debugMessage: 'configure event' ).
	enterNotify: event	= ( debugMessage: 'enterNotify event' ). 
	expose: event		= ( debugMessage: 'expose event' ).
	keyPress: event		= ( debugMessage: 'keyPress event' ).
	keyRelease: event	= ( debugMessage: 'keyRelease event' ).
	leaveNotify: event	= ( debugMessage: 'leaveNotify event' ).
	mapNotify: event	= ( debugMessage: 'mapNotify event' ).
        motionNotify: event	= ( debugMessage: 'motionNotify event' ).
	otherEvent: event	= ( debugMessage: 'unknown event: ', event type printString ).
        reparentNotify: event	= ( debugMessage: 'reparentNotify event' ).
	unmapNotify: event	= ( debugMessage: 'unmapNotify event' ).
	visibilityNotify: event	= ( debugMessage: 'visibilityNotify event' ).

    | ).

    _ debugMessage: str = ( debug ifTrue: [ str printLine ] ).

| )

traits graphics _AddSlotsIfAbsent: ( | ^ window = () | )
traits window _Define: ( |
    parent** = traits windowEventHandler.

    ^ copyOpen = ( copy openOn: '' Size: 200@@200 Position: 50@50 ).
    ^ openOn: disp Size: sz Position: pos = (
	(displayName: disp) initializeSize: sz Position: pos ).

    _ initializeSize: sz Position: pos = (
        display: xlib display open: displayName.
	xwin: xlib window createOnDisplay: display At: pos Size: sz.
	xwin name: 'Self X Window'.
	xwin iconName: 'Self Win'.
	xwin catchWMDelete.
	xwin eventMask: eventsToCatch.
	xwin selectInput.
	xwin map.
	spawnEventWatcherProcess.
	self ).

    ^ close = (
        display close.
	watcherProcess abort.
	self ).

    _ spawnEventWatcherProcess = (
	watcherProcess: process copySend:
	    (message copy receiver: self Selector: 'eventLoop').
	watcherProcess resume ).

    _ eventHandlers* = ( |
	buttonPress: event = (
	    debugMessage: 'buttonPress event'.
	    fullyVisible ifFalse: [ xwin raise ].
	    mousePosition: event x @ event y.
	    buttonPressed: true.
	    self ).

        motionNotify: event = (
	    mousePosition: event x @ event y.
            self ).

        buttonRelease: event = (
	    mousePosition: event x @ event y.
	    buttonPressed: false.
	    self ).

	clientMessage: event = (
	    debugMessage: 'clientMessage event'.
	    (event message_type = xlib wmProtocols)
	    " && [(event data: 0)  = xlib wmDeleteWindow]"
	      ifTrue: [ close ]
	       False: [ debugMessage: 'unknown clientMessage event' ].
	    self ).

	configureNotify: event = ( | pos. sz. |
	    debugMessage: 'configure event'.
	    pos: event x @ event y.
	    sz: event width @@ event height.
	    debugMessage: pos printString.
	    debugMessage: sz printString.
	    boundingBox: pos ## sz.
	    configurationTime: times real.

	    mapped ifFalse: [ ^ self ].
	    fullyVisible ifFalse: [	 
		xwin raise.
		"to prevent cycle if window is partially off screen"
		fullyVisible: true ].
	    self ).

        isConfigured = (times real > (configurationTime + 1000)).

	mapNotify: event = (
	    debugMessage: 'mapNotify event'.
	    mapped: true.
	    self ).

	unmapNotify: event = (
	    debugMessage: 'unmapNotify event'.
	    mapped: false.
	    self ).

	visibilityNotify: event = (
	    debugMessage: 'visibilityNotify event'.
	    fullyVisible: (event state = event visibilityUnobscured).
	    self ).

    | ).

| )

prototypes graphics _AddSlotsIfAbsent: ( | ^ window = () | )
window _Define: ( |
    _ parent* = traits window.

    _ displayName <- ''.
    _ display <- xlib display.
    ^ xwin <- xlib window.

    _ mapped <- false.
    _ fullyVisible <- true.
    _ configurationTime <- time current.

    _ watcherProcess <- (| stop |).
    _ debug <- true.

    ^_ boundingBox <- (0@0) ## (1@@1).

    ^_ mousePosition <- 0@0.
    ^_ buttonPressed <- false.
| )
