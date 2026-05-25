 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         se = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules se.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'se' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: se InitialContents: FollowSlot'
        
         stefanExample = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stefanExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stefanExample.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         interestAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stefanExample' -> 'interestAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stefanExample interestAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'interestAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         balance = ( |
            | 
            originalBalance + (year * 1.1)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'interestAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         balance: x = ( |
            | originalBalance: (x - balance) + originalBalance).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'interestAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: InitializeToExpression: (0)'
        
         originalBalance <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stefanExample simpleAccount parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'interestAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'interestAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: InitializeToExpression: (3)'
        
         year <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         simpleAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stefanExample simpleAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: InitializeToExpression: (0)'
        
         balance <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         deposit: x = ( |
            | balance: balance + x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stefanExample' -> 'simpleAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: se InitialContents: FollowSlot'
        
         withdraw: x = ( |
            | 
            deposit: x negate).
        } | ) 



 '-- Side effects'

 globals modules se postFileIn
