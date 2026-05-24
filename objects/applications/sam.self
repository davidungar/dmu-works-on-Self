 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot'
        
         sam = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules sam.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'sammy
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot'
        
         fred = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'sam' -> 'fred' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals sam fred.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'sam' -> () From: ( | {
         'ModuleInfo: Module: sam InitialContents: FollowSlot'
        
         george = bootstrap stub -> 'globals' -> 'sam' -> 'fred' -> ().
        } | ) 



 '-- Sub parts'

 bootstrap read: 'sammy' From: 'applications'



 '-- Side effects'

 globals modules sam postFileIn
