 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         usTests = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usTests.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usTests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         bankAccount = ( |
            | us worldMaker bankAccount make).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         buttons = ( |
            | 
            us ide facetModel getFoyerFacetEvent: process this birthEvent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         ide = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us tests ide.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: InitializeToExpression: (nil)'
        
         abstractNumberOutliner.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         hand.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us tests ide parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: us-level ops\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         addSlotTo: receiverFacetName Code: sourceCode = ( |
            | 
            evaluateInFoyer: receiverFacetName AndDropAt: workingLocation.
            xxx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: locations\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         backgroundMenuLocation = (100)@(100).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         closeEditorsIn: outliner = ( |
            | 
            [
              panel: findPanelIn: outliner IfFail: [^ self].
              upToHere.
            pressButtonLabeled: 'Close' In: outliner IfFail: [^ self]
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         closeEvaluatorsIn: outliner = ( |
            | 
            [
              pressButtonLabeled: 'Close' In: outliner IfFail: [^ self]
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRun = ( |
            | copy run).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: outliners\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         deleteAllOutliners = ( |
            | 
            waitForQuiescence.
            [
              world morphs do: [|:m| m delete].
              outerOutlinerCount > 0
            ] whileTrue.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         doAndWaitForAnAddedMorph: blk = ( |
             n.
            | 
            n: world morphCount.
            blk value.
            [world morphCount = n] whileTrue: [times delay: 100].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         dropMorphsAt: dropPt = ( |
             e.
             lastDroppedMorph.
            | 
            [hand morphCount = 0] whileTrue: [times delay: 100].
            e: newEventAt: dropPt.
            hand handleLeftMouseUp: e.
            [hand morphs isEmpty] whileFalse: [ lastDroppedMorph: hand morphs first.  hand drop: lastDroppedMorph Event: e].
            lastDroppedMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: editing (slots)\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         editWholeThing: expr In: outliner = ( |
             e.
             ee.
             s.
            | 
            closeEditorsIn: outliner.
            e: openEditorIn: outliner.
            s: e contentsString.
            e contentsString: expr.
            pressPanelCancelButtonConnectedTo: e.
            ensureEditorGone: e.

            ee: openEditorIn: outliner.
            [s = ee contentsString] assert.
            ee contentsString: expr.
            pressPanelAcceptButtonConnectedTo: e.
            ensureEditorGone: ee.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         ensureEditorGone: ed = ( |
            | 
            [ed owner isNil] whileFalse: [times delay: 100].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluate: expr In: outliner AndDropAt: dropPt = ( |
             e.
             m.
            | 
            closeEvaluatorsIn: outliner.
            openEvaluatorIn: outliner.
            e: findEvaluatorEditorIn: outliner AndType: expr.
            m: pressButtonLabeled: 'Get it' In: e owner DropAt: dropPt.
            [pressButtonLabeled: 'Close' In: e owner.].
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         evaluate: exprString In: facetName Ensuring: testBlock = ( |
             m.
            | 
            facetName = us facets foyerName ifFalse: [unimp: 'must get it and go there'].
            evaluateInFoyer: exprString AndDropAt: workingLocation.
            m: findMorphSuchThat: [|:mm| (mm morphTypeName = 'pluggableOutliner') && [mm globalBaseBounds includes: workingLocation + (2@2)]].
            testBlock value: m model referrent.
            m delete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateInFoyer: expr AndDropAt: dropPt = ( |
            | 
            evaluate: expr In: foyerFacetOutliner AndDropAt: dropPt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluatorIn: facetOutliner = ( |
            | 
            closeAllEvaluatorsIn: facetOutliner.
            openEvaluatorIn: facetOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findButtonIn: aMorph Labeled: lbl = ( |
            | 
            findButtonIn: aMorph Labeled: lbl IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findButtonIn: aMorph Labeled: lbl IfFail: fb = ( |
            | 
            findMorphIn: aMorph SuchThat: [|:m| m isButton && [m label = lbl]] IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findButtonLabeled: lbl = ( |
            | findButtonIn: world Labeled: lbl).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: finding editors\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findEvaluatorEditorIn: aMorph AndType: aString = ( |
             e.
            | 
            e: findMorphIn: aMorph Type: us ide usEvaluatorEditor morphTypeName.
            e contentsString: aString.
            e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMenu = ( |
            | 
            findMorphSuchThat: [|:m| (m morphTypeName = 'ui2Menu') || [m morphTypeName = 'groupedUI2Menu']]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMorphIn: aMorph SuchThat: blk = ( |
            | 
            findMorphIn: aMorph SuchThat: blk IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMorphIn: aMorph SuchThat: blk IfFail: fb = ( |
            | 
            aMorph allMorphsDo: [|:m| (blk value: m) ifTrue: [^ m]].
            fb value: 'no morph').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fCategory: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMorphIn: aMorph Type: mtString = ( |
            | 
            findMorphIn: aMorph Type: mtString IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMorphIn: aMorph Type: mtString IfFail: fb = ( |
            | 
            findMorphIn: aMorph SuchThat: [|:m| m morphTypeName = mtString] IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMorphSuchThat: blk = ( |
            | findMorphIn: world SuchThat: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findMorphType: mtString = ( |
            | 
            findMorphIn: world Type: mtString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         findPanelConnectedTo: editor = ( |
            | 
            editor panel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: finding morphs\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         findPanelIn: aMorph IfFail: fb = ( |
            | 
            panel: findMorphIn: aMorph Type: 'acceptCancelPanel' IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: finding editors\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         findWholeThingEditorIn: aMorph = ( |
             e.
            | 
            e: findMorphIn: aMorph Type: uglyTextEditorMorph morphTypeName.
            "e contentsString: aString."
            e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: us-level ops\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         getFoyerFacet = ( |
            | 
            foyerFacetOutliner:
                           moveTo: backgroundMenuLocation 
            HitMiddleMenuButtonIn: world 
                          Labeled: 'Get Foyer facet' 
                           DropAt: foyerFacetPosition).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         hitMiddleMenuButtonIn: aMorph Labeled: label At: where = ( |
             b.
             e.
             menu.
             wasA.
            | 
            world safelyDo: [
              e: newMiddleMouseDownEventAt: where.
              aMorph middleMouseDown: e.
              menu: findMenu.
              b: findButtonIn: menu Labeled: label.
              [b state: 'down'.].
              wasA: b isAsynchronous.
              b isAsynchronous: false. "Ugh!"
              [
              e: newMiddleMouseUpEventAt: b globalBaseBounds center.
              menu mouseMove: e.
              menu middleMouseUp: e.
              ] onReturn: [b isAsynchronous: wasA].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         hitMiddleMenuButtonNearTopLeftOf: aMorph Labeled: label = ( |
            | 
            hitMiddleMenuButtonIn: aMorph Labeled: label At: aMorph globalPosition + (5@5)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: us-level ops\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         makeCloneAndCopySlots = ( |
             o.
            | 
            o: evaluate: '(| (|self = foyer|) clone = (_CopyUsFacet). (|self = foyer|)  copy = (clone) |)' 
            In: 'foyer'
            Ensuring: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: us-level ops\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         makeFacetNamed: n InheritingFrom: parentName PlaceAt: dropPt = ( |
             queryMorph.
             queryMorphEditor.
            | 
            parentName = us facets foyerName ifFalse: [error: 'unimp'].
            doAndWaitForAnAddedMorph: [
              hitMiddleMenuButtonnearTopLeftOf: foyerFacetOutliner
                                       Labeled: 'Add child'
            ].
            queryMorph: findMorphType: 'userQueryMorph'.
            queryMorphEditor: findEvaluatorEditorIn: queryMorph AndType: n.
            pressButtonLabeled: 'Okay' In: queryMorph DropAt: dropPt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: us-level ops\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         makeMultiplySlot = ( |
            | 
            evaluate: '(| 
              (| self = abstractNumber. a = abstractNumber|) * a = (\'*\' __SendTo: self With: a).
            |)' In: 'foyer' Ensuring: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         moveTo: pt HitMiddleMenuButtonIn: aMorph Labeled: lbl DropAt: dropPt = ( |
            | 
            hitMiddleMenuButtonIn: aMorph
                          Labeled: lbl
                               At: pt.
            dropMorphsAt: dropPt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newEventAt: pt = ( |
            | 
            ((ui2Event copy sourceHand: hand) cursorPoint: pt) timeStamp: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newLeftMouseDownEventAt: pt = ( |
            | 
            ((newEventAt: pt) type: 'leftMouseDown') state: ui2Event leftMouseMask).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newLeftMouseDownLeftShiftDownEventAt: pt = ( |
            | 
            ((newEventAt: pt) type: 'leftMouseDown') state: ui2Event leftMouseMask || ui2Event shiftMask).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newLeftMouseUpEventAt: pt = ( |
            | 
            (((newEventAt: pt) type: 'leftMouseUp') state: 0) timeStamp: 300).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newLeftMouseUpLeftShiftDownEventAt: pt = ( |
            | 
            (((newEventAt: pt) type: 'leftMouseUp') state: ui2Event shiftMask) timeStamp: 300).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newMiddleMouseDownEventAt: pt = ( |
            | 
            ((newEventAt: pt) type: 'middleMouseDown') state: ui2Event middleMouseMask).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newMiddleMouseUpEventAt: pt = ( |
            | 
            (((newEventAt: pt) type: 'middleMouseUp') state: 0) timeStamp: 300).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         newMouseMoveEventAt: pt From: oldEvt = ( |
             r.
            | 
            r: oldEvt copy.
            r cursorPoint: pt.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         openEditorIn: outliner = ( |
            | 
            hitMiddleMenuButtonNearTopLeftOf: outliner Labeled: 'Edit'.
            findWholeThingEditorIn: outliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         openEvaluatorIn: anOutliner = ( |
            | 
            pressButtonLabeled: 'E' In: anOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         openWorld = ( |
            | 
            world: desktop openNewWorld.
            hand: world hands first.
            world resizeTo: worldSize FromHand: hand.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         outerOutlinerCount = ( |
            | outerOutliners size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: events\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         outerOutliners = ( |
            | 
            "cannot use copyFilteredBy: because collection may change out from under me"
            world morphs asList filterBy: [|:m| m isOutliner]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         pressButton: b = ( |
            | 
            b leftMouseDown: newLeftMouseDownEventAt: b globalBaseBounds center.
            b leftMouseUp: newLeftMouseUpEventAt: b globalBaseBounds center.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         pressButtonLabeled: lbl In: aMorph = ( |
            | 
            pressButtonLabeled: lbl In: aMorph IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         pressButtonLabeled: lbl In: aMorph DropAt: dropPt = ( |
            | 
            pressButtonLabeled: lbl In: aMorph.
            dropMorphsAt: dropPt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         pressButtonLabeled: lbl In: aMorph IfFail: fb = ( |
            | 
            pressButton:  findButtonIn: aMorph Labeled: lbl IfFail: [^ fb value].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         pressButtonWithLeftShift: b = ( |
            | 
            b leftMouseDown: newLeftMouseDownLeftShiftDownEventAt: b globalBaseBounds center.
            b leftMouseUp:   newLeftMouseUpLeftShiftDownEventAt: b globalBaseBounds center.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         pressPanelAcceptButtonConnectedTo: editor = ( |
             p.
            | 
            p: findPanelConnectedTo: editor.
            pressButton: p acceptButton).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: buttoning\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         pressPanelCancelButtonConnectedTo: editor = ( |
             p.
            | 
            p: findPanelConnectedTo: editor.
            pressButton: p cancelButton).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         run = ( |
             t.
            | 
            [ !== us tests ide ] assert. "should be a copy"
            t: us facets foyerName.
            us worldMaker core make.
            openWorld.

            getFoyerFacet.
            testSproutingSlot: us facets nilName In: foyerFacetOutliner.

            testSimpleSlotCreation.
            [makeCloneAndCopySlots.].
            testSproutingSlot: 'clone'          In: foyerFacetOutliner.
            evaluate: '3'     In: t Ensuring: [|:aFacet| aFacet asSelfObject == 3].
            testArithmetic.
            testFormalInFacetUpdateBug.
            testWholeSlotEditMenuButton.
            world close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: sprouting\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         sproutSlot: name In: aFacetOutliner = ( |
             b.
             m.
            | 
            aFacetOutliner expandAll: newEventAt: 0@0.
            m: findMorphIn: aFacetOutliner 
                  SuchThat: [|:m|    (m morphTypeName = 'consolidatedFormalsOutliner')
                                 && [name  isPrefixOf: m model titleString]].
            b: findMorphIn: m Type: 'pluggableLeafPointerButton'.
            doAndWaitForAnAddedMorph: [pressButtonWithLeftShift: b].
            waitForMorphToStop: findMorphType: 'usIDESlotOutliner').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: more tests\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         testArithmetic = ( |
            | 
            [makeMultiplySlot. ].
            evaluate: '3 * 4' In: us facets foyerName Ensuring: [|:aFacet| aFacet asSelfObject == 7].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: more tests\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         testFormalInFacetUpdateBug = ( |
             t.
            | 
            t: [ | anso |
              anso: sproutSlot: 'abstractNumber' In: foyerFacetOutliner.
              anso changed.
              anso globalPosition: 0 @ anso globalPosition y.
              anso changed.
              [anso model slot contents name = 'The abstractNumber'] assert.
              anso delete.
              [outerOutlinerCount = 1] assert
            ].
            t value.
            hitMiddleMenuButtonNearTopLeftOf: foyerFacetOutliner
                                     Labeled: 'Remake the World'.
            [foyerFacetOutliner model remakeTheWorld. "so it is synchronous"].
            foyerFacetOutliner update.
            t value.
            [outerOutlinerCount = 1] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: more tests\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         testSimpleSlotCreation = ( |
             t.
            | 
            t: us facets foyerName.
            evaluate: '()'               In: t Ensuring: [|:aFacet|  aFacet isUsFacet].
            evaluate: '(|a        |)'    In: t Ensuring: [|:aFacet|  aFacet isUsFacet].
            evaluate: '(|a =  3   |)'    In: t Ensuring: [|:aFacet|  aFacet isUsFacet].
            evaluate: '(|a <- 4   |)'    In: t Ensuring: [|:aFacet|  aFacet isUsFacet].
            evaluate: '(|a <- ()  |)'    In: t Ensuring: [|:aFacet|  aFacet isUsFacet].
            evaluate: '(|a =  ()  |)'    In: t Ensuring: [|:aFacet|  aFacet isUsFacet].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: sprouting\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         testSproutingSlot: name In: aFacetOutliner = ( |
            | 
            (sproutSlot: name In: aFacetOutliner) delete.
            aFacetOutliner collapseAll: newEventAt: 0@0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: editing (slots)\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         testWholeSlotEditMenuButton = ( |
             e.
             expr.
             s = '(| self = foyer|) copy = ( \"test\" clone )'.
             slotOutliner.
            | 
            slotOutliner: sproutSlot: 'copy' In: foyerFacetOutliner.
            editWholeThing: s  In: slotOutliner.
            [slotOutliner model slot ast parseTree source  =  s] assert.
            slotOutliner delete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: locations\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         foyerFacetPosition = (100)@(100).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         waitForMorphToStop: m = ( |
            | 
            [ | :exit. p |
              p: m globalPosition.
              times delay: 100.
              p = m globalPosition  ifTrue:  exit
            ] loopExit.
             waitForQuiescence.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: interactions\x7fCategory: outliners\x7fModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         waitForQuiescence = ( |
            | 
            [world activities isEmpty] whileFalse.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: locations\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         workingLocation = (300)@(300).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> 'parent' -> () From: ( | {
         'Category: locations\x7fModuleInfo: Module: usTests InitialContents: FollowSlot\x7fVisibility: private'
        
         worldSize = ((50)@(50)) # ((1400)@(900)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: InitializeToExpression: (nil)'
        
         foyerFacetOutliner.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         world.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: usTests InitialContents: FollowSlot'
        
         runAll = ( |
            | 
            ide copyRun.
            bankAccount.
            buttons).
        } | ) 



 '-- Side effects'

 globals modules usTests postFileIn
