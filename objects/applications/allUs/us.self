 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'false' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsObject = ( |
            | 
            us facets getWellKnownFacet: 'false').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         us = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
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
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: us InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
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
            us worldMaker makeVM.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'usMorphs
usTests
usWorldMaker
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'true' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsObject = ( |
            | 
            us facets getWellKnownFacet: 'true').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         us = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractContext = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us abstractContext.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         arguments <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us abstractContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         activateForAST: aMethodOrBlockAST IfNLR: nlrBlock = ( |
             newCtx.
            | 
            newCtx: copy.
            aMethodOrBlockAST replaceLexicallyScopedImplicitArgumentsIn: newCtx.
            newCtx activationFacet: aMethodOrBlockAST facetForNewActivation: self.
            aMethodOrBlockAST formals do: [|:f| f ifIRenameSomethingAddNewNameToIncomingContext: newCtx].
            newCtx makeSlotsForArgsAndLocalsFrom: aMethodOrBlockAST IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         activationFacet = ( |
            | arguments at: activationName IfAbsent: [us facets foyer]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         activationFacet: rf = ( |
            | 
            arguments at: activationName Put: rf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         activationName = 'activation'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         compareDistancesByDimesionName: distsByDimName1 To: distsByDimName2 IfLessSpecific: lsb EquallySpecific: esb MoreSpecific: msb IncomparablySpecific: inb = ( |
             r <- 'eq'.
            | 
            (distsByDimName1 keys asSet addAll: distsByDimName2 keys asSet) do: [|:dimName. distance1. distance2|
              distance1: distsByDimName1 at: dimName IfAbsent: maxSmallInt.
              distance2: distsByDimName2 at: dimName IfAbsent: maxSmallInt.
              r: distance1 compare: distance2
                            IfLess: [ r = 'ls' ifTrue: 'in' False: 'ms']
                             Equal: r
                           Greater: [ r = 'ms' ifTrue: 'in' False: 'ls']
            ].
            case 
              if: (r = 'ls') Then: lsb
              If: [r = 'eq'] Then: esb
              If: [r = 'ms'] Then: msb
              If: [r = 'in'] Then: inb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy arguments: arguments copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyArgumentNamed: n FromContext: c = ( |
            | 
            arguments at: n Put: c arguments at: n.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
             r.
            | 
            r: copy.
            r arguments removeAll.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         deactivate = ( |
            | 
            deleteArgumentSlots.
            activationFacet vaporize.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         deleteArgumentSlots = ( |
             localSlots.
            | 
            localSlots: activationFacet usParentFormals.
            localSlots do: [|:ls| ls vaporize].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateMethodOrBlockAST: ast IfNLR: nlrBlock = ( |
             newCtx.
            | 
            [
              newCtx: activateForAST: ast IfNLR: [|:rr| ^ nlrBlock value: rr].
              ast expressions evaluateInContext: newCtx IfNLR: nlrBlock
            ] onReturn: [newCtx deactivate]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         facetForNewMethodActivation: aMethodOrBlockAST = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = ( |
            | 
            arguments asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         forAllArgumentsDo: blk = ( |
            | 
            arguments do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitArgumentsWithNamesDo: blk = ( |
            | 
            arguments do: [|:f. :n|
              (isNameImplicit: n) ifTrue: [blk value: f With: n]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         indexOfPositionalName: n = ( |
            | 
            "Oy, such a hack!"
            [qqq].
            ((n copyWithoutPrefix: positionalPrefix) copyWithoutSuffix: positionalSuffix) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isNameImplicit: n = ( |
            | 
            (isPositionalName: n) not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isPositionalName: n = ( |
            | 
            (positionalPrefix isPrefixOf: n) && [positionalSuffix isSuffixOf: n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         localReceiverFacet: isForObject = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookup: selector = ( |
            | 
            lookup: selector IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookup: selector FollowParents: followParents IfNone: noneBlock One: oneBlock Many: manyBlock = ( |
             slots.
            | 
            slots: lookupAllEquallySpecific: selector FollowParents: followParents .
            case
              if: (slots isEmpty)   Then: [noneBlock value: selector]
              If: [slots size = 1]  Then: [ oneBlock value: slots first]
                                    Else: [manyBlock value: slots]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookup: selector IfFail: failBlock = ( |
            | 
            lookup: selector FollowParents: true
            IfNone: [failBlock value:  messageNotUnderstoodError: selector ]
               One: [|:theSlot| theSlot]
              Many: [|:slots|   failBlock value:  message: selector AmbiguousError: slots]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         lookupAllEquallySpecific: selector FollowParents: followParents = ( |
            | lookupAllEquallySpecificSlowlyInParallel: selector FollowParents: followParents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         lookupAllEquallySpecificSlowlyInParallel: selector FollowParents: followParents = ( |
             distancesByNameBySlot.
             slotsAndDistancesByFacetName.
            | 
            slotsAndDistancesByFacetName: slotsAndDistancesByFacetName: selector 
                                                         FollowParents: followParents.

            distancesByNameBySlot: distancesByNameBySlotFrom: slotsAndDistancesByFacetName.

            trimAllLessSpecificSlotsFrom: distancesByNameBySlot Selector: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupStartForFacet: f = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotForArgNamed: name Containing: facet = ( |
            | 
            makeSlotForDataNamed: name 
                    IsAssignable: false
                      Containing: facet
                     IsForObject: false 
                           Guard: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotForDataAST: dataDeclarationAST IsForObject: isForO IfNLR: nlrBlock = ( |
            | 
            makeSlotForDataNamed:   dataDeclarationAST name 
                    IsAssignable:   dataDeclarationAST isAssignable 
                      Containing:  (dataDeclarationAST contents evaluateInContext: self IfNLR: nlrBlock)
                     IsForObject:   isForO
                           Guard:   dataDeclarationAST guard).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotForDataNamed: name IsAssignable: isA Containing: facet IsForObject: isForO Guard: g = ( |
             lrf.
            | 
            lrf: localReceiverFacet: isForO.
            g isNil ifFalse: [g receiverFacetAndParseTreeIfPresent: [|:r| lrf: r]].
            isA ifTrue: [ | argFacet |
              argFacet: g facetForName: us context positionalFacetNameAt: 1.
              us slots dataSlot copySelector: name
                               ReceiverFacet: lrf
                               ArgumentFacet: argFacet
                             InitialContents: facet
            ]
            False: [
              us slots dataSlot copySelector: name ReceiverFacet: lrf Constant: facet
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotsForArgs = ( |
            | 
            arguments do: [|:facet. :name. s| 
              s: makeSlotForArgNamed: name Containing: facet.
              [((s selector = 'self') && [s couldAliasAWellKnownSlot]) not] assert. "also rf is foyer"
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotsForArgsAndLocalsFrom: aMethodOrBlockAST IfNLR: nlrBlock = ( |
            | 
            makeSlotsForArgs.
            makeSlotsForDclsFrom: aMethodOrBlockAST declarations IsForObject: false IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotsForDclsFrom: aDclsAST IsForObject: isForO IfNLR: nlrBlock = ( |
            | 
            aDclsAST do: [|:dcl|
              dcl makeSlotIn: self IsForObject: isForO IfNLR: nlrBlock.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fCategory: errors\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         message: selector AmbiguousError: slots = ( |
            | 
            slots error: 'Us message: ', selector, ' is ambigous, has ', slots size printString, ' equally specific slots').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fCategory: errors\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         messageNotUnderstoodError: selector = ( |
            | 
            error: 'Us message: ', selector, ' not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetAt: i = ( |
            | 
            arguments at: (positionalFacetNameAt: i) IfAbsent: [us facets foyer]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetAt: i Put: aFacet = ( |
            | 
            arguments at: (positionalFacetNameAt: i) Put: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetCount = ( |
            | 
            (arguments copyFilteredBy: [|:a. :n| isPositionalName: n]) size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         positionalFacetNameAt: index = ( |
            | 
            positionalPrefix, index printString, positionalSuffix).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacets = ( |
             r.
            | 
            r: vector copySize: positionalFacetCount.
            r do: [|:e. :i| r at: i Put:  positionalFacetAt: i succ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         positionalPrefix = '<'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         positionalSuffix = '>'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | 
            arguments at: receiverName IfAbsent: [us facets foyer]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: rf = ( |
            | 
            arguments at: receiverName Put: rf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverName = 'self'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceNameOfPositionalFacetAt: index With: newName = ( |
             oldName.
             value.
            | 
            oldName: positionalFacetNameAt: index.
            value: arguments at: oldName.
            arguments removeKey: oldName.
            arguments at: newName Put: value.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         send: selector = ( |
            | [qqq]. us operations send: selector ToContext: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         slotsAndDistancesByFacetName: selector FollowParents: followParents = ( |
             slotsAndDistancesByFacetName.
            | 
            slotsAndDistancesByFacetName: dictionary copyRemoveAll.
            forAllArgumentsDo: [|:facet. :argName. listOfSlotsAndDistances. f|
              f:  lookupStartForFacet: facet.
              listOfSlotsAndDistances:    f getSlotsAndDistancesWithSelector: selector 
                                                ThatDispatchOnMeWhenIAmNamed: argName 
                                                     PositionalArgumentCount: positionalFacetCount
                                                               FollowParents: followParents.
              slotsAndDistancesByFacetName at: argName Put: listOfSlotsAndDistances.
            ].
            slotsAndDistancesByFacetName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | 
            (arguments copyMappedBy: [|:arg. :name| name, ' = ', arg printString]) 
              reduceWith: [|:a. :b| a, ',  ', b ]  IfSingleton: [|:a| a]  IfEmpty: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         timeFacet = ( |
            | 
            arguments at: timeName IfAbsent: [us facets foyer]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         timeFacet: x = ( |
             r.
            | 
            r: copy.
            arguments at: timeName Put: r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         timeName = 'time'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         trimAllLessSpecificSlotsFrom: distancesByNameBySlot Selector: selector = ( |
             dByNByS.
             results.
            | 
            dByNByS: distancesByNameBySlot copyFilteredBy: [|:dByN. :s|
               (s areAllDispatchedFormalsPresentIn: dByN keys IsAssignment: positionalFacetCount = 1)
            ].

            results: dByNByS keys asSet.
            dByNByS do: [|:dByN1. :s1. |
              dByNByS do: [|:dByN2.  :s2|
                dByN1 == dByN2  ifFalse: [
                  compareDistancesByDimesionName: dByN1
                                              To: dByN2 
                                  IfLessSpecific: [ results remove: s1 IfAbsent: []]  
                                 EquallySpecific: [ ]
                                    MoreSpecific: [ results remove: s2 IfAbsent: []]
                            IncomparablySpecific: [ ]
                ]
              ]
            ].
            results).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         ast = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( |
             {} = 'Comment: I am a name space for us AST nodes\x7fModuleInfo: Creator: globals us ast.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: abstract and formless\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         abstract = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstract.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstract parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForParseTree: pt = ( |
            | copy parseTree: pt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         ensureNotPrototype = ( |
            | 
            asMirror creatorPathIfPresent: [error: 'is the prototype'] IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         sourceString = ( |
            | 
            sourceStringIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         sourceStringIfFail: fb = ( |
            | 
            parseTree source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (usParser parseNodes node)'
        
         parseTree <- bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         declaration = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast declaration.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facet.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us  facet)'
        
         contents <- bootstrap stub -> 'globals' -> 'us' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         guard.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast declaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotParseTree: slotParseTree Annotation: a FormalIndex: i IfFail: fb = ( |
            | 
                case
              if: ( slotParseTree isUsArgumentSlot )  
            Then: [ us ast positionalFormalDeclaration copyForArgumentSlotParseTree: slotParseTree Annotation: a Index: i IfFail: fb ]
              If: [ slotParseTree isUsMethodSlot ]
            Then: [ us ast methodDeclaration copyForSlotParseTree: slotParseTree Annotation: a Index: i IfFail: fb ]
              If: [ slotParseTree isUsDataSlot ]
            Then: [ us ast dataDeclaration copyForSlotParseTree: slotParseTree Annotation: a Index: i IfFail: fb ]
            Else: [ fb value: 'expected either (possibly initialized) data slot or method slot' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotParseTree: pt Annotation: a IfFail: fb = ( |
            | 
            copyForSlotParseTree: pt Annotation: a FormalIndex: -1 IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initGuardWithAnnotation: a IfFail: fb = ( |
            | 
            guard:
            parseTree guardIfPresent: [|:g|
              us ast slotGuard copyForSlotGuardParseTree: g IfFail: [|:e| ^ fb value: e]
            ] IfAbsent: [us ast slotGuard copy]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignable = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isLocal = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositionalFormal = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotIn: ctx IsForObject: isForO IfNLR: nlrBlock = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         name = 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         selector = ( |
            | name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | name).
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
            [qqq. [aFormal slot  selector != ''] assert.].
            usParentFormals add: aFormal. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsObject = ( |
            | self).
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
            r usParentFormals: usParentFormals copy.
            checkAllFormals.
            r checkAllFormals.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         copyAndFixupFormalsOriginalWas: oldFacet = ( |
             oldSlots.
            | 
            usParentFormals removeAll.
            oldSlots: oldFacet usParentFormals mapBy: [|:f| f slot] Into: identitySet copyRemoveAll.
            oldSlots do: [|:s|  
              s isAnActivationSlot ifFalse: [ "s is a local variable slot; skip -- dmu"
                s copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: self
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | 
            copy removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyUsFacet = ( |
             r.
            | 
            checkAllFormals.
            r: copy.
            r copyAndFixupFormalsOriginalWas: self.
            checkAllFormals.
            r checkAllFormals.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         getContentsOfWellKnownDataSlotNamed: selector = ( |
            | 
            getContentsOfWellKnownDataSlotNamed: selector IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         getContentsOfWellKnownDataSlotNamed: selector IfFail: failBlock = ( |
            | 
            (getWellKnownSlotNamed: selector IfFail: [|:e| ^ failBlock value: e]) contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         getSlotsAndDistancesWithSelector: selector ThatDispatchOnMeWhenIAmNamed: argName PositionalArgumentCount: n FollowParents: followParents = ( |
             fos.
             r.
            | 
            r: (                getSlotsWithSelector: selector 
                ThatDispatchOnExactlyMeWhenIAmNamed: argName 
                            PositionalArgumentCount: n ) 
                copyMappedBy: [|:s| s @ 0].

            followParents ifTrue: [
              usParentFacets do: [|:pf| 
                r addAll: 
                  (pf getSlotsAndDistancesWithSelector: selector 
                          ThatDispatchOnMeWhenIAmNamed: argName 
                               PositionalArgumentCount: n
                                         FollowParents: true)
                    copyMappedBy: [|:pt| pt x @ pt y succ].
              ].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         getSlotsWithSelector: selector ThatDispatchOnExactlyMeWhenIAmNamed: argName PositionalArgumentCount: n = ( |
            | 
            ((
              usParentFormals filterBy: [|:fo|  fo formalName = argName ]
                                  Into: list copyRemoveAll )
               mapBy: [|:fo| fo slot] )
            filterBy: [|:s| s matchesSelector: selector PositionalArgumentCount: n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         getWellKnownSlotNamed: selector = ( |
            | 
            getWellKnownSlotNamed: selector IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         getWellKnownSlotNamed: selector IfFail: failBlock = ( |
            | 
            ((us dispatchContextForReceiver: self) activationFacet: us facets foyer) lookup: selector IfFail: failBlock).
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
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsFacet = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isWellKnown = ( |
            | 
            us facets foyer usParentFormals 
              findFirst: [|:f| f slot isMethod not && [f slot contents = self]]
              IfPresent: true 
               IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         longKey = ( |
            | [xxx]. printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         name = ( |
            | 
            true ifTrue: [
              us facets foyer nameOf: self IfFound: [|:n| n] IfAbsent: 'An anonymous facet'
            ]
            False: [
             us facets foyer usParentFormals 
              findFirst: [|:f|    (f slot isDataSlotContaining: self) 
                              && [(f slot isAnActivationSlot ) not]]
              IfPresent: [|:f| 'The ', f slot selector] 
               IfAbsent: 'An anonymous facet'
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         nameOf: aFacet IfFound: fb IfAbsent: ab = ( |
            | 
            parentSlots findFirst: [|:s| s isAnActivationSlot not && [s isDataSlotContaining: aFacet ]]
                        IfPresent: [|:s| ^ fb value: 'The ', s selector ]
                         IfAbsent: [ ].
            usParentFacets do: [|:f|  
              f nameOf: aFacet IfFound: [|:n| ^ fb value: n ] IfAbsent: [] 
            ].
            ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         nameSize: n = ( |
             r.
            | 
            r: name.
            r size <= n  ifTrue: [^r].
            r copyAtMostWithEllipsis: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         newChild = ( |
            | copyRemoveAll addUsParentFacet: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         parentSlots = ( |
            | 
            usParentFormals mapBy: [|:f| f slot] Into: set copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: hack primitives\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         primitiveAddContextFacetNamed: n Value: v = ( |
             name.
            | 
            [qqq]. "Not the best way to do this? -- dmu 6/10/13"
            name: n value canonicalize.
            value arguments at: name Put: v.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         printString = ( |
            | 
            name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            usParentFormals removeAll.
            usParentFacets  removeAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic us\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         removeParentFormal: aFormal = ( |
            | 
            usParentFormals remove: aFormal IfAbsent: []. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         vaporize = ( |
            | 
            usParentFormals do: [|:f| f forgetChildFacet: self].
            removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         wellKnownPrefix = ( |
            | 'The ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         usParentFormals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractFormalDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast declaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstractFormalDeclaration.

CopyDowns:
globals us ast declaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us facet)'
        
         childFacet <- bootstrap stub -> 'globals' -> 'us' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstractFormalDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForParseTree: pt DispatchedOn: childFacet = ( |
            | (copyForParseTree: pt) childFacet: childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingAddNewNameToIncomingContext: ctx = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiver = ( |
            | 
            name = us ast receiverFormal name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         localName = ( |
            | name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotIn: ctx IsForObject: isForO IfNLR: nlrBlock = ( |
            | 
            "handled by:" [makeSlotsForArgs].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         name = ( |
            | 'anon').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         sourceString = ( |
            | statePrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            localName, '<<', childFacet printString, '>>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         expression = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast expression.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast expression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForExpressionParseTree: pt IfFail: fb = ( |
            | 
            case
              if: (pt isUsReturn        )  Then: [  us ast return copyForReturnParseTree: pt IfFail: fb ]
              If: [pt isUsMessageSend   ]  Then: [ (pt firstSubnode isUsImplicitSelf 
                                                      ifTrue: [us ast     implicitSelfSend] 
                                                       False: [us ast explicitReceiverSend]
                                                   )  copyForMessageSendParseTree: pt IfFail: fb]
              If: [pt isUsConstant      ]  Then: [  us ast literal copyForConstantParseTree: pt IfFail: fb]
              If: [pt isUsObject        ]  Then: [  us ast object copyForObjectParseTree: pt IfFail: fb]
              If: [pt isUsMethod        ]  Then: [  error: 'cannot have method expressions in method bodies and method ASTs must be created from whole slot parseNode']
              If: [pt isUsBlock         ]  Then: [  us ast freeBlock copyForBlockParseTree: pt IfFail: fb]
              If: [pt isUsReceiver      ]  Then: [  us ast implicitSelfSend copyForMessageSendParseTree: pt IfFail: fb ]
              If: [pt isUsPop           ]  Then: [  us ast expression copyForExpressionParseTree: pt expression IfFail: fb ]
              If: [pt isUsSubexpression ]  Then: [  us ast expressions copyForSubexpressionParseTree: pt IfFail: fb ]
                                        Else: [  fb value: pt source, ':  You are not Morg; your are not Eymorg. What are you?']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractMessageSend = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast expression copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstractMessageSend.

CopyDowns:
globals us ast expression. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstractMessageSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addPositionalArgument: a = ( |
            | 
            positionalArguments add: a. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy positionalArguments: positionalArguments copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForMessageSendParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initMessageSendIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         copyForParseTree: pt = ( |
            | (resend.copyForParseTree: pt) selector: pt selectorString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateAllOfMyArgumentsIntoANewContextFrom: aContext IfNLR: nlrBlock = ( |
             r.
            | 
            r: aContext copy.
            (evaluateAllOfMyPositionalArgumentsIn: aContext IfNLR: nlrBlock) asVector  
              do: [|:a. :i|
                r positionalFacetAt: i succ Put: a
              ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateAllOfMyPositionalArgumentsIn: aContext IfNLR: nlrBlock = ( |
            | 
            positionalArguments copyMappedBy: [|:a| a evaluateInContext: aContext IfNLR: nlrBlock]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateForContextWithArguments: newContext = ( |
            | 
            us operations send: selector ToContext: newContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             c.
            | 
            [qqq "hack for _ThisContext"].
            selector = '_ThisContext' ifTrue: [^ (us proxyFacet copy value: ctx) addUsParentFacet: us facets foyer].

            c:  evaluateAllOfMyArgumentsIntoANewContextFrom: ctx copy IfNLR: nlrBlock.
            setLookupStartForSelfOf: c.
            evaluateForContextWithArguments: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initMessageSendIfFail: fb = ( |
            | 
            parseTree arguments do: [|:apt|
              addPositionalArgument: us ast expression copyForExpressionParseTree: apt IfFail: [|:e| ^ fb value: e]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isSelfImplicit = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         setLookupStartForSelfOf: ctx = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: abstract and formless\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         sequence = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast sequence.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         elements <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast sequence parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         add: x = ( |
            | 
            ensureNotPrototype.
            elements add: x. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asList = ( |
            | elements asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         asSet = ( |
            | elements asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         asVector = ( |
            | elements asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy elements: elements copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         copyMappedBy: blk = ( |
            | elements copyMappedBy: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         copyRemoveAll = ( |
            | copy elements: elements copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         do: blk = ( |
            | elements do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         findFirst: testBlk IfPresent: presentBlk IfAbsent: absentBlk = ( |
            | 
            elements findFirst: testBlk IfPresent: presentBlk IfAbsent: absentBlk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         isEmpty = ( |
            | elements isEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            elements reduceWith: [
              |:a. :b| 
              (a asMirror isReflecteeString ifTrue: a False: [a statePrintString]), 
              ', ', b statePrintString
            ]
            IfSingleton: [|:a| a statePrintString]
            IfEmpty: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'arguments' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'arguments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast arguments.

CopyDowns:
globals us ast sequence. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast arguments)'
        
         positionalArguments <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'arguments' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractNonformalDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast declaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstractNonformalDeclaration.

CopyDowns:
globals us ast declaration. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast abstractNonformalDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addImplicitFormalsFromGuardToSlot: aSlot = ( |
             efn.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            guard ifNil: [^ self].
            efn: explicitFormalNames asSet.
            guard exprASTsByName do: [|:exprAST. :name. |
              (efn includes: name)  ifFalse: [
                aSlot addFormal:
                  (((us formal 
                      copyForSlot: aSlot) 
                       formalName: name) 
                       isImplicit: true) 
                       dispatchOn: guard facetForName: name
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotParseTree: pt Annotation: a Index: i IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initSlotWithAnnotation: a IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         explicitFormalNames = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday]. childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initNameIfFail: fb = ( |
            | 
            name: parseTree selectorString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotWithAnnotation: a IfFail: fb = ( |
             b.
            | 
            b: [|:e| ^ fb value: e].
            initGuardWithAnnotation: a IfFail: b.
            initNameIfFail: b.
            initAssignabilityIfFail: b.
            initContentsIfFail: b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isLocal = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'arguments' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'arguments' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast arguments parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'arguments' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         boundBlock = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'parseTree' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast boundBlock.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent parseTree.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         formals = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast formals.

CopyDowns:
globals us ast sequence. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast formals)'
        
         formals <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         expressions = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast expressions.

CopyDowns:
globals us ast sequence. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast expressions parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addExpressionsForExpressionSeries: parseTree IfFail: fb = ( |
            | 
            parseTree doSubnodes: [|:e| 
              add:  us ast expression copyForExpressionParseTree: e IfFail: [|:ee| ^ fb value: ee] 
            ].
            parseTree: parseTree.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSubexpressionParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initSubexpressionIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             r.
            | 
            elements do: [|:e| r: e evaluateInContext: ctx IfNLR: nlrBlock].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initSubexpressionIfFail: fb = ( |
            | 
            addExpressionsForExpressionSeries: (parseTree expressionSeriesIfFail: [|:e| ^ fb value: e]) IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast formals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addReceiverFacet: rf = ( |
            | 
            [receiverIfPresent: false IfAbsent: true] assert.
            uncheckedAddReceiverFacet: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addReceiverFacetIfAbsent: rf = ( |
            | 
            receiverIfPresent: [] IfAbsent: [ uncheckedAddReceiverFacet: rf ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverIfPresent: pb IfAbsent: ab = ( |
            | 
            findFirst: [|:f| f isReceiver] IfPresent: [|:f| pb value: f] IfAbsent: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         setReceiverFacet: rf = ( |
            | 
            receiverIfPresent: [|:f| elements remove: f] IfAbsent: [].
            uncheckedAddReceiverFacet: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         uncheckedAddReceiverFacet: rf = ( |
            | 
            add: us ast receiverFormal copyDispatchedOn: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast methodBlockOrObject parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addExplicitArgumentAndLocalASTsToMeFromSlotListParseTree: sl IfFail: fb = ( |
             formalIndex <- 1.
            | 
            sl slotsWithAnnotationsDo: [|:slotParseTree. :a. dcl|
              dcl: us ast declaration copyForSlotParseTree: slotParseTree Annotation: a FormalIndex: formalIndex IfFail: [|:e| ^ fb value: e].
              dcl isPositionalFormal ifTrue: [formalIndex: formalIndex succ].
              declarations add: dcl.
              dcl isPositionalFormal  ifTrue: [ 
                canHaveArguments ifFalse: [^ fb value: 'cannot have arguments'].
                addFormal: dcl 
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addExpressionsIfPresentInBodyParseTree: body IfFail: fb = ( |
            | 
            body expressionSeriesIfPresent: [|:es|
              es hasSubnodes ifTrue: [
                cannotHaveExpressions ifTrue: [error: 'should not have expressions'].
                expressions addExpressionsForExpressionSeries: es IfFail: [|:e| ^ fb value: e]
              ].
            ] 
            IfAbsent: [].
            mustHaveExpressions  &&  [expressions isEmpty]
              ifTrue: [^ fb value: 'no expressions'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         cannotHaveExpressions = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy declarations: declarations copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForEvaluatorContentsParseTree: parseTree IfFail: fb = ( |
            | (copyForParseTree: parseTree) initSlotListAndExpressionsForBody: parseTree IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initForSlotListParseTree: pt IfFail: fb = ( |
            | 
            addExplicitArgumentAndLocalASTsToMeFromSlotListParseTree: pt IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initMethodBlockOrObjectIfFail: fb = ( |
            | 
            parseTree objectBlockOrMethodBodyIfPresent: [|:b|
              initSlotListAndExpressionsForBody: b IfFail: fb
            ]
            IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotListAndExpressionsForBody: parseTree IfFail: fb = ( |
            | 
              initSlotListIfPresentInBodyParseTree: parseTree IfFail: [|:e| ^ fb value: e].
            addExpressionsIfPresentInBodyParseTree: parseTree IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotListIfPresentInBodyParseTree: pt IfFail: fb = ( |
            | 
            pt slotListIfPresent: [|:sl. | 
              initForSlotListParseTree: sl IfFail: [|:e| ^ fb value: e]
            ] 
            IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         mustHaveExpressions = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         declarations = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast declarations.

CopyDowns:
globals us ast sequence. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast declarations parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         locals = ( |
            | asList copyFilteredBy: [|:ast| ast isLocal]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         methodBlockOrObject = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast methodBlockOrObject.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast declarations)'
        
         declarations <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'declarations' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         methodOrFreeBlock = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast methodBlockOrObject copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast methodOrFreeBlock.

CopyDowns:
globals us ast methodBlockOrObject. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast expressions)'
        
         expressions <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expressions' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast formals)'
        
         formals <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'formals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast methodOrFreeBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addFormal: aFormal = ( |
            | formals add: aFormal. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (resend.copy expressions: expressions copy) formals: formals copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: i = ( |
            | 
            formals findFirst: [|:f| f isExplicit && [f index = i]]
                    IfPresent: [|:f| ^ f localName]
                     IfAbsent: 'nameForPositionalFormalAt: non-existant').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalDeclarations = ( |
             r.
            | 
            r: declarations asList copyFilteredBy: [|:f| f isPositionalFormal].
            [
              r asVector do: [|:f. :i| [f index pred = i] assert].
              true
            ] assert.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         freeBlock = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast methodOrFreeBlock copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast freeBlock.

CopyDowns:
globals us ast methodOrFreeBlock. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast freeBlock)'
        
         freeBlock <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         homeContext.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         homeNLRBlock.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast boundBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addImplicitFormalsFromGuardToSlot: s = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         contents = ( |
            | freeBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy formals: formals copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForFreeBlock: b HomeContext: ctx HomeNLRBlock: nlrBlock = ( |
            | 
            (((copyRemoveAll freeBlock: b) homeContext: ctx) homeNLRBlock: nlrBlock) initializeFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | 
            ((copy formals: formals copyRemoveAll) freeBlock: nil) homeContext: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         declarations = ( |
            | freeBlock declarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
            | 
            ctx evaluateMethodOrBlockAST: self IfNLR: homeNLRBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         expressions = ( |
            | freeBlock expressions).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForNewActivation: ctx = ( |
            | 
            ctx activationFacet newChild).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         guard = bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeFormals = ( |
            | 
            formals: freeBlock formals copy setReceiverFacet:  (us facets getWellKnownFacet: 'protoBlock') copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         lexicallyScopedImplicitArgumentNamesDo: blk = ( |
            | 
            blk value: us context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parseTree = ( |
            | freeBlock parseTree).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceLexicallyScopedImplicitArgumentsIn: newCtx = ( |
            | 
            lexicallyScopedImplicitArgumentNamesDo: [|:n|
              newCtx copyArgumentNamed: n FromContext: homeContext
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         selector = ( |
            | freeBlock selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         dataDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstractNonformalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast dataDeclaration.

CopyDowns:
globals us ast abstractNonformalDeclaration. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (false)'
        
         isAssignable <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast dataDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n = ( |
            | copy name: n canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'Comment: Not a method, cannot have explicit formals\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         explicitFormalNames = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initAssignabilityIfFail: fb = ( |
            | 
            isAssignable: parseTree isUsAssignableSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initContentsIfFail: fb = ( |
            | 
            contents: 
              parseTree assignmentAndValueIfPresent: [|:a. :v|
                us ast expression copyForExpressionParseTree: v IfFail: [|:e| ^ fb value: e]
              ]
              IfAbsent: [ 
                us ast implicitSelfSend copySelector: us facets nilName 
              ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initNameIfFail: fb = ( |
            | 
            parseTree nameNode isUsUnarySlotName ifFalse: [
              ^ fb value: 'expected unary slot name instead of "', in source, '"'
            ].
            resend.initNameIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotIn: ctx IsForObject: isForO IfNLR: nlrBlock = ( |
            | 
            ctx makeSlotForDataAST: self IsForObject: isForO IfNLR: nlrBlock.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         explicitReceiverSend = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast explicitReceiverSend.

CopyDowns:
globals us ast abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast explicitReceiverSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateAllOfMyArgumentsIntoANewContextFrom: aContext IfNLR: nlrBlock = ( |
             r.
             rcv.
            | 
            rcv: receiverAST evaluateInContext: aContext IfNLR: nlrBlock.
            r: resend.evaluateAllOfMyArgumentsIntoANewContextFrom: aContext IfNLR: nlrBlock.
            r receiverFacet: rcv.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initMessageSendIfFail: fb = ( |
            | 
            resend.initMessageSendIfFail: [|:e| ^ fb value: e].
            receiverAST: us ast expression copyForExpressionParseTree: parseTree receiver IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         isSelfImplicit = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         setLookupStartForSelfOf: ctx = ( |
            | 
            ctx lookupStartForSelf: ctx receiverFacet.  self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitSelfSend = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast implicitSelfSend.

CopyDowns:
globals us ast abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'explicitReceiverSend' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast implicitSelfSend)'
        
         receiverAST <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast freeBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForBlockParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initBlockIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             bb.
            | 
            bb: us ast boundBlock copyForFreeBlock: self HomeContext: ctx HomeNLRBlock: nlrBlock.
            (us slots methodSlot copyForAST: bb) receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initBlockIfFail: fb = ( |
            | 
            initMethodBlockOrObjectIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         selector = ( |
             c.
            | 
            c: positionalDeclarations size.
            case
              if:  ( c = 0 )  Then:  'value'
              If:  [ c = 1 ]  Then:  'value:'
              If:  [ c = 2 ]  Then:  'value:With:'
              Else: [|r <- 'value:'|
                c pred do: [r: r & 'With:'].
                r
              ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast implicitSelfSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel = ( |
            | 
            "hack for initLocalDeclarationSlotWithAnnotation:IfFail: when no initialization"
            (copy parseTree: usParser parseNodes node) selector: sel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isSelfImplicit = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'implicitSelfSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         setLookupStartForSelfOf: ctx = ( |
            | 
            ctx lookupStartForSelf: ctx activationFacet.  self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         literal = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast expression copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast literal.

CopyDowns:
globals us ast expression. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast literal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForConstantParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initConstantIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initConstantIfFail: fb = ( |
            | value: parseTree value asUsObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'expression' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'literal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us facet)'
        
         value <- bootstrap stub -> 'globals' -> 'us' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         method = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast methodOrFreeBlock copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast method.

CopyDowns:
globals us ast methodOrFreeBlock. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast method parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         addPositionalFormalAt: n Named: name ParseTree: pt DispatchedOn: childFacet = ( |
            | 
            addFormal:  us ast positionalFormalDeclaration copyForPositionalFormalSlotParseTree: pt Index: n Named: name DispatchedOn: childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addReceiverDispatchedOn: childFacet ParseTree: pt = ( |
            | addFormal: us ast receiverFormal copyForParseTree: pt DispatchedOn: childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addReceiverFacetIfAbsent: rf = ( |
            | 
            [qqqq].
            formals addReceiverFacetIfAbsent: rf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForMethodDefinitionParseTree: parseTree Guard: g IfFail: fb = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            (
              copyForParseTree: parseTree assignmentAndValueIfPresent: [|:a. :method| method] 
                                                          IfAbsent: [^ fb value: 'methodDefinition must have a method in it']
            )
              initForGuard: g Formals: parseTree formals IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
            | 
            ctx evaluateMethodOrBlockAST: self IfNLR: [|:rr| "must do return here" ^ rr]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionsSourceString = ( |
            | 
            expressions sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForNewActivation: ctx = ( |
            | 
            ctx facetForNewMethodActivation: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initForGuard: guard Formals: formalsFromSlotDeclaration IfFail: fb = ( |
             method.
             selectorWithOrWithoutFormals.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            initMethodBlockOrObjectIfFail: [|:e| ^ fb value: e].

            formalsFromSlotDeclaration isEmpty not  &&  [formals isEmpty not]  ifTrue: [
              ^ fb value: 'formals cannot be declared in both slot list and with selector'.
            ].

            guard receiverFacetAndParseTreeIfPresent: [|:rf. :pt|
              addReceiverDispatchedOn: rf ParseTree: pt.
            ].


            formalsFromSlotDeclaration asVector do: [|:formal. :i | 
              addPositionalFormalAt: i succ 
                              Named: formal value 
                          ParseTree: formal
                       DispatchedOn: guard facetForName: formal value
            ].

            [expressions isEmpty not] assert. "should have parsed to an object if no exprs"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         localDeclarations = ( |
            | 
            declarations locals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         mustHaveExpressions = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceLexicallyScopedImplicitArgumentsIn: newCtx = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         methodDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'contents' From:
             bootstrap remove: 'parent' From:
             globals us ast abstractNonformalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast methodDeclaration.

CopyDowns:
globals us ast abstractNonformalDeclaration. copy 
SlotsToOmit: contents parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast method copy)'
        
         contents <- us ast method copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast methodDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAndEvaluateParseTreeForEvaluatorContents: parseTree Receiver: aFacet ReportErrorsTo: aResultReporter = ( |
             ast.
             r.
             slot.
            | 
            ast: copyForEvaluatorContentsParseTree: parseTree 
                                            IfFail: [|:x| 
                       aResultReporter reportError: (((traits string parseErrorPt copy start: 0@0) end: parseTree source size@0) message: x)
                                             Title: 'error converting parseTree to AST'.
                                                     ^ aFacet].
            ast contents addReceiverFacetIfAbsent: aFacet. [unifyDataAndMethodSlotsFormalsSomeday].
            slot: us slots methodSlot copyForAST: ast.
            r: slot evaluateInContext:  us dispatchContextForReceiver: aFacet.
            slot vaporize.
            aResultReporter result: r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForEvaluatorContentsParseTree: parseTree IfFail: fb = ( |
            | (copyForParseTree: parseTree) initFromParseTreeForEvaluatorContents: parseTree IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReplacingMethodBodyFromParseTree: newBodyParseTree IfFail: fb = ( |
            | 
            (copyForParseTree: parseTree copy replaceMethodBodyWith: newBodyParseTree IfFail: [|:e| ^ fb value: e])
               initContentsIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
            | 
            contents evaluateInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         explicitFormalNames = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            contents formals copyMappedBy: [|:f| f localName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionsSourceString = ( |
            | contents expressionsSourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         formals = ( |
            | contents formals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initAssignabilityIfFail: fb = ( |
            | 
            parseTree isUsAssignableSlot ifTrue: [fb value: 'methods cannot be assignable']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initContentsIfFail: fb = ( |
            | 
            parseTree assignmentAndValueIfPresent: [|:a. :v|
              contents: us ast method copyForMethodDefinitionParseTree: parseTree Guard: guard IfFail: [|:e| ^ fb value: e]
            ]
            IfAbsent: [fb value: 'methodDeclaration must declare something']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initFromParseTreeForEvaluatorContents: parseTree IfFail: fb = ( |
            | 
            name: 'do_it'.
            contents: us ast method copyForEvaluatorContentsParseTree: parseTree IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         localDeclarations = ( |
            | 
            contents localDeclarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotIn: ctx IsForObject: isForO IfNLR: nlrBlock = ( |
            | 
            contents addReceiverFacetIfAbsent: ctx activationFacet.
            us slots methodSlot copyForAST: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: i = ( |
            | contents nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         object = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast methodBlockOrObject copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast object.

CopyDowns:
globals us ast methodBlockOrObject. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast object parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         cannotHaveExpressions = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAndEvaluateParseTreeForEvaluatorContents: parseTree Receiver: aFacet ReportErrorsTo: aResultReporter = ( |
             ast.
            | 
            ast: copyForEvaluatorContentsParseTree: parseTree IfFail: [|:x|  aResultReporter syntaxError: x. ^ aFacet].
            aResultReporter result: ast evaluateInContext: us dispatchContextForReceiver: aFacet.
            aResultReporter result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForObjectParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initObjectIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
            | evaluateInContext: ctx IfNLR: [|:r|r]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             r.
            | 
            r: us facet copy.
            (ctx copy activationFacet: r) makeSlotsForDclsFrom: declarations IsForObject: true IfNLR: ["must do return here" ^ r].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initObjectIfFail: fb = ( |
            | initMethodBlockOrObjectIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         pop = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast pop.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         expression.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast pop parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForPopParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initPopIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            "return expression value since period is optional"
            expression evaluateInContext: ctx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initPopIfFail: fb = ( |
            | expression: us ast expresssion copyForExpressionParseTree: parseTree expression IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFormalDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstractFormalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast positionalFormalDeclaration.

CopyDowns:
globals us ast abstractFormalDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (0)'
        
         index <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         localName <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast positionalFormalDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForArgumentSlotParseTree: pt Annotation: a Index: i IfFail: fb = ( |
            | (copyForParseTree: pt DispatchedOn: us facets foyer) initArgumentSlotWithAnnotation: a Index: i IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForPositionalFormalSlotParseTree: pt Index: i Named: n DispatchedOn: childFacet = ( |
            | 
            ( (copyForParseTree: pt DispatchedOn: childFacet) index: i) localName: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingAddNewNameToIncomingContext: ctx = ( |
            | 
            ctx replaceNameOfPositionalFacetAt: index With: localName.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initArgumentSlotWithAnnotation: a Index: i IfFail: fb = ( |
            | 
            index: i.
            localName: parseTree selectorString.
            i > 0  ifFalse: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositionalFormal = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | us context positionalFacetNameAt: index).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         sourceString = ( |
            | statePrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFormal = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstractFormalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast receiverFormal.

CopyDowns:
globals us ast abstractFormalDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast receiverFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyDispatchedOn: rf = ( |
            | copyForParseTree: usParser parseNodes node DispatchedOn: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingAddNewNameToIncomingContext: ctx = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         name = ( |
            | us context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         return = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast return.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         expression.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast return parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForReturnParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initReturnIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            nlrBlock value: expression evaluateInContext: ctx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initReturnIfFail: fb = ( |
            | 
            expression: us ast expression copyForExpressionParseTree: parseTree expression IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slotGuard = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast slotGuard.

CopyDowns:
globals us ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         exprASTsByName <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ast slotGuard parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addFromSlotParseTree: pt IfFail: fb = ( |
             eAST.
             n.
            | 
                pt nameNode isUsUnarySlotName ifFalse: [fb value: 'context facet must be unary name'].
            pt hasGuard ifTrue: [fb value: 'My mind is blown: guards on guards?!'].
            n: pt nameNode selectorString canonicalize.
            pt assignmentAndValueIfPresent: [|:a. :v|
              a isUsConstantSlotAssignment ifFalse: [^ fb value: 'separate guard name and guard value with an equals sign'].
              eAST: us ast expression copyForExpressionParseTree: v IfFail: [|:e| ^ fb value: e].
            ] IfAbsent: [ fb value: 'Guard named: ', n, ' has no value!'].
            (exprASTsByName includesKey: n) ifTrue: [^ fb value: n, ' is already present'].
            exprASTsByName at: n Put: eAST.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy exprASTsByName: exprASTsByName copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotGuardParseTree: pt IfFail: fb = ( |
            | (copyForParseTree: pt) initSlotGuardIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForName: n = ( |
            | 
            facetForName: n IfNLR: [error: 'should not have initializer for this kind of thing']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForName: n IfNLR: nlrBlock = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday]. "pass in context"
            (exprASTsByName at: n IfAbsent: [^us facets foyer])
              evaluateInContext: (us dispatchContextForReceiver: us facets foyer) IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         hasReceiverFacet = ( |
            | 
            receiverFacetAndParseTreeIfPresent: [^ true]. false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotGuardIfFail: fb = ( |
            | 
            parseTree slotsDo: [|:slotParseTree| 
              addFromSlotParseTree: slotParseTree IfFail: [|:e| ^ fb value: e]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacetAndParseTreeIfPresent: pb = ( |
             ast.
             n.
            | 
            n: us ast receiverFormal name.
            ast: exprASTsByName at: n IfAbsent: [^ self].
            pb value: (facetForName: n) With: ast parseTree).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         baseContext = ( |
            | 
            primitiveBaseContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         baseContext: aContext = ( |
            | 
            primitiveBaseContext: aContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         context = ( |
            | 
            false ifTrue: [ receiverChildActivationContext]
                   False: [    orthogonalActivationContext]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         dispatchContextForReceiver: aFacet = ( |
            | 
            baseContext copy receiverFacet: aFacet).
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
        
         addSelfSlotForFacetNamed: facetName Containing: facet = ( |
            | 
            [facetName = foyerName] assert.
            foyerName, ':' sendTo: self With: facet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addWellKnownFacetNamed: facetName = ( |
            | 
            addWellKnownFacetNamed: facetName Copying: us facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addWellKnownFacetNamed: facetName Copying: facetProto = ( |
             f.
            | 
            f: facetProto copyRemoveAll.
            facetName = foyerName  ifTrue: [addSelfSlotForFacetNamed: facetName Containing: f].
            us slots dataSlot copySelector: facetName ReceiverFacet: us facets foyer Constant: f.
            facetName = constantName  ifTrue: [ makeConstant: foyerName. makeConstant: constantName ].
            f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fCategory: constant slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         constant = ( |
            | 
            getWellKnownFacet: constantName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         constantName = ( |
            | 'constant').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         getWellKnownFacet: name = ( |
            | 
            foyer getContentsOfWellKnownDataSlotNamed: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         includesWellKnownFacetNamed: n = ( |
            | 
            foyer getContentsOfWellKnownDataSlotNamed: n IfFail: [^ false].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fCategory: constant slots\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         makeConstant: name = ( |
             f.
            | 
            f: (foyer getWellKnownSlotNamed: name) explicitFormals first.
            [f isDispatchedOn: us facets foyer] assert.
            f dispatchOn: constant InsteadOf: us facets foyer.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         nilName = 'nil'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         protoBlockName = 'protoBlock'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)\x7fVisibility: public'
        
         foyer <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         foyerName = ( |
            | 'foyer').
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
         'Category: ordering\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         < x = ( |
            | 
            compare: x IfLess: true Equal: false Greater: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         = x = ( |
            | 
            == x  ifTrue: [^ true].
            slot = x slot  ifFalse: [^ false].
            compare: x IfLess: false Equal: true Greater: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         addParentLinksToMyChildFacets = ( |
            | 
            childFacets do: [|:f| f addUsParentFormal: self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         category = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         compare: x IfLess: lt Equal: e Greater: g = ( |
             cmp.
            | 

            slot = x slot  ifFalse: [error: 'incomparable'].

            cmp: [|:a. :b| a compare: b IfLess: [^ lt value] Equal: [] Greater: [^g value]].

            cmp value: isExplicit  asInteger  With: x isExplicit asInteger.
            cmp value: isReceiver  asInteger  With: x isReceiver asInteger.
            cmp value: name                      With: x name.

            e value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy childFacets: childFacets copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAST: formalDecl Slot: s = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            (copyForSlot: s) initForAST: formalDecl).
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
            (copyForSlot: s) dispatchOn: newFacet InsteadOf: oldFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchOn: aFacet = ( |
            | 
            [(mySlot selector = 'deposit' ) && [aFacet != (us facets getWellKnownFacet: 'abstractNumber')] ifTrue: [halt].].
            childFacets add: aFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchOn: newFacet InsteadOf: oldFacet = ( |
            | 
            childFacets remove: oldFacet IfAbsent: [ ^ addParentLinksToMyChildFacets].
            dispatchOn: newFacet.
            oldFacet removeParentFormal: self.
            addParentLinksToMyChildFacets.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         exists = ( |
            | 
            nil == slot ifTrue: [^ false].
            slot formals includes: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         hash = ( |
            | 
            isExplicit identityHash  ^^  name hash  ^^  slot hash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: intiailzing from AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: formalDecl = ( |
            | 
            formalName: formalDecl name.
            dispatchOn: formalDecl childFacet.
            isExplicit: formalDecl isExplicit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignable = ( |
            | 
            false).
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
        
         isExplicit = ( |
            | isImplicit not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: implicit or explicit\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isExplicit: aBool = ( |
            | isImplicit aBool not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isFake = bootstrap stub -> 'globals' -> 'false' -> ().
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
         'Category: testing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isNotPositional = ( |
            | isPositional not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isOptional = ( |
            | slot isFormalOptional: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isParent = ( |
            | isDispatched).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositional = ( |
            | us context isPositionalName: formalName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositionalAt: i = ( |
            | 
            [xxx]. "should not be by name: may break someday"
            formalName = (us context positionalFacetNameAt: i)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiver = ( |
            | formalName = us context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            isImplicit ifTrue: ['(', name, ')'] False: [name]).
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

            (nil == mySlot ifTrue: '' False: [ mySlot selector, ' as '] ),
            formalName).
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
        
         parent* = bootstrap stub -> 'traits' -> 'orderedClonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalIndex = ( |
            | isPositional ifTrue: [us context indexOfPositionalName: formalName] False: -1).
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         value = ( |
            | 
            childFacets isEmpty ifTrue: [^ us facets foyer].
            childFacets first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         vaporize = ( |
            | 
            mySlot vaporize.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         operations = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us operations.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsEvaluatorContents: aString Receiver: aFacet = ( |
             rr.
            | 
            rr: ui2ResultReporter copy event: process this birthEvent.
            evaluateStringAsEvaluatorContents: aString  Receiver: aFacet  ReportErrorsTo: rr.
            rr result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsEvaluatorContents: aString Receiver: aFacet ReportErrorsTo: aResultReporter = ( |
             parseTree.
             r.
            | 

            parseTree: usParser objectBlockOrMethodBodyParser  
                         copyParseSource:  aString 
                                  IfFail:  [|:x|  ^ aResultReporter syntaxError: x].

            r:  (parseTree hasExpressions  ifTrue: [us ast methodDeclaration]  False: [us ast object])
                  copyAndEvaluateParseTreeForEvaluatorContents: parseTree
                                                      Receiver: aFacet
                                                ReportErrorsTo: aResultReporter.
            "aResultReporter result will be nil if error happened"
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsNewMethodContents: aString OldSlot: oldSlot ReportErrorsTo: aResultReporter = ( |
             ast.
             astProto.
             errPt.
             parseTree.
             slot.
            | 
            parseTree: usParser objectBlockOrMethodBodyParser  
                         copyParseSource:  aString 
                                  IfFail:  [|:x|  ^ aResultReporter syntaxError: x].


            errPt: (traits string parseErrorPt copy start: 0@0) 
                                                      end: aString size@0.

            ast: oldSlot ast copyReplacingMethodBodyFromParseTree: parseTree 
                                                           IfFail: [|:x| aResultReporter syntaxError: x. ^ oldSlot].


            oldSlot ast: ast. "or initForAST:??"

            aResultReporter result: oldSlot.

            oldSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsSlotDeclaration: aString OldSlot: oldSlot ReportErrorsTo: aResultReporter = ( |
             ast.
             errPt.
             parseTree.
             slot.
             slotProto.
            | 
            parseTree: usParser slotParser copyParseSource: aString
                                                    IfFail: [|:x|  aResultReporter syntaxError: x.  
                                                                   ^ oldSlot].

            slotProto: parseTree isUsDataSlot ifTrue: [us slots   dataSlot] 
                                               False: [us slots methodSlot].

            errPt: (traits string parseErrorPt copy start: 0@0) 
                                                      end: aString size@0.
            ast: us ast declaration 
                  copyForSlotParseTree: parseTree
                            Annotation: ''
                                IfFail: [|:x|  aResultReporter reportError: (errPt message: x)
                                                                     Title: 'error converting parseTree to AST'.
                                               ^ oldSlot
                                        ].

            parseTree isUsDataSlot || [oldSlot isNil]  ifFalse: [ 
              ast contents addReceiverFacetIfAbsent: oldSlot receiverFacet 
            ].
            [harold halt].
            slot: slotProto copyForAST: ast. "slot will be nil if NLR"

            aResultReporter result: slot.
            oldSlot ifNotNil: [oldSlot vaporize].
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         send: selector ToContext: aContext = ( |
            | 
            ('_' isPrefixOf: selector) 
              ifTrue: [   sendPrimitive: selector ToContext: aContext]
               False: [sendNonPrimitive: selector ToContext: aContext]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         sendNonPrimitive: selector ToContext: aContext = ( |
             ctx.
             slot.
            | 
            ctx: aContext copy.
            slot: ctx lookup: selector.
            slot evaluateInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         sendPrimitive: selector ToContext: ctx = ( |
             args.
             r.
             result.
             s.
             translate <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
               r: ctx receiverFacet.
            args: ctx positionalFacets.
            s: selector copyWithoutFirst.
            s first = '_'  ifTrue: [s: s copyWithoutFirst. translate: true].
            [qqq].
            s: s uncapitalize.
            translate ifTrue: [
              r: r asSelfObject.
              args: args copyMappedBy: [|:a| a asSelfObject].
            ].
            result: s sendTo: r WithArguments: args.
            translate ifTrue: [ result: result asUsObject].
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         orthogonalActivationContext = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us abstractContext copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us orthogonalActivationContext.

CopyDowns:
globals us abstractContext. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us orthogonalActivationContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         facetForNewMethodActivation: aMethodOrBlockAST = ( |
            | 
            us facet copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         localReceiverFacet: isForObject = ( |
            | 
            isForObject ifTrue: [activationFacet] False: [receiverFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupStartForFacet: f = ( |
            | f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupStartForSelf: x = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotForDataNamed: name IsAssignable: isA Containing: facet IsForObject: isForO Guard: g = ( |
             s.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            "receiver is self, but uses an extra activation facet"
            s: resend.makeSlotForDataNamed: name 
                              IsAssignable: isA
                                Containing: facet
                               IsForObject: isForO
                                     Guard: g.
            isForO  ||  [g isNotNil  &&  [g hasReceiverFacet]] ifFalse: [
              s addFormal: (((us formal copyForSlot: s) 
                                         formalName: us context activationName) 
                                         isImplicit: true) 
                                         dispatchOn: activationFacet.
            ].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: InitializeToExpression: (us context)\x7fVisibility: private'
        
         primitiveBaseContext <- bootstrap stub -> 'globals' -> 'us' -> 'orthogonalActivationContext' -> ().
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us proxyFacet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asSelfObject = ( |
            | 
            value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyMySelfObject = ( |
            | 
            value: value copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | asSelfObject printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | value printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'proxyFacet' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         value.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         receiverChildActivationContext = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us abstractContext copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us receiverChildActivationContext.

CopyDowns:
globals us abstractContext. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us facet)'
        
         lookupStartForSelf <- bootstrap stub -> 'globals' -> 'us' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us receiverChildActivationContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         facetForNewMethodActivation: aMethodOrBlockAST = ( |
            | 
            receiverFacet newChild).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         localReceiverFacet: isForObject = ( |
            | 
            activationFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> 'parent' -> () From: ( | {
         'Category: lookup\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupStartForFacet: f = ( |
            | 
            f = receiverFacet  ifTrue: [ lookupStartForSelf ]  False: [f]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'receiverChildActivationContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'abstractContext' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         setDefaultCoordinateOfDimension: dimName To: defaultFacet = ( |
            | 
            baseContext arguments at: dimName canonicalize Put: defaultFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slots = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractSlot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots abstractSlot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'Comment: not used yet\x7fModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast abstractNonformalDeclaration)'
        
         ast <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'abstractNonformalDeclaration' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         formals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots abstractSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         activationFacet = ( |
            | 
            facetNamed: us context activationName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         areAllDispatchedFormalsPresentIn: namesOfFormalsIInheritFrom IsAssignment: isA = ( |
             nameSet.
            | 
            nameSet: namesOfFormalsIInheritFrom asSet.
            [harold hack]. [(nameSet add: 'worldRegion').  add: 'dimension'].
            dispatchedNames findFirst: [|:n|
              (nameSet includes: n) not
            ] IfPresent: false IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         beSupercededBy: aSlot = ( |
             fd.
            | 
            fd: dictionary copyRemoveAll.
            formals do: [|:f| fd at: f name Put: f].
            aSlot formals findFirst: [|:hisF. myF| 
              [hisF childFacets size = 1] assert.
              myF: fd at: hisF name.
              myF isOptional not  &&  [myF childFacets size > 1]
            ]
            IfPresent: [|:ff|
              ff childFacets remove: hisF childFacet first.
            ]
            IfAbsent: [vaporize].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         checkFormals = ( |
            | 
            formals do: [|:f| [f slot = self] assert].
            formals do: [|:f| [f formalName isEmpty not] assert].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         competingSlotsDo: blk = ( |
            | 
            (contextFromFormals: false) lookup: selector FollowParents: false IfNone: [] One: [] Many: [|:slots|
              slots do: [|:s| = s ifFalse: [blk value: s]]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         contextFromFormals: includeOptionals = ( |
             r.
            | 
            r: us context copyRemoveAll.
            formals do: [|:f| 
              [f childFacets size = 1] assert. 
              f isOptional not || includeOptionals  ifTrue: [
                r arguments at: f name 
                           Put: f childFacets first
              ].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            r: resend.copy.
            r formals: formals copyMappedBy: [|:f| f copyForSlot: r].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAST: ast = ( |
            | 
            (copy initForAST: ast) supercedeCompetingSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: s = ( |
            | 
            copy selector: s canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         dispatchedFormals = ( |
            | 
            formals copyFilteredBy: [|:f| f isDispatched]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         dispatchedNames = ( |
            | 
            dispatchedFormals copyMappedBy: [|:f| f formalName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         explicitFormals = ( |
            | 
            formals copyFilteredBy: [|:f| f isExplicit]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facetNamed: fn = ( |
            | 
            formals findFirst: [|:f| (f formalName = fn) && [f isDispatched]] 
                    IfPresent: [|:f| f childFacets first] 
                     IfAbsent: [
                        [ fn canonicalize. true ] assert.
                        [ fn != us context receiverName ] assert. "receiver should always be there"
                        us facets foyer
                    ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         formalsDispatchedOn: aFacet = ( |
            | 
            formals copyFilteredBy: [|:f| f isDispatchedOn: aFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         implicitFormals = ( |
            | 
            formals copyFilteredBy: [|:f| f isImplicit]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: ast = ( |
            | 
            ast: ast. 
            initFormalsFromAST.
            checkFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initFormalsFromAST = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isAnActivationSlot = ( |
            | formals findFirst: [|:f| f isImplicit && [f name = us context activationName]] IfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignable = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isAssignment = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isDataSlotContaining: aFacet = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedOn: aFacet = ( |
            | 
            formals findFirst: [|:f| f isDispatchedOn: aFacet] IfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isFormalOptional: f = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isMethod = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isParent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: equality\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsFacet = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: equality\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlot = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         matchesSelector: s PositionalArgumentCount: n = ( |
            | 
            (selector = s) && [positionalFormalCount = n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         nameAndReceiverString = ( |
            | 
            receiverFacet name, ' >> ', selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         positionalFormalCount = ( |
            | (formals asList copyFilteredBy: [|:f| f isPositional]) size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | 
            facetNamed: us context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: x = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            addFormal: (((us formal copyForSlot: self) formalName: us context receiverName) isImplicit: true) dispatchOn: x.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         statePrintString = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         supercedeCompetingSlots = ( |
            | 
            competingSlotsDo: [|:s| s beSupercededBy: self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         vaporize = ( |
            | 
            formals do: [|:f| f childFacets do: [|:cf| cf removeParentFormal: f]]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         dataSlot = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us slots abstractSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots dataSlot.

CopyDowns:
globals us slots abstractSlot. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us facet)'
        
         contents <- bootstrap stub -> 'globals' -> 'us' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots dataSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addDefaultArgumentFormalIfAbsentIsAssignable: isa = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            formals findFirst: [|:f| f isPositionalAt: 1] IfPresent: [] IfAbsent: [
            addFormal: (((us formal copyForSlot: self)
                           formalName: us context positionalFacetNameAt: 1)
                           isImplicit: false)
                           dispatchOn:  isa 
                                            ifFalse: [ us facets constant] 
                                               True: [ us facets foyer     ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addDefaultFormalsIfAbsentIsAssignable: isa = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            addDefaultReceiverFormalIfAbsent.
            addDefaultArgumentFormalIfAbsentIsAssignable: isa).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         addDefaultReceiverFormalIfAbsent = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            formals findFirst: [|:f| f isReceiver] IfPresent: [] IfAbsent: [
              receiverFacet: us facets foyer
            ].
            self).
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
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         competingSlotsDo: blk = ( |
            | 
            (contextFromFormals: true) lookup: selector, ':' FollowParents: false IfNone: [] One: [] Many: [|:slots|
              slots do: [|:s| = s ifFalse: [blk value: s]]].
            resend.competingSlotsDo: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
             r.
            | 
            r: clone.
            r formals: formals copyMappedBy: [|:f|
              f copyForSlot: r DispatchingOn: newFacet InsteadOf: oldFacet
            ].
            r checkFormals.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel ReceiverFacet: rf ArgumentFacet: af InitialContents: ic = ( |
             r.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            r: copySelector: sel.
            r receiverFacet: rf.
            r addFormal: (((us formal copyForSlot: r)
                            formalName: us context positionalFacetNameAt: 1)
                            isImplicit: false)
                            dispatchOn: af.
            r contents: ic.
            r checkFormals.
            r supercedeCompetingSlots.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel ReceiverFacet: rf Constant: ic = ( |
             constantIfNotBootstrapping.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            constantIfNotBootstrapping: (sel = us facets foyerName) || [sel = us facets constantName]
             ifTrue: [us facets foyer] False: [us facets constant].
            copySelector: sel 
            ReceiverFacet: rf 
            ArgumentFacet: constantIfNotBootstrapping
            InitialContents: ic).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         couldAliasAWellKnownSlot = ( |
            | 
               ( receiverFacet = us facets foyer )
            && [ activationFacet = us facets foyer ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            exists ifFalse: [ ^ '"non-existent slot"' ].
            ast parseTree source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
             pf.
            | 
            pf: ctx positionalFacets.
            pf isEmpty ifTrue: [^ contents].
            contents: pf first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: ast = ( |
            | 
            resend.initForAST: ast.
            "set the initial contents before the selector in case the contents expression uses the same selector"
            initialContents:   
              ast contents evaluateInContext: (us dispatchContextForReceiver: receiverFacet)
                                                        IfNLR: [vaporize. ^ nil].
            selector: ast name. [unifyDataAndMethodSlotsFormalsSomeday].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initFormalsFromAST = ( |
            | 
            ast addImplicitFormalsFromGuardToSlot: self.
            addDefaultFormalsIfAbsentIsAssignable: ast isAssignable).
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
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isDataSlotContaining: aFacet = ( |
            | 
            contents = aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         isFormalOptional: aFormal = ( |
            | 

            aFormal isPositionalAt: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         matchesSelector: s PositionalArgumentCount: n = ( |
            | 
            resend.matchesSelector: ((n = 1) && [s last = ':'] ifFalse: [s] True: [s copyWithoutLast]) PositionalArgumentCount: n = 0 ifTrue: 1 False: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         value = ( |
            | contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         methodSlot = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'ast' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'selector' From:
             globals us slots abstractSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots methodSlot.

CopyDowns:
globals us slots abstractSlot. copy 
SlotsToOmit: ast parent selector.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (us ast methodDeclaration)'
        
         ast <- bootstrap stub -> 'globals' -> 'us' -> 'ast' -> 'methodDeclaration' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots methodSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: copying facets\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
             formalsToAdjust.
            | 
            formalsToAdjust: formalsDispatchedOn: oldFacet.
            formalsToAdjust do: [|:f| f dispatchOn: newFacet.  newFacet addUsParentFormal: f].
            checkFormals.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            exists ifFalse: [ ^ '"non-existent slot"' ].
            ast sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringsForLocalSlots = ( |
            | 
            localSlotASTs copyMappedBy: [|:s| s evalStringAssignable leftShrinkwrapped]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx = ( |
            | 
            ast evaluateInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         initFormalsFromAST = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            ast formals do: [|:formalDecl|
              addFormal: us formal copyForAST: formalDecl Slot: self
            ].
            ast addImplicitFormalsFromGuardToSlot: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         isMethod = ( |
            | 
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         localSlotASTs = ( |
            | 
            ast localDeclarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         method = ( |
            | 
            ast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         mustBeDisassembled = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: i = ( |
            | 
            ast nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         selector = ( |
            | ast selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         source = ( |
            | 
            sourceIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceIfFail: fb = ( |
            | 
            sourceStringIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceString = ( |
            | 
            sourceStringIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceStringIfFail: fb = ( |
            | 
            ast expressionsSourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         usOrSelfSource = ( |
            | 
            [xxx].
            method sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsFromFormals: formals = ( |
            | 
            formals mapBy: [|:f| f mySlot] Into: identitySet copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         todo = '
get rid of implementaiton slot
expand buttons not method in deposit
font instead of parents for implicit/explicit
updating title morph'.
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

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'mirrors' -> 'abstractMirror' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'number' -> () From: ( | {
         'Category: Us\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asUsNumber = ( |
            | (us facets getWellKnownFacet: 'protoNumber') copy value: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sequence' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asUsObject = ( |
            | asUsOrderedCollection).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sequence' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsOrderedCollection = ( |
            | 
            (us facets getWellKnownFacet: 'protoOrderedCollection') copy value: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'string' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asUsObject = ( |
            | asUsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'string' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         asUsString = ( |
            | 
            (us facets getWellKnownFacet: 'protoString') copy value: canonicalize).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'usMorphs' From: 'applications/allUs'
 bootstrap read: 'usTests' From: 'applications/allUs'
 bootstrap read: 'usWorldMaker' From: 'applications/allUs'



 '-- Side effects'

 globals modules us postFileIn
