 '$Revision: 30.2 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> () From: ( | {
         'Category: building VMs\x7fModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: public'
        
         annotationStringCache = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kleinAndYoda annotationStringCache.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kleinAndYoda annotationStringCache parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: public'
        
         at: anno = ( |
            | 
            strings at: anno IfAbsentPut: [|:a| a asString canonicalize]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy strings: strings copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'annotationStringCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: InitializeToExpression: (dictionary copyRemoveAll)\x7fVisibility: private'
        
         strings <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot'
        
         vmKitAnnoCache = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules vmKitAnnoCache.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.2 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAnnoCache' -> () From: ( | {
         'ModuleInfo: Module: vmKitAnnoCache InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules vmKitAnnoCache postFileIn
