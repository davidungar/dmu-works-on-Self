 '$Revision: 30.2 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: FollowSlot'
        
         vmKitIncrementalUpd = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules vmKitIncrementalUpd.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.2 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitIncrementalUpd' -> () From: ( | {
         'ModuleInfo: Module: vmKitIncrementalUpd InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'vmKitIncrObjMapper
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'vmKitIncrObjMapper' From: 'applications/klein'



 '-- Side effects'

 globals modules vmKitIncrementalUpd postFileIn
