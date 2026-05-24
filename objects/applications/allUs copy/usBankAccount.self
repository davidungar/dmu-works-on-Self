 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         usBankAccount = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usBankAccount.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usBankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         bankAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker bankAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         contextForAccount: anAccount = ( |
            | 
            (us context copy receiverFacet: anAccount)
                        lookupStartForSelf: anAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         getBalanceOf: anAccount = ( |
            | 
            us operations send: 'balance' ToContext:  contextForAccount: anAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
             anAccount.
            | 
            core make.
            makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeAnAccount = ( |
            | 
            us operations send: 'copy' ToContext:  contextForAccount: protoAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeBalance = ( |
            | 
            us operations 
              evaluateStringAsEvaluatorContents: 
                '|  (| self = bankAccount. "unimp: <1> = abstractNumber"|) balance <- 0  |' 
              Receiver:   us facets getWellKnownFacet: 'bankAccount'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeBankAccountFacet = ( |
            | 
            us facets addWellKnownFacetNamed: 'bankAccount'.
            (us facets getWellKnownFacet: 'bankAccount') addUsParentFacet: us facets foyer.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeDeposit = ( |
            | 
            us operations evaluateStringAsEvaluatorContents: '| 
            (| self = bankAccount. amt = abstractNumber|) deposit: amt = ( balance: balance + amt )
            |' 
            Receiver: us facets getWellKnownFacet: 'bankAccount').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeProtoAccount.
            testCopiedAccount: makeAnAccount.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeProtoAccount = ( |
            | 
            makeBankAccountFacet.
            makeBalance.
            testBalanceInProtoAccount.
            makeDeposit.
            testDepositInProtoAccount.
            makeWithdraw.
            testWithdrawInProtoAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         makeWithdraw = ( |
            | 
            us operations evaluateStringAsEvaluatorContents: '| 
            (| self = bankAccount. amt = abstractNumber|) withdraw: amt = ( balance: balance - amt )
            |' 
            Receiver: us facets getWellKnownFacet: 'bankAccount').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         protoAccount = ( |
            | us facets getWellKnownFacet: 'bankAccount').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         sendDepositTo: anAccount With: amt = ( |
             c.
            | 
            c: contextForAccount: anAccount.
            c positionalFacetAt: 1 Put: amt.
            us operations send: 'deposit:' ToContext: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         sendWithdrawTo: anAccount With: amt = ( |
             c.
            | 
            c: contextForAccount: anAccount.
            c positionalFacetAt: 1 Put: amt.
            us operations send: 'withdraw:' ToContext: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         setBalanceOf: anAccount To: x = ( |
             c.
            | 
            c: contextForAccount: anAccount.
            c positionalFacetAt: 1 Put: x.
            c lookupStartForSelf: c receiverFacet.
            us operations send: 'balance:' ToContext: c.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testBalanceIn: anAccount = ( |
             b.
            | 
            [ (getBalanceOf: protoAccount) asSelfObject = 0 ] assert.
            [ (getBalanceOf:    anAccount) asSelfObject = 0 ] assert.
            setBalanceOf: anAccount To: 21 asUsObject. 
            [ (getBalanceOf: protoAccount) asSelfObject = 0 ] assert.
            b: getBalanceOf: anAccount.  [b asSelfObject = 21] assert.
            setBalanceOf:    anAccount To:  0 asUsObject.  b: getBalanceOf: anAccount.   [0 = b asSelfObject] assert.
            setBalanceOf: protoAccount To:  0 asUsObject.  b: getBalanceOf: anAccount.   [0 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testBalanceInProtoAccount = ( |
             b.
            | setBalanceOf: protoAccount To: 17 asUsObject.  b: getBalanceOf: protoAccount.  [17 = b asSelfObject] assert.
            setBalanceOf: protoAccount To:  0 asUsObject.  b: getBalanceOf: protoAccount.  [ 0 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testCopiedAccount: anAccount = ( |
            | 
            anAccount checkAllFormals.
            testBalanceIn: anAccount.
            testDepositTo: anAccount.
            testWithdrawTo: anAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testDepositInProtoAccount = ( |
             b.
            | 
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            sendDepositTo:   protoAccount With: 17 asUsObject.
            b: getBalanceOf: protoAccount.   [17 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testDepositTo: anAccount = ( |
             b.
            | 
            b: getBalanceOf: protoAccount.   [0 = b asSelfObject] assert.
            b: getBalanceOf:    anAccount.   [0 = b asSelfObject] assert.
            sendDepositTo:      anAccount With: 23 asUsObject.
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            b: getBalanceOf:    anAccount.   [23 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testWithdrawInProtoAccount = ( |
             b.
            | 
            b: getBalanceOf: protoAccount.   [17 = b asSelfObject] assert.
            sendWithdrawTo:  protoAccount With: 17 asUsObject.
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: usBankAccount InitialContents: FollowSlot'
        
         testWithdrawTo: anAccount = ( |
             b.
            | 
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            b: getBalanceOf:    anAccount.   [23 = b asSelfObject] assert.
            sendWithdrawTo:      anAccount With: 20 asUsObject.
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            b: getBalanceOf:    anAccount.   [ 3 = b asSelfObject] assert.
            self).
        } | ) 



 '-- Side effects'

 globals modules usBankAccount postFileIn
