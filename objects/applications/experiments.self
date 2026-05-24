 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         experiments = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules experiments.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         experiments = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker experiments.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: InitializeToExpression: (nil)'
        
         experiments <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         makeAndTestContextBasedControlStructuresExperiment = ( |
            | 
            makeControlStructureDimension.
            "Note: Fails if self = top is omitted"
            addSlotFromExpression: '
              (| self = top. controlStructures = lobby controlStructures javaLike. condition = true |) 
                if: condition Then: thenBlock = ( thenBlock value ).
              (| self = top. controlStructures = lobby controlStructures javaLike. condition = false |) 
                if: condition Then: thenBlock = ( nil ).
            '.


            addSlotFromExpression: '
              (| self = lobby true. controlStructures = lobby controlStructures selfLike. |) 
                ifTrue: trueBlock = ( trueBlock value ).
              (| self = lobby false. controlStructures = lobby controlStructures selfLike. |) 
                ifTrue: trueBlock = ( nil ).
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         makeControlStructureDimension = ( |
             controlStructures.
            | 

            controlStructures: addFacetFromExpression: '(| self = lobby. |) controlStructures =  ()'
              Parent: top.

            addFacetFromExpression: '(| self = lobby controlStructures. |) javaLike =  ()'
              Parent: controlStructures.

            addFacetFromExpression: '(| self = lobby controlStructures. |) selfLike =  ()'
              Parent: controlStructures).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            experiments: addFacetFromExpression: '(| self = lobby. |) experiments =  ()'
              Parent: top.

            [makeAndTestContextBasedControlStructuresExperiment].

            makeTacitExperiment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         makeTacitExperiment = ( |
             p.
            | 

            addFacetFromExpression: '
              (| self = lobby experiments |) p = ()
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: experiments InitialContents: FollowSlot'
        
         testControlStructures = ( |
            | 
            test: [
              addContextAttribute: 'controlStructures' Value: lobby controlStructures javaLike
              Do: [
                if: true Then: ['true']
              ].
            ]
            Expect: 'true'.

            test: [
              addContextAttribute: 'controlStructures' Value: lobby controlStructures javaLike
              Do: [
                if: false Then: ['true']
              ].
            ]
            Expect: getWellKnownFacet: 'nil'.

            test: [
              addContextAttribute: 'controlStructures' Value: lobby controlStructures selfLike
              Do: [
                true ifTrue: ['true']
              ].
            ]
            Expect: 'true'.


            test: [
              addContextAttribute: 'controlStructures' Value: lobby controlStructures selfLike
              Do: [
                false ifTrue: ['true']
              ].
            ]
            Expect: getWellKnownFacet: 'nil'.


            [harold "how code test that message not understood deep in the system?"
            test: [
              addContextAttribute: 'controlStructures' Value: lobby controlStructures selfLike
              Do: [
                if: true Then: ['success']
              ].
            ]
            Expect: notUnderstood.
            ]).
        } | ) 



 '-- Side effects'

 globals modules experiments postFileIn
