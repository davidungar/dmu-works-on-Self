 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         sicBug = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules sicBug.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sicBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         theBug = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'theBug' -> () From: ( |
             {} = 'Comment: As far as I can tell, the problem is with compiling the isObjectSlot: 
(or isMapSlot: or isArgumentSlot:) method, rather than any of the methods 
it calls; \"slotTypeOf: 0\" and \"objectSlotType\" and \"0 = 0\" all returned identical results between NIC and SIC.
\x7fModuleInfo: Creator: shell theBug.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'theBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         a = ( |
            | 
            useSIC. _Flush. klein slotType isFooSlot: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'theBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         b = ( |
            | useSIC. klein slotType isMapSlot: 4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'theBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         c = ( |
            | useSIC. klein slotType isArgumentSlot: 8).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'theBug' -> () From: ( | {
         'ModuleInfo: Module: sicBug InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'shell' -> ().
        } | ) 



 '-- Side effects'

 globals modules sicBug postFileIn
