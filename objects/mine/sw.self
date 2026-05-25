"Sun-$Revision: 30.1 $"
"bugs: initial draw, sched dyning, flicker"

traits     applications _AddSlotsIfAbsent: ( | spaceWar = () |)
prototypes applications _AddSlotsIfAbsent: ( | spaceWar = () |)

traits     spaceWar _AddSlotsIfAbsent: ( | window = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | window = () |)

traits spaceWar window _Define: ( |
  _ parent* = traits window.

    configureNotify: e = (
        resend.configureNotify: e.
        isReadyForPrimeTime ifTrue: [
            screenBitmap fillRectangle: boundingBox Color: white.
        ].
        self).

    open = (
        debug: false.
        windowParent: windowParent copy.
        openOn: ':0.0' Size: 800@@600 Position: 100@100.
        self).

     close = (
         world stop.
         resend.close).

    isReadyForPrimeTime = (mapped && fullyVisible && isConfigured).    
| )


spaceWar window _Define: ( |
    windowParent**  <- window.
  _ spaceWarParent* = traits spaceWar window.
    world.
| )


traits     spaceWar _AddSlotsIfAbsent: ( | world = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | world = () |)

traits spaceWar world _Define: ( |
    parent** = traits clonable.

    copy = (clone objects: objects copyRemoveAll).

    startingAndStopping* = ( |
        play = (
            openWindow.
	    setColors.
	    populate.
	    startAnimation.
        ).
  
        openWindow = (
            window: spaceWar window copy open world: self.
            self).

        setColors = (
	    black: black copy index: window xwin display screen blackPixel.
	    white: white copy index: window xwin display screen whitePixel.
	    self).

        populate = (
            objects: objects copyRemoveAll.
	    objects addLast:       spaceWar sun copy world: self.
	    objects addLast: ( ( ( spaceWar ship  copy world: self)
                                      size: 20@20 )
				      position: 100 @ 100 )
				      velocity: 10 @ -10.
	    self).

	startAnimation = (
            animationProcess: animationProcess copySend: 
                (message copy receiver: self) selector: 'run'.	    
            animationProcess causeOfBirth: 'space war'.
            animationProcess resume.
	    self).

        stop = (animationProcess abort.  self).
    | ).

    running* = ( | 
	fps <- 37.5 / 2.
        run = (
            [
                window isReadyForPrimeTime  ifFalse:  [ 
	            times delay: 1000.
	        ] True: [ | t. frameTime |
	            t: times real.
		    step.
		    myBitmap: bitmap copySize: window boundingBox size Depth: 1.
		    redraw.
		    screenBitmap planeMask: black index.
		    myBitmap copy: (0@0) ## myBitmap size 
		               To: screenBitmap 
			       At: window boundingBox origin.
		    myBitmap release.
		    times delay:
		        buttonPressed ifTrue: 100 False: [
			  0 max: (1000 / fps) asInteger - (times real - t)].
	        ].
            ] loop).

	redraw = (objects do: [|:i| i redraw]).
        step   = (objects do: [|:i| i step  ]).
    | ).

    fillRectangle: r  = (
        myBitmap fillRectangle: (r translateBy: radius)  Color: colorsMono ones.
        self).

    radius = (window boundingBox size / 2).

    buttonPressed = (window buttonPressed).
    mousePosition = (window mousePosition - radius).

| )

spaceWar world _Define: ( |
    parent* = traits spaceWar world.

    window.
    black   <- colormapEntry.
    white   <- colormapEntry.
    objects <- list.
    animationProcess    <- process.
    myBitmap.
| )	 

traits     spaceWar _AddSlotsIfAbsent: ( | sun = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | sun = () |)

traits spaceWar sun _Define: ( |
       parent* = traits clonable.

       step = (self).

       boundingBox = (rectangle center: position    Size: size).

       redraw = (
           world fillRectangle: boundingBox.
	   self).
| )

	   
spaceWar sun _Define: ( |
       parent* = traits spaceWar sun.
       world   <- spaceWar world.
       size     <- 10@@10.
       position <- 0@0.
| )

traits     spaceWar _AddSlotsIfAbsent: ( | puck = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | puck = () |)

traits spaceWar puck _Define: ( |
       parent* = traits spaceWar sun.

       step = (
           world buttonPressed 
	     ifFalse: [
	       moveAndBounce
	   ] True: [
	       velocity: world mousePosition - position.
	       position: world mousePosition.
	   ].
	   self).

       moveAndBounce   = (
           move.
	   bounce).

       bounce = (
	   checkBoundAlong: 1 @ 0.
	   checkBoundAlong: 0 @ 1.
	   self).

        checkBoundAlong: which = ( 
            | other. p. absLim. lim. newP. edgeDamping = 0.9. |
	    other: (1 @ 1) - which.
	    p: position dotProduct: which.
	    absLim: which dotProduct: world radius - (size / 2).
	    p absoluteValue <= absLim  ifTrue: [^self].
	    lim: p >= 0 ifTrue: absLim False: absLim negate.
	    newP: lim - (p - lim).
	    position: (other * position) + (which * newP).
	    velocity: (other * velocity) + (which * velocity negate).
	    velocity: velocity * edgeDamping).
	    
       "update position & velocity"
       move = (position: position + velocity).
	       
| )

spaceWar puck _Define: ( |
       parent* = traits spaceWar puck.
       velocity <- 0@0.
       world   <- spaceWar world.
       size     <- 10@@10.
       position <- 0@0.
| )

traits     spaceWar _AddSlotsIfAbsent: ( | ship = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | ship = () |)

traits spaceWar ship _Define: ( |
       parent* = traits spaceWar puck.

	g <- 50000.
       
       " weird physics, thanks to Randy"
       move = ( | r. rs. rsLim. x. singularityRadius = 50. force. |
	   r: position + (velocity /= 2).
	   rs: r square.
	   rsLim:  rs max:  singularityRadius square.
	   x: ((r /= rs squareRoot) /= rsLim) * (g negate).
	   position: position + velocity + (x /= 2).
	   velocity: velocity + x.
	   self).

        c <- 20.

| )

spaceWar ship _Define: ( |
       parent* = traits spaceWar ship.
       velocity <- 0@0.
       world   <- spaceWar world.
       size     <- 10@@10.
       position <- 0@0.
       acceleration <- 0@0.
| )

spaceWar world copy play
