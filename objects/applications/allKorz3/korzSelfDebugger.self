 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> () From: ( | {
         'Category: processStackModel state\x7fModuleInfo: Module: korzSelfDebugger InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         allStackButton.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         setAppearanceOfOutliner = ( |
             lessStackButton.
            | 
            allStackButton: buildStackButton: 'All stack' @ 'target showAllStack'.
            allStackButton target: self.

            moreStackButton: buildStackButton: 'More stack' @ 'target showMoreStack'.
            moreStackButton target: self.

            lessStackButton: buildStackButton: 'Less stack' @ 'target showLessStack'.
            lessStackButton target: self.

            buttons: rowMorph copy.
            buttons colorAll: myOutliner color.
            buttons beShrinkWrap.
            buttons borderWidth: 3.

            buttons addMorph: lessStackButton.
            buttons addMorphLast: moreStackButton.
            buttons addMorphLast: allStackButton.

            myOutliner beFlexible.
            myOutliner borderWidth: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: expanding & collapsing\x7fModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         showAllStack = ( |
            | 
            stackDepthToShow: referrent stackDepth.
            safelyDo: [myOutliner update]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         updateItemsDo: blk = ( |
            | 
            updateAllActivationMorphs.

            activationMorphs do: [|:a| blk value: a ].

            moreStack not && [ buttons morphs includes: moreStackButton ]
              ifTrue: [ 
                moreStackButton safelyDo: [ moreStackButton delete ]. 
                 allStackButton safelyDo: [  allStackButton delete ] 
              ].

            moreStack && [ ( buttons morphs includes: moreStackButton ) not ]
              ifTrue: [ buttons safelyDo: [ buttons addMorphLast: moreStackButton.
                                            buttons addMorphLast:  allStackButton.
                                            buttons colorAll: myOutliner color ] ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot'
        
         korzSelfDebugger = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzSelfDebugger.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzSelfDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzSelfDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzSelfDebugger postFileIn
