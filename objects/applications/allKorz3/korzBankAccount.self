 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         bankAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker bankAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
             anAccount.
            | 
            core make.
            makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         makeDemoCoordinate = ( |
            | 
            addSlotsFromExpression: '
              bankAccountDemo = ()
            '.
            evaluateStringAsEvaluatorContents: 'bankAccountDemo').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            setDefaultCoordinateOfDimension: 'demo' To: makeDemoCoordinate.
            makeProtoAccount.
            testBankAccount.
            removeDefaultCoordinateOfDimension: 'demo'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         makeProtoAccount = ( |
            | 
            addSlotsFromExpression: '
              { demo => bankAccountDemo  ::  bankAccount = (| parent* = foyer|) }'.

            addSlotsFromExpression: '
              {
                demo => bankAccountDemo.
                rcvr => bankAccount
                :: 
                balance <- 0.
                deposit:  { amt => abstractNumber } = ( balance: balance + amt ).
                withdraw: { amt => abstractNumber } = ( balance: balance - amt ).
              }
            '.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         testBankAccount = ( |
            | 
            addSlotsFromExpression: '
             {
              demo => bankAccountDemo
              ::
              testBankAccount = (
                | ba |
                bankAccount balance:  17.  [bankAccount balance  = 17] assert.
                bankAccount balance:   0.  [bankAccount balance  =  0] assert.
                bankAccount deposit:  23.  [bankAccount balance  = 23] assert.
                bankAccount withdraw: 23.  [bankAccount balance  =  0] assert.

                ba: bankAccount copy.
                ba balance: 29.  [bankAccount balance = 0] assert.  [ba balance = 29] assert.
                ba deposit:  5.  [bankAccount balance = 0] assert.  [ba balance = 34] assert.
                ba withdraw: 1.  [bankAccount balance = 0] assert.  [ba balance = 33] assert.
              )
            }'.

            evaluateStringAsEvaluatorContents: 'testBankAccount'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         korzBankAccount = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzBankAccount.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzBankAccount' -> () From: ( | {
         'ModuleInfo: Module: korzBankAccount InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzBankAccount postFileIn
