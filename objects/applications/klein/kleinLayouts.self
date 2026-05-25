 '$Revision: 30.65 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'klein' -> () From: ( | {
         'Category: object prototypes, formats & pieces\x7fModuleInfo: Module: kleinLayouts InitialContents: FollowSlot\x7fVisibility: public'
        
         layouts = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'klein' -> 'layouts' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals klein layouts.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'klein' -> 'layouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot'
        
         kleinLayouts = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules kleinLayouts.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.65 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kleinLayouts' -> () From: ( | {
         'ModuleInfo: Module: kleinLayouts InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules kleinLayouts postFileIn
