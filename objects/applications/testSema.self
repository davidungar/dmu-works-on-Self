 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         testSema = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules testSema.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         testSema = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals testSema.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy s: recursiveSemaphore copyBinary).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         fork = ( |
            | msg fork).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         msg = ( |
            | 
            message copy receiver: self Selector: 'run').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: FollowSlot'
        
         run = ( |
            | 
            [s protect: [10 factorial. times delay: 2]] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'testSema' -> () From: ( | {
         'ModuleInfo: Module: testSema InitialContents: InitializeToExpression: (recursiveSemaphore copyBinary)'
        
         s <- recursiveSemaphore copyBinary.
        } | ) 



 '-- Side effects'

 globals modules testSema postFileIn
