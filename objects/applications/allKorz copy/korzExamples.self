 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: FollowSlot'
        
         korzExamples = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzExamples.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExamples' -> () From: ( | {
         'ModuleInfo: Module: korzExamples InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'korzBankAccount
korzHelloWorld
korzIdentityE
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'korzBankAccount' From: 'applications/allKorz'
 bootstrap read: 'korzHelloWorld' From: 'applications/allKorz'
 bootstrap read: 'korzIdentityE' From: 'applications/allKorz'



 '-- Side effects'

 globals modules korzExamples postFileIn
