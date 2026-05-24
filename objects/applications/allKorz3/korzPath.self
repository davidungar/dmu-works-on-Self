 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: public'
        
         path = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals path copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz path.

CopyDowns:
globals path. copy 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz path parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'path' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot'
        
         shortName = ( |
             lastNamedMirror.
             n <- ''.
             omittedParentNames <- ''.
            | 

            lastNamedMirror: korz facets undispatched.
            slotsDo: [| :slot. :i |

              slot isParent && [i != size pred]   ifTrue: [
                omittedParentNames: omittedParentNames, ' ', slot key
              ]
              False: [
                |r|
                r: lastNamedMirror lookupKey: slot key.
                (r size = 1)  &&  [r first contents = slot contents]
                  ifFalse: [n: n, omittedParentNames].
                 n: n, ' ', slot key.
                 lastNamedMirror: slot contents.
                 omittedParentNames: ''.
              ].
            ] IfAbsent: [^ 'bad path'].

            n isEmpty ifTrue: n False: [n copyWithoutFirst]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsDo: b IfAbsent: failB = ( |
            | 
            slotsDo: b IfAbsent: failB StartingFrom: korz facets undispatched).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsDo: b IfAbsent: failB StartingFrom: m = ( |
             facet.
             slot.
            | 
            facet: m.
            contents do: [|:n. :i. |
                slot: facet dataSlotAt: n IfAbsent: [^ failB value].
                b value: slot With: i.
                facet: slot contents.
            ].
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'path' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         prototype = ( |
            | 
            korz path).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: public'
        
         selfishSlotFinder = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             traits mirrors abstractMirror slotFinder copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz selfishSlotFinder.

CopyDowns:
traits mirrors abstractMirror slotFinder. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz selfishSlotFinder parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot'
        
         copyForFacet: f = ( |
            | copyForMirror: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot'
        
         copyForFacet: f Selector: s = ( |
            | copyForMirror: f Selector: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         findSlotsIn: aMirror AndAddResultsTo: aSet = ( |
            | 
            if: aMirror HasNotBeenVisitedThenMarkItAsVisitedAndDo: [|ss|
              ss: aMirror localSlots copyFilteredBy: [|:s| isInterestedInSlot: s].
              ss isEmpty ifFalse: [ ^ aSet addAll: ss ].
              findSlotsInParentsOf: aMirror AndAddResultsTo: aSet.
            ].
            aSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'selfishSlotFinder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'mirrors' -> 'abstractMirror' -> 'slotFinder' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot'
        
         korzPath = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzPath.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPath' -> () From: ( | {
         'ModuleInfo: Module: korzPath InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzPath postFileIn
