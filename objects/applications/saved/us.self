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
            | 
            us facets removeFacets.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'usMorphs
'.
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
        
         context = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'context' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us context.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         arguments <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us context parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         compare: a To: b IfLess: ltb Equal: eqb Greater: gtb Incomparable: inb = ( |
             r <- 'eq'.
            | 
            a do: [|:e1. :k1. e2|
              r: e1 compare: (b at: k1)
                IfLess: [ r = 'gt' ifTrue: 'in' False: 'lt']
                Equal: r
                Greater: [ r = 'lt' ifTrue: 'in' False: 'gt']
            ].
            case 
              if: (r = 'lt') Then: ltb
              If: [r = 'eq'] Then: eqb
              If: [r = 'gt'] Then: gtb
              If: [r = 'in'] Then: inb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy arguments: arguments copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
             r.
            | 
            r: copy.
            r arguments copyRemoveAll.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         distancesByNameBySlotFrom: slotsAndDistancesByFacetName = ( |
             distancesByNameBySlot.
            | 
            distancesByNameBySlot: identityDictionary copyRemoveAll.
            slotsAndDistancesByFacetName do: [|:listOfSlotsAndDistances. :facetName. distancesByFacetName|
              listOfSlotsAndDistances do: [|:slotAndDist. slot. dist. distancesByName|
                slot: slotAndDist x.  dist: slotAndDist y.
                (distancesByNameBySlot includesKey: slot) ifFalse: [distancesByNameBySlot at: slot Put: dictionary copyRemoveAll].
                distancesByName: distancesByNameBySlot at: slot.
                distancesByName at: facetName Put: dist
              ]
            ].
            distancesByNameBySlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         ensureLookupOf: selector HasSingleResult: slots = ( |
            | 
            error:
              slots size compare: 1
                IfLess: [message: selector NotUnderstoodError: slots]
                 Equal: [^ slots first]
               Greater: [message: selector AmbiguousError: slots]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = ( |
            | 
            arguments asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         forAllArgumentsDo: blk = ( |
            | 
            arguments do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isPositionalName: n = ( |
            | 
            positionalBaseName isPrefixOf: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         lookupAllEquallySpecific: selector = ( |
            | 
            lookupAllEquallySpecificSlowlyInParallel: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         lookupAllEquallySpecificSlowlyInParallel: selector = ( |
             distancesByNameBySlot.
             slotsAndDistancesByFacetName.
            | 
            slotsAndDistancesByFacetName: slotsAndDistancesByFacetNameNamed: selector.

            distancesByNameBySlot: distancesByNameBySlotFrom: slotsAndDistancesByFacetName.

            trimAllLessSpecificSlotsFrom: distancesByNameBySlot Selector: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         lookupInContext: selector = ( |
            | 
            ensureLookupOf: selector HasSingleResult: lookupAllEquallySpecific: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fCategory: errors\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         message: selector AmbiguousError: slots = ( |
            | 
            error: 'Us message: ', selector, ' is ambigous, has ', slots size printString, ' equally specific slots').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fCategory: errors\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         message: selector NotUnderstoodError: slots = ( |
            | 
            error: 'Us message: ', selector, ' not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         positionalBaseName = 'arg'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetAt: i = ( |
            | 
            arguments at: (positionalFacetNameAt: i) IfAbsent: [us facets top]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetAt: i Put: aFacet = ( |
            | 
            arguments at: (positionalFacetNameAt: i) Put: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetCount = ( |
            | positionalFacets size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         positionalFacetNameAt: index = ( |
            | 
            positionalBaseName, index printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacets = ( |
             r.
            | 
            r: arguments copyFilteredBy: [|:facet. :name| isPositionalName: name].
            [r isEmpty || [r first = (positionalFacetAt: 1)]] assert.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: ubiquitous arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | 
            arguments at: receiverName IfAbsent: [us facets top]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: ubiquitous arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: rf = ( |
            | 
            arguments at: receiverName Put: rf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: ubiquitous arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         receiverName = 'self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         removePositionalFacets = ( |
            | 
            arguments: arguments copyFilteredBy: [|:f. :n| (isPositionalName: n) not]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         slotsAndDistancesByFacetNameNamed: selector = ( |
             slotsAndDistancesByFacetName.
            | 
            slotsAndDistancesByFacetName: dictionary copyRemoveAll.
            forAllArgumentsDo: [|:facet. :argName. listOfSlotsAndDistances|
              listOfSlotsAndDistances: facet getSlotsAndDistancesWithSelector: selector 
                                                 ThatDispatchOnMeWhenIAmNamed: argName 
                                                      PositionalArgumentCount: positionalFacetCount.
              slotsAndDistancesByFacetName at: argName Put: listOfSlotsAndDistances.
            ].
            slotsAndDistancesByFacetName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | 
            ((reflect: us facets) includesKey: 'top') ifFalse: [^''].
            arguments statePrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: ubiquitous arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         timeFacet = ( |
            | 
            arguments at: timeName IfAbsent: [us facets top]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: ubiquitous arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         timeFacet: x = ( |
             r.
            | 
            r: copy.
            arguments at: timeName Put: r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: ubiquitous arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         timeName = 'time'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'context' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         trimAllLessSpecificSlotsFrom: distancesByNameBySlot Selector: selector = ( |
             dByNByS.
             results.
            | 
            dByNByS: distancesByNameBySlot copyFilteredBy: [|:dByN. :s|
               (s areAllDispatchedFormalsPresentIn: dByN keys IsAssignment: selector last = ':')
            ].
            results: dByNByS keys asSet.
            dByNByS do: [|:dByN1. :s1. |
              dByNByS do: [|:dByN2.  :s2|
                compare: dByN1 To: dByN2 IfLess: [ results remove: s2 ]  Equal: []  Greater: [ results remove: s1 ] Incomparable: []
              ]
            ].
            results).
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
         'Category: common operations\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         contextForAccount: anAccount = ( |
            | 
            us context copy receiverFacet: anAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         getBalanceOf: anAccount = ( |
            | 
            us operations send: 'balance' ToContext: contextForAccount: anAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeAnAccount = ( |
            | 
            us operations send: 'copy' ToContext: contextForAccount: protoAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeBalance = ( |
             b.
            | 
            b: us slots dataSlot copySelector: 'balance'.
            b receiverFacet: us facets bankAccount.
            b initialContents: 0 asUsObject.
            b addFormal: (((us formal copyForSlot: b) 
                           formalName:  us context positionalFacetNameAt: 1) 
                           isImplicit: false) 
                           dispatchOn: us facets abstractNumber.
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeBankAccount = ( |
             anAccount.
            | 
            shell xxx: false.
            us facets makeBasicFacets.
            makeProtoAccount.
            anAccount: makeAnAccount.
            testCopiedAccount: anAccount.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeBankAccountFacet = ( |
            | 
            us facets addFacetNamed: 'bankAccount'.
            us facets bankAccount addUsParentFacet: us facets top.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeDeposit = ( |
             b.
            | 
            b: (us slots slot copy selector: 'deposit')
              implementation: (| 
                parent*.
                evaluateInContext: ctx  = ( 
                  |bal. balCtx. addCtx. newBal. setBalCtx|
                  [makeDeposit].
                  balCtx: ctx copy removePositionalFacets.
                  bal: us operations send: 'balance' ToContext: balCtx.

                  addCtx: us context copy.
                  addCtx positionalFacetAt: 1 Put: bal.
                  addCtx positionalFacetAt: 2 Put: ctx positionalFacetAt: 1.
                  newBal: us operations send: '+' ToContext: addCtx.

                  setBalCtx: ctx copy removePositionalFacets.
                  setBalCtx positionalFacetAt: 1 Put: newBal.
                  us operations send: 'balance:' ToContext: setBalCtx.
               )
              |).
            b receiverFacet: us facets bankAccount.
            [b timeFacet: us facets top.].
            b addFormal: (((us formal copyForSlot: b) formalName:  us context positionalFacetNameAt: 1) isImplicit: false) dispatchOn: us facets abstractNumber.
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeProtoAccount = ( |
            | 
            makeBankAccountFacet.
            makeBalance checkFormals.
            testBalanceInProtoAccount.
            makeDeposit checkFormals.
            testDepositInProtoAccount.
            makeWithdraw checkFormals.
            testWithdrawInProtoAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeWithdraw = ( |
             b.
            | 
            b: (us slots slot copy selector: 'withdraw')
              implementation: (| 
                parent*.
                evaluateInContext: ctx  = ( 
                  |bal. balCtx. subCtx. newBal. setBalCtx |
                  [makeWithdraw].
                  balCtx: ctx copy removePositionalFacets.
                  bal: us operations send: 'balance' ToContext: balCtx.

                  subCtx: us context copy.
                  subCtx positionalFacetAt: 1 Put: bal.
                  subCtx positionalFacetAt: 2 Put: ctx positionalFacetAt: 1.
                  newBal: us operations send: '-' ToContext: subCtx.

                  setBalCtx: ctx copy removePositionalFacets.
                  setBalCtx positionalFacetAt: 1 Put: newBal.
                  us operations send: 'balance:' ToContext: setBalCtx.
               )
              |).
            b receiverFacet: us facets bankAccount.
            [b timeFacet: us facets top.].
            b addFormal: (((us formal copyForSlot: b) formalName:  us context positionalFacetNameAt: 1) isImplicit: false) dispatchOn: us facets abstractNumber.
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         protoAccount = ( |
            | 
            us facets bankAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         sendDepositTo: anAccount With: amt = ( |
             c.
            | 
            c: contextForAccount: anAccount.
            c positionalFacetAt: 1 Put: amt.
            us operations send: 'deposit' ToContext: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         sendWithdrawTo: anAccount With: amt = ( |
             c.
            | 
            c: contextForAccount: anAccount.
            c positionalFacetAt: 1 Put: amt.
            us operations send: 'withdraw' ToContext: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: common operations\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         setBalanceOf: anAccount To: x = ( |
             c.
            | 
            c: contextForAccount: anAccount.
            c positionalFacetAt: 1 Put: x.
            us operations send: 'balance:' ToContext: c.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         testBalanceIn: anAccount = ( |
             b.
            | 
            [ (getBalanceOf: protoAccount) asSelfObject = 0 ] assert.
            shell xxx: true.
            [ (getBalanceOf:    anAccount) asSelfObject = 0 ] assert.
            setBalanceOf: anAccount To: 21 asUsObject. 
            [ (getBalanceOf: protoAccount) asSelfObject = 0 ] assert.
            b: getBalanceOf: anAccount.  [b asSelfObject = 21] assert.
            setBalanceOf:    anAccount To:  0 asUsObject.  b: getBalanceOf: anAccount.   [0 = b asSelfObject] assert.
            setBalanceOf: protoAccount To:  0 asUsObject.  b: getBalanceOf: anAccount.   [0 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         testBalanceInProtoAccount = ( |
             b.
            | 
            setBalanceOf: protoAccount To: 17 asUsObject.  b: getBalanceOf: protoAccount.  [17 = b asSelfObject] assert.
            setBalanceOf: protoAccount To:  0 asUsObject.  b: getBalanceOf: protoAccount.  [ 0 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         testCopiedAccount: anAccount = ( |
            | 
            anAccount checkAllFormals.
            testBalanceIn: anAccount.
            testDepositTo: anAccount.
            testWithdrawTo: anAccount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         testDepositInProtoAccount = ( |
             b.
            | 
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            sendDepositTo:   protoAccount With: 17 asUsObject.
            b: getBalanceOf: protoAccount.   [17 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing prototype\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         testWithdrawInProtoAccount = ( |
             b.
            | 
            b: getBalanceOf: protoAccount.   [17 = b asSelfObject] assert.
            sendWithdrawTo:  protoAccount With: 17 asUsObject.
            b: getBalanceOf: protoAccount.   [ 0 = b asSelfObject] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'examples' -> 'bankAccount' -> () From: ( | {
         'Category: making and testing copied account\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facet.
\x7fIsComplete: '.
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
         'Category: basic us\x7fCategory: parents\x7fCategory: facets\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         addUsParentFacet: aFacet = ( |
            | 
            usParentFacets add: aFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         addUsParentFormal: aFormal = ( |
            | 
            [aFormal slot  selector != ''] assert.
            usParentFormals add: aFormal. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         checkAllFormals = ( |
            | 
            usParentFormals do: [|:fo| fo slot checkFormals].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            checkAllFormals.
            r: resend.copy.
            r usParentFacets: usParentFacets copy.
            r copyAndFixupFormalsOriginalWas: self.
            checkAllFormals.
            r checkAllFormals.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         copyAndFixupFormalsOriginalWas: oldFacet = ( |
             oldSlots.
            | 
            usParentFormals: usParentFormals copyRemoveAll.
            oldSlots: oldFacet usParentFormals mapBy: [|:f| f slot] Into: identitySet copyRemoveAll.
            oldSlots do: [|:s|  s copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | 
            copy removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         getSlotsAndDistancesWithSelector: selector ThatDispatchOnMeWhenIAmNamed: argName PositionalArgumentCount: n = ( |
             fos.
             r <- list copyRemoveAll.
            | 
            r: list copyRemoveAll.
            fos: usParentFormals copyFilteredBy: [|:fo| (fo formalName = argName) && [fo slot matchesSelector: selector PositionalArgumentCount: n]].
            r addAll: fos copyMappedBy: [|:fo| fo slot @ 0].
            usParentFacets do: [|:pf| 
              r addAll: 
                (pf getSlotsAndDistancesWithSelector: selector ThatDispatchOnMeWhenIAmNamed: argName PositionalArgumentCount: n)
                  copyMappedBy: [|:pt| pt x @ pt y succ].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fCategory: facets\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         hasParentFacet: f = ( |
            | usParentFacets includes: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         hasParentFormal: s = ( |
            | 
            usParentFormals includes: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         longKey = ( |
            | [xxx]. printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fComment: returns a vector of lists of slots by distance\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         lookup: selector WithArguments: args Into: aVector Distance: d = ( |
             v.
            | 
            v: aVector size > d  ifTrue: [ aVector ] False: [aVector copySize: aVector size succ double].
            v at: d Put:
              usParentFormals copyFilteredBy: [|:aFormal| aFormal slot matchesSelector: selector Arguments: args].
            usParentFacets do: [|:f| f lookup: selector WithArguments: args Into: v Distance: d succ].
            v).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         name = ( |
             m.
            | 
            m: asMirror.
            m creatorPathIfPresent: [|:p| ^  'The ', p last] IfAbsent: [].
            m prototypeIfPresent: [|:myProto|
              myProto creatorPathIfPresent: [|:p| ^ p last prependAOrAn] IfAbsent: [].
            ] IfAbsent: [].
            'An anonymous facet').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            usParentFormals removeAll.
            usParentFacets  removeAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFormals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'abstractNumber' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'abstractNumber' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'abstractNumber' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFormals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addFacetNamed: facetName = ( |
            | 
            addFacetNamed: facetName Copying: us facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addFacetNamed: facetName Copying: facetProto = ( |
            | 
            asMirror at: facetName PutContents: reflect: facetProto copyRemoveAll.
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
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFormals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: building the world\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeBasicFacets = ( |
            | 
            removeFacets.

            addFacetNamed: 'top'.
            [
            addFacetNamed: 'y2012'.
            addFacetNamed: 'y2013'.
            y2012 addUsParentFacet: top.
            y2013 addUsParentFacet: y2012.
            ].

            addFacetNamed: 'abstractNumber'.
            abstractNumber addUsParentFacet: top.
            addFacetNamed: 'protoNumber' Copying: us proxyFacet.
            protoNumber addUsParentFacet: abstractNumber.
            us slots slot makeBasicSlots. 
            testPlus.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us proxyFacet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'protoNumber' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'protoNumber' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         value.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: building the world\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         removeFacets = ( |
            | 
            [
              asMirror findFirst: [
                |:s| s isMethod not && [
                     s isParent not && [
                     s isAssignable not]]]
               IfPresent: [|:s| s remove] IfAbsent: [
                modules init bringUpToDate.
                ^ self]
            ] loop.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: building the world\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         testPlus = ( |
             c.
            | 
            [us facets abstractNumber usParentFormals size = 4] assert.
            c: us context copy.
            c receiverFacet: us facets top.
            c positionalFacetAt: 1 Put: 3 asUsNumber.
            c positionalFacetAt: 2 Put: 4 asUsNumber.
            [ |r|
              r: us operations send: '+' ToContext: c.
              r asSelfObject = 7
            ] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFormals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         formal = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us formal.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         childFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'anon\')'
        
         formalName <- 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (false)'
        
         isExplicit <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         mySlot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us formal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy childFacets: childFacets copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlot: s = ( |
            | copy mySlot: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlot: s DispatchingOn: newFacet InsteadOf: oldFacet = ( |
            | 
            ((copyForSlot: s) dispatchOn: newFacet InsteadOf: oldFacet) fixupChildFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchOn: aFacet = ( |
            | 
            childFacets add: aFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchOn: newFacet InsteadOf: oldFacet = ( |
            | 
            childFacets remove: oldFacet IfAbsent: [].
            dispatchOn: newFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         exists = ( |
            | 
            nil == slot ifTrue: [^ false].
            slot formals includes: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         fixupChildFacets = ( |
            | 
            childFacets do: [|:f| f addUsParentFormal: self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignable = ( |
            | exists && [slot isAssignable]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignment = ( |
            | exists && [slot isAssignment]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isDispatched = ( |
            | 
            childFacets isEmpty not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isDispatchedOn: aFacet = ( |
            | 
            childFacets includes: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: implicit or explicit\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isImplicit = ( |
            | isExplicit not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: implicit or explicit\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isImplicit: aBool = ( |
            | isExplicit: aBool not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isMethod = ( |
            | 
            exists && [slot isMethod]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         longKey = ( |
            | nameAndSelector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         method = ( |
            | slot value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         mustBeFormal = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         name = ( |
            | formalName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         nameAndSelector = ( |
            | 
            formalName,
            (nil == mySlot ifTrue: '' False: [ ' in ', mySlot selector] )).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         nameSize: n = ( |
             r.
            | 
            r: nameAndSelector.
            r size <= n ifTrue: [^r].
            r: name.
            r size <= n ifTrue: [^n].
            r copyAtMostWithEllipsis: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = ( |
            | mySlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            formalName, ' = {', childFacets statePrintString, '}',
            (nil == mySlot ifTrue: '' False: [ ' in ', mySlot selector] )).
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
        
         send: selector ToContext: aContext = ( |
             slot.
            | 
            slot: aContext lookupInContext: selector.
            slot evaluateInContext: aContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         proxyFacet = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us facet copyRemoveAll ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us proxyFacet.

CopyDowns:
globals us facet. copyRemoveAll 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asSelfObject = ( |
            | 
            value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         value.
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
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         formals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: ((| evaluateInContext: ctx = (error: \'the prototype\') |))'
        
         implementation <- (| evaluateInContext: ctx = (error: 'the prototype') |).
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
            [aFormal slot = self] assert.
            aFormal mustBeFormal.
            formals add: aFormal.
            aFormal isDispatched ifTrue: [
              aFormal childFacets do: [|:f| f addUsParentFormal: aFormal].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addMeInToDispatchedFormalsUsParentSlots = ( |
            | 
            dispatchedFormals do: [|:f|  
              f childFacets do: [|:cf| cf addUsParentFormal: f].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         areAllDispatchedFormalsPresentIn: namesOfFormalsIInheritFrom IsAssignment: isA = ( |
             nameSet.
            | 
            nameSet: namesOfFormalsIInheritFrom asSet.
            dispatchedNames findFirst: [|:n|
              (nameSet includes: n) not
            ] IfPresent: false IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         beShared = ( |
            | beCopied: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         checkFormals = ( |
            | 
            formals do: [|:f| [f slot = self] assert].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            r: resend.copy.
            r formals: formals copyMappedBy: [|:f| f copyForSlot: r].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
             newFormals.
            | 
            newFormals: formalsDispatchedOn: oldFacet.
            newFormals do: [|:f| f dispatchOn: newFacet.  newFacet addUsParentFormal: f].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         copyIfDataSlotChangingFacetFrom: old To: new = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: s = ( |
            | copy selector: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchedFormals = ( |
            | 
            formals copyFilteredBy: [|:f| f isDispatched]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         dispatchedNames = ( |
            | 
            (formals copyFilteredBy: [|:f| f isDispatched]) copyMappedBy: [|:f| f formalName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringsForLocalSlots = ( |
            | 
            [localSlots copyMappedBy: [|:s| s evalStringAssignable leftShrinkwrapped]].
            [xxx].
            '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         evaluateInContext: ctx = ( |
            | 
            implementation evaluateInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         formalsDispatchedOn: aFacet = ( |
            | 
            formals copyFilteredBy: [|:f| f isDispatchedOn: aFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignable = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignment = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isMethod = ( |
            | 
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeBasicSlots = ( |
            | 
             makePlusSlot checkFormals.
            makeMinusSlot checkFormals.
            makeCloneSlot checkFormals.
             makeCopySlot checkFormals.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeCloneSlot = ( |
             s.
            | 
            s: copy selector: 'clone'.
            s implementation: (|
              parent*.
              evaluateInContext: myContext = (
                [makeCloneSlot].
                 myContext receiverFacet copy)
            |).
            s receiverFacet: us facets top.
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeCopySlot = ( |
             s.
            | 
            s: copy selector: 'copy'.
            s implementation: (|
              parent*.
              evaluateInContext: myContext = (
                [makeCopySlot].
                us operations send: 'clone' ToContext: myContext)
            |).
            s receiverFacet: us facets top.
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeMinusSlot = ( |
             s.
            | 
            s: copy selector: '-'.
            s implementation: (|
              parent*.
              evaluateInContext: myContext = (
                [makeMinusSlot].
                (
                  (myContext positionalFacetAt: 1) asSelfObject - (myContext positionalFacetAt: 2) asSelfObject
                ) asUsNumber 
              )
            |).
            s addFormal: (((us formal copyForSlot: s) formalName:  us context positionalFacetNameAt: 1) isImplicit: false) dispatchOn: us facets abstractNumber.
            s addFormal: (((us formal copyForSlot: s) formalName:  us context positionalFacetNameAt: 2) isImplicit: false) dispatchOn: us facets abstractNumber.
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makePlusSlot = ( |
             s.
            | 
            s: copy selector: '+'.
            s implementation: (|
              parent*.
              evaluateInContext: myContext = (
                [makePlusSlot].
                (
                  (myContext positionalFacetAt: 1) asSelfObject + (myContext positionalFacetAt: 2) asSelfObject
                ) asUsNumber 
              )
            |).
            s addFormal: (((us formal copyForSlot: s) formalName:  us context positionalFacetNameAt: 1) isImplicit: false) dispatchOn: us facets abstractNumber.
            s addFormal: (((us formal copyForSlot: s) formalName:  us context positionalFacetNameAt: 2) isImplicit: false) dispatchOn: us facets abstractNumber.
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         matchesSelector: s PositionalArgumentCount: n = ( |
            | 
            selector = s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         nameAndReceiverString = ( |
            | 
            receiverFacet name, ' >> ', selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         nameSize: n = ( |
             r.
            | 
            r: nameAndReceiverString.
            r size <= n ifTrue: [^r].
            r: selector.
            r size <= n ifTrue: [^n].
            r copyAtMostWithEllipsis: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         receiverFacet = ( |
            | 
            formals findFirst: [|:f| (f formalName = us context receiverName) && [f isDispatched]] IfPresent: [|:f| f childFacets first] IfAbsent: [us facets top]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: x = ( |
            | 
            addFormal: (((us formal copyForSlot: self) formalName: us context receiverName) isImplicit: true) dispatchOn: x.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         sourceStringIfFail: fb = ( |
            | source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         timeFacet: x = ( |
            | 
            addFormal: (((us formal copyForSlot: self) formalName: us context timeName) isImplicit: true) dispatchOn: x.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         usOrSelfSource = ( |
            | 
            [xxx].
            method source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'no us source set\')'
        
         source <- 'no us source set'.
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
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         areAllDispatchedFormalsPresentIn: namesOfFormalsIInheritFrom IsAssignment: isA = ( |
             n.
            | 
            n: isA ifTrue: [namesOfFormalsIInheritFrom] False: [namesOfFormalsIInheritFrom copy add: us context positionalFacetNameAt: 1].
            resend.areAllDispatchedFormalsPresentIn: n IsAssignment: isA).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         contents: x = ( |
            | implementation: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
             newFacetFormals.
             r.
            | 
            newFacetFormals: formals copyRemoveAll.
            r: clone.
            r formals: formals copyMappedBy: [|:f|
              f copyForSlot: r DispatchingOn: newFacet InsteadOf: oldFacet
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         evaluateInContext: ctx = ( |
             pf.
            | 
            pf: ctx positionalFacets.
            pf isEmpty ifTrue: [^ implementation].
            implementation: pf first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         initialContents: x = ( |
            | contents: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignable = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedOn: aFacet = ( |
            | 
            formals findFirst: [|:f| f isDispatchedOn: aFacet] IfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         matchesSelector: s PositionalArgumentCount: n = ( |
            | 
            (resend.matchesSelector: s PositionalArgumentCount: n) ||
            [ (n = 1) && [ resend.matchesSelector: s copyWithoutLast PositionalArgumentCount: n]]).
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

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         todo = '
cats should dissappear when empty
facet parents names, contents redundant'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (false)'
        
         xxx <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsObject = ( |
            | 
            asUsNumber).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'number' -> () From: ( | {
         'Category: Us\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asUsNumber = ( |
            | 
            us facets protoNumber copy value: self).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'usMorphs' From: 'applications'



 '-- Side effects'

 globals modules us postFileIn
