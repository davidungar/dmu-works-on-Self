 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: spotlight\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         compositingWorld = bootstrap define: bootstrap stub -> 'globals' -> 'compositingWorld' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals worldMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'compositingWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals compositingWorld.

CopyDowns:
globals worldMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> () From: ( | {
         'Category: compositing\x7fModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (vector)\x7fVisibility: private'
        
         comCanvases <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals compositingWorld parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: window management\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         addWindowOnDisplay: dispName Bounds: b Limited: isLimited = ( |
            | 
            resend.addWindowOnDisplay: dispName Bounds: b Limited: isLimited.
            comCanvases: comCanvases copyAddLast: winCanvases last bufferCanvasForMyScreenBounds: b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: window management\x7fComment: This message should be sent only from within the UI process.
It closes the window before stopping the UI process (that
is, the process executing this very method). It only stops
the UI process if the last window is closed.\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         closeFromHand: h = ( |
             cc.
            | 
            cc: comCanvasForHand: h.
            comCanvases: (comCanvases asList remove: cc) asVector.
            resend.closeFromHand: h).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: multi-user support\x7fComment: Return the window canvas associated with the given hand.\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         comCanvasForHand: h = ( |
            | 
            comCanvases at: 
                hands keyAt: h IfAbsent: [ error: 'That hand is not in this world' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: running\x7fCategory: private\x7fCategory: step process\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         compositeFrom: src With: buf Onto: dst = ( |
            | 
            dst pastePixmap: src At: dst offset negate.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
             b.
            | 
            b:  ui2Button copy scriptBlock: [compositingWorld openNew].
            b label: 'Open compositiing world'.
            b isAsynchronous: true.
            m addButton: b ToGroup: 'experiments'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: running\x7fCategory: options\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         doubleBuffering <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: running\x7fCategory: private\x7fCategory: step process\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         incrementalUpdateCanvasesAt: i Morphs: allMorphs Damage: dList = ( |
            | 
            incrementalUpdateWinCanvas: (winCanvases at: i)
                             BufCanvas: (bufCanvases at: i)
                             ComCanvas: (comCanvases at: i)
                                Morphs: allMorphs
                                Damage: dList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: running\x7fCategory: private\x7fCategory: step process\x7fComment: Draw only those morphs that intersect damaged rectangles.\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         incrementalUpdateWinCanvas: wc BufCanvas: bc ComCanvas: cc Morphs: allMorphs Damage: dList = ( |
             c.
             damagedRects.
             offset.
            | 
            offset: wc offset.
            c: bc copyReset offset: offset.
            "
            doubleBuffering
                ifTrue: [ c: bc copyReset offset: offset ]
                 False: [ c: wc copyReset offset: offset ].
            "
            wc redrawWindow ifTrue: [
                wc redrawWindow: false.
                damagedRects: (vector copyAddLast: wc boundingBoxInWorld).
            ] False: [
                damagedRects: (clipAndFilterDamage: dList ForCanvas: c).
            ].

            damagedRects do: [| :damage |
                c withClip: damage Do: [
                    "draw all the morphs that are visible in the damaged area"
                     drawMorphs: allMorphs Intersecting: damage On: c Offset: offset.
                ].
            ].
            compositeFrom: c With: cc Onto: wc.    
            wc display flush.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         initToOpenOnDisplay: dispName Bounds: b = ( |
            | 
            comCanvases: vector.
            resend.initToOpenOnDisplay: dispName Bounds: b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'compositingWorld'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | 
            rawName, ' (', asMirror creatorSlotHint key, ')').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'worldMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: window management\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         releaseParts = ( |
            | 
            resend.releaseParts.
            comCanvases do: [|:cc| cc close].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> () From: ( | {
         'Category: window management\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         resizeTo: newBounds FromHand: h = ( |
             cc.
            | 
            resend.resizeTo: newBounds FromHand: h.

            cc: comCanvasForHand: h.
            cc close.

            cc: (winCanvasForHand: h)
               pixmapCanvasPrototypeForMyScreen
                 copyForSameScreenAs: (winCanvasForHand: h)
                   Width: newBounds size x
                  Height: newBounds size y.
            comCanvases at: (hands keyAt: h) Put: cc.
            changed.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'compositingWorld' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            compositingWorld).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: spotlight\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         followSpot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'followSpot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals followSpot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (0@0)'
        
         apex <- 0@0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: ((0@0) ## (0@0))'
        
         ellipseBounds <- (0@0) ## (0@0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals followSpot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         drawConeOn: dst = ( |
             pts.
            | 
            0 = (ellipseBounds width min: ellipseBounds height) ifTrue: [^ self].
            pts: getTangentPointsFrom: apex ToEllipseIn: ellipseBounds.
            dst gc moveTo: apex.
            dst gc addLineTo: pts first.
            dst gc addLineTo: pts last.
            dst gc closePath.
            dst gc fillPath.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         drawEllipseOn: dst = ( |
            | 
            0 = (ellipseBounds width min: ellipseBounds height) ifTrue: [^ self].
            dst gc fillEllipseIn: ellipseBounds).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         getTangentPointsForUnitCircleFrom: p = ( |
             pt.
             r.
             t.
            | 
            r: vector copySize: 2.
            t: p r inverse arcCos.
            pt: p theta.
            r at: 0 Put:  (point rho: 1 Theta: pt - t).
            r at: 1 Put:  (point rho: 1 Theta: pt + t).
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         getTangentPointsFrom: origin ToEllipseIn: r = ( |
             pts.
            | 
            pts: getTangentPointsForUnitCircleFrom: (origin - r center) /= r size half.
            pts copyMappedBy: [|:p| (p * r size half) + r center]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         rectangleToLight: r = ( |
            | 
            ellipseBounds: r center: r center Size: r size * 1.4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: spotlight\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         inertialFollowSpot = bootstrap define: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'ellipseBounds' From:
             bootstrap remove: 'parent' From:
             globals followSpot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals inertialFollowSpot.

CopyDowns:
globals followSpot. copy 
SlotsToOmit: ellipseBounds parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: ((0@0) ## (0@0))'
        
         currentEB <- (0@0) ## (0@0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (false)'
        
         inbetweening <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: ((0@0) ## (0@0))'
        
         lastEB <- (0@0) ## (0@0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (rectangle copy)'
        
         newEB <- rectangle copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (rectangle copy)'
        
         oldEB <- rectangle copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals inertialFollowSpot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         drawConeOn: dst = ( |
             npts.
             opts.
             pts.
            | 
            inbetweening ifFalse: [^ resend.drawConeOn: dst].

            opts: getTangentPointsFrom: apex ToEllipseIn: oldEB.
            npts: getTangentPointsFrom: apex ToEllipseIn: newEB.
            pts: (opts, npts  mapBy: [|:p| p - apex]) sortBy: (|element: a Precedes: b = (a thetaDegrees < b thetaDegrees)|).
            dst gc moveTo: apex.
            dst gc addLineTo: pts first  + apex.
            dst gc addLineTo: pts last   + apex.
            dst gc closePath.
            dst gc fillPath.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         drawEllipseOn: dst = ( |
             d1.
             d2.
             gc.
             normDelta.
             p1.
             p2.
             t.
            | 
            inbetweening ifFalse: [^ resend.drawEllipseOn: dst].

            normDelta: (newEB center - oldEB center) /= oldEB size half.
            t: normDelta theta.
            d1: point rho: 1.0 Theta: t + pi half.
            d2: point rho: 1.0 Theta: t - pi half.
            p1: d1 * oldEB size half.
            p2: d2 * oldEB size half.

            gc: dst gc.
            gc beginPath.
            gc moveTo:    oldEB center + p1.
            gc addLineTo: newEB center + p1.
            gc addLineTo: newEB center + p2.
            gc addLineTo: oldEB center + p2.
            gc closePath.
            gc fillPath.
            gc fillEllipseIn: oldEB.
            gc fillEllipseIn: newEB.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         ellipseBounds = ( |
            | currentEB).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         ellipseBounds: r = ( |
             wasInb.
            | 
            wasInb: inbetweening.
            inbetweening: false.

            case
             " no change"
             if: [r = currentEB] Then: [lastEB: r. ^ self]
             " moved, light off "
             If: [(lastEB width = 0) && [r width = 0]] Then: [lastEB: r. currentEB: r]
             " first step, light turned on "
             If: [ (lastEB width = 0) && [currentEB width = 0] ] Then: [ currentEB: r center: r center Size: r size half]
             " first step, light turned off"
             If: [ (r width = 0) && [currentEB = lastEB]] Then: [currentEB: lastEB center: lastEB center Size: lastEB size half]
             " finish, light turned on, or off, or size only changed "
             If: [ wasInb ] Then: [ currentEB: r center: r center Size: r size mean: currentEB size]
             If: [  currentEB center = r center] Then: [lastEB: r. currentEB: r]
             " first step, light moved"
             If: [ lastEB intersects: r ] Then: [ lastEB: r. currentEB: r]
             If: [ (lastEB = currentEB) && [currentEB size != (currentEB size min: r size)]]
             Then: [currentEB: currentEB center: currentEB center Size: r size min: currentEB size]
             " 2nd step "
             If: [ (lastEB != currentEB) && [(currentEB != r) && [currentEB center = lastEB center]]] Then: [
                oldEB: lastEB.
                newEB: r center: r center Size: oldEB size.
                currentEB: newEB.
                inbetweening: true.
             ]
             " 3rd step "
             Else: [lastEB: r. currentEB: r]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'followSpot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (0)'
        
         step <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'inertialFollowSpot' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: ((0@0) ##(0@0))'
        
         targetEB <- (0@0) ##(0@0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: spotlight\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         lights = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lights' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lights.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (nil)'
        
         dst.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lights parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         addSpots = ( |
            | 
            dst gc setBlendMode: dst gc blendMode screen.
            dst gc setFillColorRed: 0.85 Green: 0.85 Blue: 0.8 Alpha: 0.3.
            spots do: [|:s| s drawConeOn: dst].
            dst gc setFillColorRed: 0.9 Green: 0.9 Blue: 0.85 Alpha: 1.
            spots do: [|:s| s drawEllipseOn: dst].
            dst gc setBlendMode: dst gc blendMode normal.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: foci\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         allCursorInterest = ( |
            | 
            world hands gather: [|:h| h cursorInterest]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: foci\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         allQueryMorphs = ( |
            | 
            world morphs asList copyFilteredBy: [|:m| m morphTypeName = 'userQueryMorph']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: foci\x7fCategory: typing focii\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         allTypingFoci = ( |
            | 
            [spotlight].
            (world hands gather: [|:h| h keyboardInterest]) filterBy: [|:m| m isInWorld && [m world = world]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         assignSpotTargets = ( |
             rrrs.
             rs.
            | 
            spots first apex: 0@0.
            spots last  apex: dst width @ 0.
            rrrs: rectsToLight copyMappedBy: [|:r|
              dst transformRect: r
            ].
            rrrs size = 1 ifTrue: [
              spots first rectangleToLight: rrrs first. spots last rectangleToLight: rrrs first.
              ^ self
            ].
            rs: rrrs asVector copySortBy: (|element: e1 Precedes: e2 = (e1 center x < e2 center x)|).
            spots first rectangleToLight: rs first.
            spots last rectangleToLight: rs last.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         blendMode = ( |
            | 
            [
            rectsToLight isEmpty
            ifTrue: [quartz context blendMode normal]
             False: [quartz context blendMode multiply]
            ].
            quartz context blendMode multiply).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         copyWorld: w Canvas: c = ( |
            | 
            ((copy world: w) dst: c) initSpots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         dimFill = ( |
             bg.
            | 
            bg: paint copyRed: 0.8 Green: 0.8 Blue: 0.85 Alpha: 1.
            dst gc foreground: bg.
            dst gc fillRectX: 0 Y: 0 Width: dst width Height: dst height.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         getTangentPointsForUnitCircleFrom: p = ( |
             pt.
             r.
             t.
            | 
            r: vector copySize: 2.
            t: p r inverse arcCos.
            pt: p theta.
            r at: 0 Put:  (point rho: 1 Theta: pt - t).
            r at: 1 Put:  (point rho: 1 Theta: pt + t).
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         getTangentPointsFrom: origin ToEllipseIn: r = ( |
             pts.
            | 
            pts: getTangentPointsForUnitCircleFrom: (origin - r center) /= r size half.
            pts copyMappedBy: [|:p| (p * r size half) + r center]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         initSpots = ( |
             fs.
            | 
            fs: inertialFollowSpot.
            spots: (
              (fs copy apex: 0@0) & (fs copy apex: dst width @ 0)
            ) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: foci\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         morphsToLight = ( |
            | 
            allTypingFoci, allCursorInterest, allQueryMorphs filterBy: [|:m| m isInWorld && [m world = world]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: foci\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         rectsToLight = ( |
            | 
            (morphsToLight copyMappedBy: [|:m| m globalBaseBounds]) ",
            (world hands copyMappedBy: [|:h| h baseBoundsOn: dst])").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: rendering\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         renderLighting = ( |
            | 
            dimFill.
            rectsToLight isEmpty ifTrue: [^ self].
            assignSpotTargets.
            addSpots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> 'parent' -> () From: ( | {
         'Category: foci\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         spotCount = ( |
            | rectsToLight size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (vector)'
        
         spots <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lights' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (nil)'
        
         world.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         spotlight = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules spotlight.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            worldMorph addBackgroundMenuContributor: spotlightingWorld.
            worldMorph addBackgroundMenuContributor: compositingWorld.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'spotlight' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: spotlight\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         spotlightMorph = bootstrap define: bootstrap stub -> 'globals' -> 'spotlightMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'spotlightMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals spotlightMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (0)'
        
         angle <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals spotlightMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( | {
         'Category: geometry\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         baseContainsPt: p = ( |
             pp.
             ppp.
             r.
             th.
            | 
            pp: p - baseBounds center.
            ppp: pp rotateBy: angle.
            (ppp /= baseBounds size half ) square squareRoot <= 1.0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         baseDrawOn: c = ( |
            | 
            c drawable gc withNewGStateDo: [|p. r. bb|
              bb: baseBounds indent: 1.
              p: c transformPt: bb center.
              r: (bb origin - p) ## bb size.

              c drawable gc translateCTM_X: p x Y: p y.
              c drawable gc rotateCTM_Radians: angle negate.
              "
               c fillEllipseIn: (r indent: 30) Color: paint named: 'white'.
                c drawable gc setBlendMode: c drawable gc blendMode saturation.
                c fillEllipseIn: r Color: paint named: 'red'.
              "
              c drawable gc setBlendMode: c drawable gc blendMode color.
              c fillEllipseIn: r Color: color copyAlpha: 0.8.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         colorAll: newC = ( |
            | 
            "See comment in traits morph for general idea.
             Here, for legibility, do not change color."

            morphsDo: [| :m | m colorAll: newC ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         isRectangular = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'circleMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            spotlightMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: spotlight\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         spotlightingWorld = bootstrap define: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals compositingWorld copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals spotlightingWorld.

CopyDowns:
globals compositingWorld. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> () From: ( | {
         'Category: spotlighting\x7fModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (nil)'
        
         lights.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( |
             {} = 'Comment: todo:
1. position lights
2. orient lights
3. soften lights -- shadows?
4. animate repositioning
5. animate resizeing
6. factor code
7. 2d control
8. light stays on bug
9. adaptive frame rate?
10. hi hi light text selection?
11. adaptive background dimming?\x7fModuleInfo: Creator: globals spotlightingWorld parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'Category: window management\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         addWindowOnDisplay: dispName Bounds: b Limited: isLimited = ( |
            | 
            resend.addWindowOnDisplay: dispName Bounds: b Limited: isLimited.
            lights: resend.lights copyWorld: self Canvas: winCanvases first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'Category: running\x7fCategory: private\x7fCategory: step process\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot'
        
         compositeFrom: src With: buf Onto: dst = ( |
            | 
            lights renderLighting.
            dst gc withNewGStateDo: [
              dst gc setBlendMode: lights blendMode.
              resend.compositeFrom: src With: buf Onto: dst.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
             b.
            | 
            b:  ui2Button copy scriptBlock: [spotlightingWorld openNew].
            b label: 'Open spotlighting world'.
            b isAsynchronous: true.
            m addButton: b ToGroup: 'experiments'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: InitializeToExpression: (33)\x7fVisibility: public'
        
         desiredFrameTime <- 33.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         initToOpenOnDisplay: dispName Bounds: b = ( |
            | 
            resend.initToOpenOnDisplay: dispName Bounds: b.
            lights: resend.lights copyWorld: self Canvas: winCanvases first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'spotlightingWorld'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'compositingWorld' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'spotlightingWorld' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: spotlight InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            spotlightingWorld).
        } | ) 



 '-- Side effects'

 globals modules spotlight postFileIn
