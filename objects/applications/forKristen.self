 '$Revision:$'
 '
Copyright 1992-2003 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot'
        
         forKristen = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules forKristen.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'forKristen' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'pair' -> () From: ( | {
         'Category: arithmetic\x7fComment: Return the Pythagoriean distance to pair p.\x7fModuleInfo: Module: forKristen InitialContents: FollowSlot\x7fVisibility: public'
        
         distanceTo: p = ( |
            | ( - p ) square squareRoot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'random' -> () From: ( | {
         'ModuleInfo: Module: forKristen InitialContents: FollowSlot\x7fVisibility: public'
        
         pointInBoundingBox: aRect = ( |
            | 
            "returns a point in closed interval"
              (integerBetween: aRect left And: aRect right)
            @ (integerBetween: aRect top  And: aRect bottom)).
        } | ) 



 '-- Side effects'

 globals modules forKristen postFileIn
