 '$Revision:$'
 '
Copyright 1992-2003 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         bankAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'bankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals bankAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: InitializeToExpression: (100)'
        
         balance <- 100.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'bankAccount' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals bankAccount parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'bankAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         deposit: d = ( |
            | balance: balance + d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'bankAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'bankAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         withdraw: w = ( |
            | balance: balance - w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         loggingBankAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals loggingBankAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         balance: b = ( |
            | history addLast: b. resend.balance: b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         history <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals loggingBankAccount parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: InitializeToExpression: (100)'
        
         balance <- 100.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'loggingBankAccount' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'bankAccount' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         bankAccountExample = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules bankAccountExample.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'bankAccountExample' -> () From: ( | {
         'ModuleInfo: Module: bankAccountExample InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules bankAccountExample postFileIn
