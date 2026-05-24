"Sun-$Revision: 30.1 $"

"Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

  "Part of the prototype user interface."

  "traits <userInterface> boxArrow"
  "<prototypes userInterface> boxArrow"

traits userInterface _AddSlotsIfAbsent: ( | ^ boxArrow = () | )
traits boxArrow _Define: ( |
    _ parent** = traits arrow.

    _ creating* = ( |
        ^ sproutSlot:  slotBoxOrSlot 
	    From:      baseBoxOrContentsBox 
	    Constrain: cb1
            To:	       cb2
            Blueprint: bp
	    On:        screen = ( | arr |
              screen findBox: slotBoxOrSlot contents
		     IfFound: [|:b.|
			  b raise.
	                  screen display.
			  arr: copy    from:  baseBoxOrContentsBox
	 			         To:  b
	                            IsParent: slotBoxOrSlot isParent
	                            OnScreen: screen.
		          arr animateSproutingOn: screen.
		          screen display.
	                  arr
	           ] IfNone: [|b|
	                  b: screen sproutBoxFor: slotBoxOrSlot contents
			               Blueprint: bp
				       Constrain: cb1
	                               To:        cb2.
	                  animator sproutBox:      b
	                             FromBox:      baseBoxOrContentsBox
	                             AnimateSlab:  true
	                             AnimateArrow: true
	                             IsParent:     slotBoxOrSlot isParent
	                             On:           screen.
			  arr: copy    from:  baseBoxOrContentsBox
	 			         To:  b
	                            IsParent: slotBoxOrSlot isParent
	                            OnScreen: screen.
	                  animator displayAndFadeOutAcetate: screen.
		          arr
                   ]).

        ^ from:     from 
          To:       to 
          IsParent: parentFlag 
          OnScreen: screen = (
              create: screen size IsParent: parentFlag
	        From: from To: to All: screen boxes.
	      clipHead.
	      clipTail.
	      from base fromArrows  add: self.
	      toBox       toArrows  add: self.
	      screen        arrows  add: self.
	      self).

	^ create: screenSize IsParent: parentFlag From: from To: to All: all = (
	    fromBox: from.
	    toBox: to.
	    allBoxes: all.
	    bounds: bounds copyRemoveAll.
	    saveUnder: byteVector copySize: saveUnderSizeFor: screenSize.
	    parentFlag ifTrue: [setParentWidth] False: [setDataWidth].
	    setEndpoints).

	^ setParentWidth = (lineWidth: parentArrowWidth).
	^ setDataWidth   = (lineWidth: dataArrowWidth).
	_ parentArrowWidth = 6.
	_ dataArrowWidth   = 4.

	^ setEndpoints = ( | t |
	    t: fromBox tailLocationFor: self.
	    setTail: t.
	    setHead: toBox edgePointClosestTo: tail. ).

	^ setAndClipEndpoints = (
	    setEndpoints.
	    clipHead.
	    clipTail.
	    self ).

	^ setToBox: tb = (
	    toBox: tb.
	    setHead: toBox edgePointClosestTo: tail ).
    | ).

    _ clipping* = ( |
	^ clipHead = ( 
	    boxes: allBoxes From: toBox Do: [ | :box |
		isInvisible ifTrue: [ ^ self ].
		clipHead: box absoluteBound. ] ).
	^ clipTail = (
	    boxes: allBoxes From: fromBox base Do: [ | :box | 
		isInvisible ifTrue: [ ^ self ].
		clipTail: box absoluteBound. ] ).
	^ reclip: rect = (
	    (headIn: rect) ifTrue: [ resetHead. clipHead. ].
	    (tailIn: rect) ifTrue: [ resetTail. clipTail. ]. ).

	 "thisBox is not included"
	_ boxes: boxes From: thisBox Do: block = ( | seen <- false |
	    boxes reverseDo: [ | :box |
		seen ifTrue: [ block value: box ].
		seen: seen || [box = thisBox]. ] ).
    | ).

    _ moveClipping* = ( |
	^ findBoundsOfToBox = ( findBoundsOf: toBox ).

	^ findBoundsOfFromBox = (
	    boxObscuringTail: [ | :b | findBoundsStartingAt: b ]
		      IfNone: [ resetBounds ] ).

	findBoundsOf: endBox = (
	    resetBounds.
	    boxes: allBoxes From: endBox Do: [ | :box |
		(overlaps: box absoluteBound Original: endBox absoluteBound
		    Group: bounds) ifTrue: [
			bounds addLast: box absoluteBound ] ].
	    self ).

	findBoundsStartingAt: endBox = ( | seen <- false |
	    resetBounds.
	    allBoxes reverseDo: [ | :box |
		seen: seen || [box = endBox].
		(seen && [overlaps: box absoluteBound
			  Original: endBox absoluteBound
			     Group: bounds ])
		    ifTrue: [ bounds addLast: box absoluteBound ] ].
	    self ).

	resetBounds = ( bounds: bounds copyRemoveAll ).

	_ overlaps: bnd Original: original Group: group = (
	    (bnd intersects: original) || [bound: bnd IntersectsGroup: group] ).
	_ bound: bnd IntersectsGroup: group = (
	    group do: [ | :g | (bnd intersects: g) ifTrue: [ ^ true ] ].
	    false ).

	"must first set bounds by doing findBounds..."
	^ clipToBoundsOfToBox	= ( bounds do: [ | :bnd | clipHead: bnd ] ).
	^ clipToBoundsOfFromBox = ( bounds do: [ | :bnd | clipTail: bnd ] ).

	^ boxObscuringTail: doBlock IfNone: noneBlock = (
	    boxes: allBoxes From: fromBox base Do: [ | :box |
		(box absoluteBound includes: trueTail)
		  ifTrue: [ ^ doBlock value: box ] ].
	    noneBlock value ).
    | ).

    _ animating* = ( |
	^ animateSproutingOn: screen = (
	   animator sproutArrow: self On: screen.
	   self ).

	^ animateDesproutingOn: screen = (
	    animator deSproutArrow: self On: screen.
	    self).
    | ).

    _ querying* = ( |
	isFromFakeSlot = ( (fromBox slotForArrow: self) isFake ).
    | ).

    _ deleting* = ( |
	desprout = ( fromBox desproutWithoutAnimation ).
	removeFromLists = (
	    toBox toArrows remove: self.
	    fromBox base fromArrows remove: self.
	    fromBox screen arrows remove: self.
	    nullArrow ).
    | ).

    _ printing* = ( |
	printString = ( 'boxArrow(', trueHead printString, ', ',
				     trueTail printString, ')' ).
    | ).
| )

prototypes userInterface _AddSlotsIfAbsent: ( | ^ boxArrow = () | )
boxArrow _Define: ( |
    _ parent* = traits boxArrow.
    _ thisObjectPrints = true.

   ^_ trueHead <- point.
   ^_ trueTail <- point.

   ^_ head <- point.
   ^_ tail <- point.

   ^_ oldHead <- point.
   ^_ oldTail <- point.

    _ saveUnder <- byteVector.

    _ allBoxes <- list.
   ^_ fromBox <- contentsBox.
   ^_ toBox <- baseBox.
    _ bounds <- list.

    _ lineWidth <- traits boxArrow dataArrowWidth.
| )
