 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: FollowSlot'
        
         usExamples = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usExamples.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExamples' -> () From: ( | {
         'ModuleInfo: Module: usExamples InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'usBankAccount
usHelloWorld
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'usBankAccount' From: 'applications/allUs'
 bootstrap read: 'usHelloWorld' From: 'applications/allUs'



 '-- Side effects'

 globals modules usExamples postFileIn
