"$Revision: 30.1 $"
"Copyright 1991:
    The Self Group: David Ungar, Craig Chambers, Bay-Wei Chang, Urs Hoelzle
    Stanford University, Stanford, CA"

  "Part of the prototype user interface."

  "traits <userInterface> screenBox"
  "<prototypes userInterface> screenBox"

traits userInterface _AddSlotsIfAbsent: ( | ^ screenBox = () | )
traits screenBox _Define: ( |
    _ parent*** = traits nestedBox.
    _ nullButtonResponse** = mixins nullButtonResponse.

    _ creating* = ( |
	^ create: fb ForUI: aui = (
	    frameBuffer: fb.
	    myUI: aui.
	    graphicFullScreen: graphicFullScreen copySize: fb size.
	    offScreenFullScreen: offScreenFullScreen copySize: fb size.
	    createRegions: fb size rect.
	    boxes: boxes copy.
	    arrows: arrows copy.
	    changeRects: changeRects copy.
	    draw. ).

	_ createRegions: rct = (
	    window: screenBitmapRegion copyIn: frameBuffer Rect: rct.
	    graphic: bitmapRegion copyIn: graphicFullScreen
				    Rect: rct size rect.
	    offScreen: bitmapRegion copyIn: offScreenFullScreen
				      Rect: rct size rect.
	    self ).

	"_" draw = (
	    graphicFullScreen fillFullRectangle: size rect
			                  Color: backgroundColor.
	    showCursorColor ifTrue: [
		graphic fillFullRectangle: size maxPoint - (30@30)
		    To: size maxPoint Color: colorPrefs cursor ].
	    self ).

	"secret incantation to show small box of cursor color at bottom right"
	^ showCursorColor <- false.

	_ backgroundColor = ( colorPrefs background ).
    | ).

    _ accessing* = ( |
	inActiveBound: pt = ( true ).
	size = ( graphic size ).
	absoluteLocation = 0@0.
	containeesDo: block = ( boxes do: block ).
      ^ screen = (self).
	theCursor = ( myUI cursor ).
    | ).

    _ mouseButtonResponse* = ( |
        leftButtonDownMiddleRight = ( allButtonsDown ).
	middleButtonDownLeftRight = ( allButtonsDown ).
	rightButtonDownLeftMiddle = ( allButtonsDown ).

	allButtonsDown = ( myUI quit ).
	someButtonDown = ( screenCapture: [ theCursor someButtonDown ] ).

	leftButtonDown = (
	    isEmpty ifTrue: [ | box |
	        box: summonBoxFor: (reflect: lobby)
			Constrain: [ | :b | b sproutCursorPosition ]
			       To: theCursor location.
		box move. ] ).

	middleButtonParent* <- ().
	monoMiddleButton = ().
	colorMiddleButton = ( |
	    middleButtonDown = ( changeColors ).
	| ).
    | ).

    _ colorChanging* = ( |
        changeColors = (
	  | color. rgbCol. hsbCol. oldLoc. oldV. limitRect. sat. event. pos. |
	  color: (graphic pixelValueAt: theCursor location) && 7.
	  rgbCol: (uiColors general6 at: color IfAbsent: [uiColors background])
		 color.
	  hsbCol: rgbCol asHSB.
	  oldLoc: theCursor location.
	  sat: false.
	  theCursor teleportTo:
	      hsbCol asPoint: window size SaturationSpace: sat.
	  theCursor while: [theCursor anyButtonDown] Display: true Do: [
	      sat != theCursor leftButtonDown ifTrue: [
	          sat: theCursor leftButtonDown.      
		  theCursor teleportTo:
		      hsbCol asPoint: window size  SaturationSpace: sat. ].
	      hsbCol fromPoint: theCursor location
		     ScreenSize: window size SaturationSpace: sat.
	       (0 = color) || [(1 = color) || [(2 = color)]] ifTrue: [
		(uiColors general6 at: 0) color hue: hsbCol hue.
		(uiColors general6 at: 1) color hue: hsbCol hue.
		(uiColors general6 at: 2) color hue: hsbCol hue.
		(uiColors general6 at: 0) color
		    saturation: hsbCol saturation.
		(uiColors general6 at: 1) color
		    saturation: hsbCol saturation.
		(uiColors general6 at: 2) color
		    saturation: hsbCol saturation.
	      ].
	      rgbCol from: hsbCol.
	      myUI createColorMaps: false.
	      frameBuffer installColorMap: myUI colorMap0.
	  ].
	  myUI createColorMaps: true.
	  theCursor teleportTo: oldLoc.
	  self).
    | ).

    _ baseBoxManagement* = ( |
	addBoxOnTop: box  = ( boxes addFirst: box ).
	removeBox: box = ( boxes remove: box ).
	floatBoxToTop: box = ( removeBox: box.  addBoxOnTop: box. ).
	findBox: mirr IfFound: fb IfNone: nb = (
	    boxes findFirst: [ | :b | b objMirror = mirr ]
		    IfPresent: fb IfAbsent: nb ).

	exists: mirr = ( findBox: mirr IfFound: true IfNone: false ).
	topObject = ( boxes first objMirror ).
	isEmpty = ( boxes isEmpty ).
	numberOfBoxes = ( boxes size ).

	updateBox: box = (
	    changeRects removeAll.
	    box updateRep.
	    displayWithinChangeRects.
	    self ).	    

	updateBoxes = (
	    changeRects removeAll.
	    updateSomeBoxes.
	    displayWithinChangeRects.
	    self ).

	displayWithinChangeRects = (
	    changeRects isEmpty ifFalse: [
	        boxes reverseDo: [ | :box |
		    [ | :exit |
		      changeRects do: [ | :rect |
		        (box absoluteBound intersects: rect) ifTrue: [
			    box display.
			    box setArrows.
			    changeRects add: box absoluteBound.
			    exit value.
			].
		      ].
		    ] exit.
		].
		changeRects do: [ | :rect | reclipArrows: rect ].
	        screen display. ].
	    self ).

	updateLimit <- 1.
	minUpdateInterval = 1000.

	updateSomeBoxes = (
	  | cpuMax = 0.2. intervalDelta = 1000. resetInterval = 20000. |
	    [ | :abort |
	      [ | :exit. n <- 0. |
	        boxes reverseDo: [ | :box |
		    box updated ifFalse: [ box updateRep. n: n succ. ].
		    n >= updateLimit ifTrue: [ exit value ].
		    myUI pendingXEvents ifTrue: [ abort value ].
	        ].
	        boxes do: [ | :box | box updated: false ].
	      ] exit.
	    ] feedbackMediateCPU: cpuMax
	      Increase: [ myUI alarm interval > minUpdateInterval ifTrue: [
			     myUI alarm decreaseInterval: intervalDelta.
		          ] False: [
		             updateLimit: updateLimit succ min: numberOfBoxes.
			  ].
		        ]
	      Decrease: [ updateLimit = 1 ifTrue: [
		             myUI alarm increaseInterval: intervalDelta.
			  ] False: [
			     updateLimit: updateLimit pred max: 1.
			  ].
		        ]
	      ResetEvery: resetInterval.
	    self ).

	^ raiseBox: box = (
	    floatBoxToTop: box.
	    box display.
	    clipArrows: box absoluteBound.
	    box restoreArrowTails.
	    self ).

	^ redrawBoxInPlace: box Erasing: clearBound = ( | bnd |
	    bnd: fillInBackground: clearBound.
	    box display.
	    repairBoxes: bnd union: box absoluteBound.
	    self ).
	
	  eraseBox: box = ( | bnd |
	    removeBox: box.
	    bnd: fillInBackground: box absoluteBound.
	    repairBoxes: bnd.
	    self ).

	  fillInBackground: rect = ( | ebnd |
	    ebnd: backgroundColor isPattern 
		ifTrue: [ (rect topLeft alignToGrid: backgroundColor size)
			  # rect bottomRight ]
		 False: [ rect ].
	    graphic fillFullRectangle: ebnd Color: backgroundColor.
	    ebnd ).

	_ entirelyOffScreen: box = (
	    nil = (box absoluteRealBound intersect: myUI size rect) ).

	^ banishBox: box = ( | y |
	    box deleteArrows.
	    reclipArrows: box absoluteBound.
	    y: size height + 20.
	    accelerateBox: box To: box location x @ y. ).

	^ deleteBox: box = (
	    eraseBox: box.
	    box deleteArrows.
	    reclipArrows: box absoluteBound.
	    self ).

	redrawAllBoxes = (
	    boxes reverseDo: [ | :b |
	        (entirelyOffScreen: b) ifTrue: [ b delete ]
				        False: [ b display ] ] ).

	repairBoxes: bnd = ( boxes reverseDo: [ | :b | b repair: bnd ] ).
	repairBoxes: bnd StartingAt: startBox = ( | seen <- false. |
	    boxes reverseDo: [ | :b |
		seen: seen || [b = startBox].
		seen ifTrue: [b repair: bnd] ] ).

        ^ alterBox: box By: alterBlock = (
	    | oldBound <- rectangle |
	    oldBound: box absoluteBound.
	    eraseBox: box.
	    alterBlock value.
	    addBoxOnTop: box.
	    "need to union bounds for shrinkage--dmu"
	    "added this to fix strange arrow bug--dmu"
	    reclipArrows: box absoluteBound union: oldBound.
	    box display.
	    box setArrows. ).

	^ teleportBox: box To: dest = (
	    screen eraseBox: box.
	    box location: dest.
	    screen addBoxOnTop: box.
	    (entirelyOffScreen: box) ifTrue: [ box delete ]
				      False: [ box display ].
	    self ).

	^ moveBox: box To: dest = (
	    animator moveBox: box To: dest On: self ).
	^ accelerateBox: box To: dest = (
	    animator accelerateBox: box To: dest On: self ).
	^ decelerateBox: box To: dest = (
	    animator decelerateBox: box To: dest On: self ).
    | ).

    _ boxMoving* = ( |
	^ interactiveMoveBox: box While: whileBlock = (
	    movePrologue: box Interactive: true.
	    moveLoop: box While: whileBlock.
	    moveEpilogue: box Interactive: true. ).

	^ moveBox: box While: whileBlock = (
	    movePrologue: box Interactive: false.
	    moveLoop: box While: whileBlock.
	    moveEpilogue: box Interactive: false. ).

        saveStatic = ( offScreen copyFrom: graphic ).
        reinstateStatic = ( graphic copyFrom: offScreen ).

	fbParent* <- ().
	monoTraits = ( |
	    _ movePrologue: box Interactive: interactive = (
	        box moveOffset: 0.
		eraseBox: box.
		saveStatic.
		box arrowsDo: [ | :a | arrows remove: a ].
		reclipArrows: box absoluteBound.
		drawArrows: graphic.
		box displaySaveUnder.
		box findBoundsForArrows. 
		box setAndDrawArrowsOn: graphic.
		interactive ifTrue: [ theCursor putOnBox: box ].
		box display.
		blit.
		self ).

	    _ moveLoop: box While: whileBlock = (
		whileBlock value: [ | :nextLocation |
		    box eraseArrowsOn: graphic.
		    box moveGraphicTo: nextLocation - box moveOffset.
		    box setAndDrawArrowsOn: graphic.
		    blit. ].
		self ).

	    _ moveEpilogue: box Interactive: interactive = (
		reinstateStatic.
		addBoxOnTop: box.
		interactive ifTrue: [ theCursor restoreBox: box ].
		box display.
		clipArrows: box absoluteBound.
		box arrowsDo: [ | :a | arrows add: a ].
		self ).

            ^ zoomFrom: aRect SelectFrom: selections
                  IfSelected: selBlock IfNone: noneBlock = (
                | m.  comment = 'zoom some day--dmu'. |
	        m: ui1 menu copy.
		m screenBitmap: window.
                m items: selections.
                m clearColor: colorPrefs textBackground.
                m drawColor:  colorPrefs text.
		m fromRectangle: aRect.
		m theCursor: theCursor.
                m selectThen: [
	             reinstateStatic.
		   ] IfSelected: selBlock  IfNone: noneBlock).
	| ).

	colorTraits = ( |
	      "note: this information is implicitly known by baseBox too!"
	    _ arrow0Mask          = 8r100.
	    _ arrow1Mask          = 8r200.
	    _ arrowPlanesMask     = 8r300.
	    _ movingPlaneMask     = 8r070.
	    _ stationaryPlaneMask = 8r007.

	    movePrologue: box Interactive: interactive = (
	        box moveOffset: 0.
		eraseBox: box.
		saveStatic.
		box arrowsDo: [ | :a | arrows remove: a ].
		reclipArrows: box absoluteBound.
		drawArrows: graphic.
		interactive ifTrue: [ theCursor putOnBox: box ].
		box findBoundsForArrows.

                window setBitplaneMask: arrow0Mask.
                box setAndDrawArrowsOn: window.
                frameBuffer installColorMap: myUI colorMap0.
                window setBitplaneMask: movingPlaneMask.
                window set: window size rect.
                box graphic copy: box realBound To: window
                              At: box location.

                window setBitplaneMask: stationaryPlaneMask.
                blit.
                self. ).

	    moveLoop: box While: whileBlock = (
		| oldRect. newRect. fbRect. flag <- 0. |
		oldRect: box absoluteRealBound.
		fbRect: window size rect.

		whileBlock value: [ | :nextLocation. newPoint. |
		    newPoint: nextLocation - box moveOffset.
		    box location: newPoint.
		    newRect: oldRect translateTo: newPoint.

		    window setBitplaneMask: movingPlaneMask.
		    (fbRect encloses: oldRect) ifTrue: [
			window copy: oldRect ToLocation: newPoint.
			(oldRect deltaList: newRect) do: [ | :rect | 
			    colorMap clearLayer2: window Rect: rect ].
		    ] False: [
			(oldRect deltaList: newRect) do: [ | :rect | 
			    colorMap clearLayer2: window Rect: rect ].
			box graphic copy: box graphic realSize rect 
			    To: window At: newPoint.
		    ].
		    oldRect: newRect.

		    0 = flag ifTrue: [
			window setBitplaneMask: arrow1Mask.
			box setAndDrawArrowsOn: window.
			frameBuffer installColorMap: myUI colorMap1.
			window setBitplaneMask: arrow0Mask.
			window clear: window size rect.
			flag: 1.
		    ] False: [
			window setBitplaneMask: arrow0Mask.
			box setAndDrawArrowsOn: window.
			frameBuffer installColorMap: myUI colorMap0.
			window setBitplaneMask: arrow1Mask.
			window clear: window size rect.
			flag: 0. ].
		].

		self ).

	    moveEpilogue: box Interactive: interactive = (
		window useAllBitplanes.
		reinstateStatic.
		addBoxOnTop: box.
		interactive ifTrue: [ theCursor restoreBox: box ].
		box display.
		clipArrows: box absoluteBound.
		box arrowsDo: [ | :a | arrows add: a ].
		(entirelyOffScreen: box) ifTrue: [ box delete ].
		self ).

            ^ prepareToDrawOnAcetate = (
	           window setBitplaneMask: movingPlaneMask || arrow0Mask.
               	   frameBuffer installColorMap: myUI colorMap0.
                   window fillRectangle: window size rect
		                  Color: colorPrefs transparent.
		   self).

            ^ protectAcetate = (
	          window setBitplaneMask: stationaryPlaneMask.
		  self).

            ^ eraseAcetate = (
	          prepareToDrawOnAcetate.
		  window useAllBitplanes.
		  self).

            ^ zoomFrom: aRect SelectFrom: selections
                  IfSelected: selBlock IfNone: noneBlock = (
                | m.  comment = 'zoom some day--dmu'. |
		window setBitplaneMask: movingPlaneMask.
	        m: ui1 menu copy.
		m screenBitmap: window.
                m items: selections.
                m clearColor: colorPrefs textBackground.
                m drawColor:  colorPrefs text.
		m fromRectangle: aRect.
		m theCursor: theCursor.
                m selectThen: [
	             window fillRectangle: m boundingBox
			            Color: colorPrefs transparent.
		     window useAllBitplanes.
		   ] IfSelected: selBlock  IfNone: noneBlock).
	| ).
    | ).

    _ screenOperations* = ( |
	^ display = (
	    displayNoUpdate.
	    myUI drawable ifTrue: [ update. theCursor display. ].
	    self ).

	^ displayNoUpdate = (
	    offScreen copyFrom: graphic.
	    drawArrows: offScreen.
	    self ).

	update = ( window copyFrom: offScreen. self ).

	update: rect = (
	    offScreen copy: rect To: window At: rect origin.
	    self ).

	_ drawArrows: bm = ( arrows do: [ | :a | a drawOn: bm ] ).
	clipArrows:   bnd = ( arrows do: [ | :a | a clip:   bnd ] ).
	reclipArrows: bnd = ( arrows do: [ | :a | a reclip: bnd ] ).

	_ blit = ( window copyFrom: graphic ).

	" the constraint argument must be a positive or negative delta
	  w.r.t. the box's location--dmu"

	^ sproutBoxFor: mir Constrain: a To: b = (
	    sproutBoxFor: mir Messages: list copy Constrain: a To: b ).

	^ summonBoxFor: mir Constrain: a To: b = (
	    summonBoxFor: mir Messages: list copy Constrain: a To: b ).
	^ summonBoxFor: mir Messages: msgs Constrain: a To: b = ( | box |
            box:  findBox: mir IfFound: [ | :b | b ]
                               IfNone:  [ summonNewBoxFor: mir
					         Messages: msgs
						Constrain: a To: b ].
	    box ).

	_ summonNewBoxFor: mir Messages: msgs Constrain: a To: b = (
	  | box. pos. |
	    box: (baseBox copy addMessages: msgs) create: mir On: self.
	    addBoxOnTop: box.
	    box solveLocationConstrain: a To: b.
	    pos: box location.
	    box location: pos x @ box height negate.
	    myUI drawable ifTrue: [ decelerateBox: box To: pos ]
			   False: [ teleportBox: box To: pos ].
	    box ).
	    
        ^ sproutBoxFor: mir Messages: msgs Constrain: a To: b = ( | box |
            box:  findBox: mir IfFound: [|:b| b]
                               IfNone:  [sproutNewBoxFor: mir
					        Messages: msgs
                                               Constrain: a To: b].
	    box).

	_ sproutNewBoxFor: mir Messages: msgs Constrain: a To: b = ( | box |
	    box: (baseBox copy addMessages: msgs) create: mir On: self.
	    addBoxOnTop: box.
            box solveLocationConstrain: a To: b.
	    box location: box location restrictTo: sproutBound.
	    box display.
	    clipArrows: box absoluteBound.
	    box ).

	sproutBound = ( (size - (20 @@ 30)) rect ).

	^ changeRegionTo: rct = (
    	    window    changeRect: rct.
	    graphic   changeRect: rct size rect.
	    offScreen changeRect: rct size rect.
	    self ).

	deleteRegions = (
	    window release.
	    graphic release.
	    offScreen release.
	    self ).

	delete = (
	    boxes do: [ | :box | box delete ].
	    deleteRegions.
	    graphicFullScreen release. 
	    offScreenFullScreen release.
	    frameBuffer release. ).
    | ).
| )

prototypes userInterface _AddSlotsIfAbsent: ( | ^ screenBox = () | )
screenBox _Define: ( |
    _ parent* = traits screenBox.

    myUI.

    boxes <- list.

    arrows <- list.

    graphicFullScreen <- bitmap.
    graphic <- bitmapRegion.
    offScreenFullScreen <- bitmap.
    offScreen <- bitmapRegion.

    frameBuffer <- screenBitmap.
    window <- bitmapRegion.

    changeRects <- set.
| )


ui1 ui invalidateCaches
