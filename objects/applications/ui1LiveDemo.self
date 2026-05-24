 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         example = bootstrap setObjectAnnotationOf: bootstrap stub -> 'example' -> () From: ( |
             {} = 'ModuleInfo: Creator: example.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'example' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         cell <- bootstrap setObjectAnnotationOf: bootstrap stub -> 'example' -> 'cell' -> () From: ( |
             {} = 'ModuleInfo: Creator: example cell.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'example' -> 'cell' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         value <- 6.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'example' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         copySetCellValue = ( |
             r.
            | 
            r: copy.
            r cell value: random integer: 10.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'example' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'example' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         printString = ( |
            | 'holding(', cell value printString, ')').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         ui1LiveDemo = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules ui1LiveDemo.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1LiveDemo' -> () From: ( | {
         'ModuleInfo: Module: ui1LiveDemo InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules ui1LiveDemo postFileIn
