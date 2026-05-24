 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot'
        
         uiTesting = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules uiTesting.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiTesting' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: uiTesting InitialContents: FollowSlot'
        
         x = ( |
             gi.
            | 
            gi: offScreen32 image.
            gi gc foreground: paint named: 'black'.
            gi drawRectangle: (0@0)#(100@100) GC: gi gc).
        } | ) 



 '-- Side effects'

 globals modules uiTesting postFileIn
