 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         us = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules us.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         us = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         examples = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us examples.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         bankAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us examples bankAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         getBalanceOf: aContext = ( |
            | 
            us operations send: 'balance' To: aContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeBalance = ( |
             b.
            | 
            b: us slots dataSlot copySelector: 'balance'.
            b receiver: us facets bankAccount.
            b initialContents: 0.
            b beCopied.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeBankAccount = ( |
            | 
            makeProtoAccount.
            makeDavidAccount.
            deposit.
            withdraw.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeBankAccountFacet = ( |
            | 
            us facets add: 'bankAccount'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeDeposit = ( |
            | 
            (copy selector: 'deposit')
            implementation: (| 
              parent*.
              doIt = ( 
                send: 'balance:' With: 
                  send: '+' With: (send: 'balance') With: send: 'amount'
              )
            |)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeProtoAccount = ( |
            | 
            makeBankAccountFacet.
            makeBalance.
            testBalanceInProtoAccount.
            makeDeposit.
            makeWithdraw.
            halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         setBalanceOf: aContext To: x = ( |
            | 
            us operations send: 'balance:' To: aContext With: x.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         testBalanceInProtoAccount = ( |
             b.
             c.
            | 
            c: us context copyReceiver: us facets bankAccount.
            b: getBalanceOf: c.
            0 = b ifFalse: [halt].
            setBalanceOf: c To: 17.
            b: getBalanceOf: c.
            17 = b ifFalse: [halt].
            setBalanceOf: c To: 0.
            b: getBalanceOf: c.
            0 = b ifFalse: [halt].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facet.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addUsParent: aFormal = ( |
            | usParents add: aFormal. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy usParents: usParents copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
             r.
            | 
            r: copy.
            r usParents removeAll.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         usParents <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         add: facetName = ( |
            | 
            asMirror at: facetName PutContents: reflect: us facet copyRemoveAll.
            (asMirror slotAt: facetName) module: 'init'.
            (asMirror slotAt: facetName) makeCreator.
            modules init bringUpToDate.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         usParents <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'copied' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'copied' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         usParents <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeBasicFacets = ( |
            | 
            add: 'top'.
            add: 'copied'.
            add: 'shared'.
            copied addUsParent: top.
            shared addUsParent: top.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         usParents <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         usParents <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         formal = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us formal.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         facet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (false)'
        
         isExplicit <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'anon\')'
        
         name <- 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us formal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         copiedOrSharedName = 'copiedOrShared'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchOn: aFacet = ( |
            | 
            facet: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         isDispatched = ( |
            | 
            nil != facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         isImplicit = ( |
            | isExplicit not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         isImplicit: aBool = ( |
            | isExplicit: aBool not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         receiverName = 'self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         operations = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us operations.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         send: selector To: aContext = ( |
            | 
            halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slots = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots slot.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         facet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         formals <- bootstrap setObjectAnnotationOf: ( [|d|
	d: dictionary copyRemoveAll.
] value) From: ( |
             {} = 'ModuleInfo: Creator: globals us slots slot formals.

CopyDowns:
globals set. copy 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         implementation.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots slot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addFormal: aFormal = ( |
            | 
            formals add: aFormal.
            aFormal isDispatched ifTrue: [
              aFormal facet addUsParent: self
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         beCopied = ( |
            | beCopied: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         beCopied: aBool = ( |
             copyFacet.
             f.
            | 
            copyFacet: aBool ifTrue: [us facets copied] False: [us facets shared].
            f: ((us formal copy name: us formal copiedOrSharedName ) isImplicit: true) dispatchOn: copyFacet.
            addFormal: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         beShared = ( |
            | beCopied: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         copy = ( |
            | 
            resend.copy formals: formals copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: s = ( |
            | copy selector: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         receiver: aFacet = ( |
            | 
            addFormal: ((us formal copy name: us formal receiverName) isImplicit: true) dispatchOn: aFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         source <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         dataSlot = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us slots slot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots dataSlot.

CopyDowns:
globals us slots slot. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots dataSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         contents: x = ( |
            | implementation: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         initialContents: x = ( |
            | contents: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         us_feb = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         inheritanceChains = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb inheritanceChains.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         float = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> 'float' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb inheritanceChains float.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         integer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> 'integer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb inheritanceChains integer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         particle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'particle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb particle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (vector copyRemoveAll)'
        
         inheritanceLinks <- vector copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (())'
        
         payload <- ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         numberTest = ( |
            | 
            3 asUsObject + 2.3 asUsObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         run = ( |
            | 
            numberTest).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsObject = ( |
            | 
            halt).
        } | ) 



 '-- Side effects'

 globals modules us postFileIn
