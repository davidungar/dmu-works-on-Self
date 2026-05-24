"Sun-$Revision: 30.1 $"


traits     applications _AddSlotsIfAbsent: ( | spaceWar = () | )
prototypes applications _AddSlotsIfAbsent: ( | spaceWar = () | )

" sharedInfo holds information shared by all objects in space "
traits     spaceWar _AddSlotsIfAbsent: ( | sharedInfo = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | sharedInfo = () |)


traits spaceWar sharedInfo _Define: ( |
    parent* = traits clonable.

    fillRectangle: r = ( | absRect |
      absRect: myWindow boundingBox intersect:  r translateBy: boundingBox center.
      bitmap fillRectangle: absRect Color: black.
      self).

| )

spaceWar sharedInfo _Define: ( |
    parent* = traits spaceWar sharedInfo.

    black   <- colormapEntry.
    white   <- colormapEntry.
| )

traits     spaceWar _AddSlotsIfAbsent: ( | window = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | window = () |)

traits spaceWar window _Define: ( |
  _ parent* = traits window.

  run = (
      [
          mapped ifTrue: [
              redraw. 
	      times delay: 50.
	      step.
	  ] False: [
	      times delay: 1000.
          ].
      ] loop).

  redraw = (
      bitmap fillRectangle: boundingBox Color: white.
      objects do: [|:i| i redraw].
      self).

  radius = (boundingBox size / 2).

  step = (
      objects do: [|:i| i step].
      self).

  open = ( 
      windowParent: resend.openOn: ':0.0' Size: 400@@300 Position: 200@200.
      black: black copy index: xwin display screen blackPixel.
      white: white copy index: xwin display screen whitePixel.
      objects: objects copyRemoveAll.
      objects addLast: spaceWar sun  copy window: self.
      objects addLast: ( ( ( spaceWar ship  copy window: self)
                                      size: 20@20 )
				      position: 50 @ 30 )
				      velocity: 5 @ -5.
      animationProcess: animationProcess copySend: 
          (message copy receiver: self) selector: 'run'.	    
      animationProcess causeOfBirth: 'space war'.
      animationProcess resume.
      self).

   close = (
       animationProcess abort.
       resend.close).

| )


spaceWar window _Define: ( |
    windowParent**  <- window.
  _ spaceWarParent* = traits spaceWar window.
    bitmap  <- screenBitmap.
    objects <- list.
    animationProcess    <- process.
| )

traits     spaceWar _AddSlotsIfAbsent: ( | sun = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | sun = () |)

traits spaceWar sun _Define: ( |
       parent* = traits clonable.

       step = (self).

       redraw = (
           window fillRectangle: rectangle center: position Size: size).
| )

	   
spaceWar sun _Define: ( |
       parent* = traits spaceWar sun.
       window   <- spaceWar window.
       size     <- 10@@10.
       position <- 0@0.
| )

traits     spaceWar _AddSlotsIfAbsent: ( | puck = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | puck = () |)

traits spaceWar puck _Define: ( |
       parent* = traits spaceWar sun.

       step = (
           window buttonPressed ifFalse: [moveAndBounce].
	   window buttonPressed ifTrue: [
	       velocity: window mousePosition - position.
	       position: window mousePosition.
	   ].
	   self).

       moveAndBounce   = ( | p. v. r |
	   r: window radius - (size / 2).
	   v: velocity + acceleration.
           p: position + velocity.
	   p x absoluteValue > r x ifTrue: [ | newAbsX |
	       newAbsX: r x - (p x absoluteValue - r x).
	       v: (v x negate @ v y) * 0.9.
	       p: (p x sign * newAbsX) @ p y.
           ].
	   p y absoluteValue > r y ifTrue: [ | newAbsY |
	       newAbsY: r y - (p y absoluteValue - r y).
	       v: (v x @ v y negate) * 0.9.
	       p: p x @ (p y sign * newAbsY).
           ].
	   position: p.
	   velocity: v.
	   self).

       acceleration = 0@0.
	       
| )

spaceWar puck _Define: ( |
       parent* = traits spaceWar puck.
       velocity <- 0@0.
       window   <- spaceWar window.
       size     <- 10@@10.
       position <- 0@0.
| )

traits     spaceWar _AddSlotsIfAbsent: ( | ship = () |)
prototypes spaceWar _AddSlotsIfAbsent: ( | ship = () |)

traits spaceWar ship _Define: ( |
       parent* = traits spaceWar puck.
       
       acceleration = ( | r |
           (velocity dotProduct: velocity) > 100000 ifTrue: [^0@0].
           r: (position dotProduct: position) squareRoot.
	   r < 8 ifTrue: [^0@0].
	   ((position /= r) / (r * r)) * -500000).

| )

spaceWar ship _Define: ( |
       parent* = traits spaceWar ship.
       velocity <- 0@0.
       window   <- spaceWar window.
       size     <- 10@@10.
       position <- 0@0.
| )
