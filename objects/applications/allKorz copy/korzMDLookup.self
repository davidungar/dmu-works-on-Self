 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         multidispatchLookup = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz multidispatchLookup.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (nil)\x7fVisibility: public'
        
         context.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: intermediate results\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (identityDictionary copyRemoveAll)\x7fVisibility: private'
        
         distancesByNameByFullyMatchingSlot <- identityDictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: intermediate results\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (identityDictionary copyRemoveAll)\x7fVisibility: private'
        
         distancesByNameByPartiallyMatchingSlot <- identityDictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (raiseError)\x7fVisibility: public'
        
         failBlock <- bootstrap stub -> 'globals' -> 'raiseError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (true)\x7fVisibility: public'
        
         followParents <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: results\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (identitySet copyRemoveAll)\x7fVisibility: public'
        
         mostSpecificSlots <- identitySet copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz multidispatchLookup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 3.4 addInDistancesForUndispatchedFormals\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         addInDistancesForUndispatchedFormals = ( |
             pac.
            | 
            pac: (globals selector copyStr: selector) numberOfArguments."ensure that undispatched but mentioned dims trump unmentioned dims in trim... below"
            distancesByNameByPartiallyMatchingSlot do: [|:dByN. :s|
              s formalsInSlot do: [|:f| 
                f isDispatched not  &&  [s isMethod  ||  [(pac = 1)  ||  [f isImplicit]]] ifTrue: [
                  dByN at: f formalName Put: maxSmallInt
                ].
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 3 add undispatched slots\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         addInUndispatchedSlots = ( |
             pac.
            | 
            pac: (globals selector copyStr: selector) numberOfArguments.
            korz slotHeap undispatchedSlotsMatching: selector PositionalArgumentCount: pac Do: [|:s. distancesByName |
              [(distancesByNameByPartiallyMatchingSlot includesKey: s) not] assert.
              distancesByName: dictionary copyRemoveAll.
              distancesByNameByPartiallyMatchingSlot at: s Put: distancesByName
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 5 pick most spcific slots\x7fCategory: helpers\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         compareDistanceAlongDimension: dim Of: distsByDimName1 To: distsByDimName2 If1Closer: closer1 IfEqual: equal If2Closer: closer2 = ( |
             d1.
             d2.
             presentDimTrumpsAbsentDim = bootstrap stub -> 'globals' -> 'true' -> ().
            | 
            "Lots of things break if presentDimTrumpsAbsentDim is not true."
            d1: distsByDimName1 at: dim IfAbsent: [ ^ presentDimTrumpsAbsentDim ifTrue: closer2 False: equal ].
            d2: distsByDimName2 at: dim IfAbsent: [ ^ presentDimTrumpsAbsentDim ifTrue: closer1 False: equal ].
            d1 compare: d2 IfLess: closer1 Equal: equal Greater: closer2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 5 pick most spcific slots\x7fCategory: helpers\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         compareDistancesByDimesionName: distsByDimName1 To: distsByDimName2 If1Closer: closer1Block EquallySpecific: equalBlock If2Closer: closer2Block IncomparablySpecific: incomparableBlock = ( |
             r <- 'eq'.
            | 
            "more matching dims in guard always win"
            distsByDimName2 size  compare: distsByDimName1 size 
                                   IfLess: [^ closer1Block value] 
                                    Equal: []
                                  Greater: [^ closer2Block value].

            (distsByDimName1 keys asSet addAll: distsByDimName2 keys asSet) do: [|:dimName. distance1. distance2|
              r: compareDistanceAlongDimension: dimName  Of: distsByDimName1 To: distsByDimName2
                 If1Closer: [ r = 'c2' ifTrue: 'in' False: 'c1']
                 IfEqual:   [ r ]
                 If2Closer: [ r = 'c1' ifTrue: 'in' False: 'c2']
            ].
            case 
              if: (r = 'c2') Then: closer2Block
              If: [r = 'eq'] Then: equalBlock
              If: [r = 'c1'] Then: closer1Block
              If: [r = 'in'] Then: incomparableBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         contextForLookupFailure = ( |
            | 
            ((korz dispatchContextForReceiver: (context arguments at: lookupFailureHandlerDimension))
              positionalFacetAt: 1 Put: selector asKorzString)
              positionalFacetAt: 2 Put: mostSpecificSlots size asKorzNumber).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (((resend.copy 
            distancesByNameByFullyMatchingSlot: distancesByNameByFullyMatchingSlot copy)
            distancesByNameByPartiallyMatchingSlot: distancesByNameByPartiallyMatchingSlot copy)
            slotsAndDistancesByFacetName: slotsAndDistancesByFacetName copy)
            mostSpecificSlots: mostSpecificSlots copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | copy removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel Context: c = ( |
            | 
            (copyRemoveAll selector: sel) context: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         defaultFailBlock = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz multidispatchLookup parent defaultFailBlock.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (\'\')'
        
         errorMsg <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz multidispatchLookup parent defaultFailBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         value = ( |
             coe.
             p.
             pp.
            | 
            [cabo].  
            coe: korz ide processErrors catchAll copy errorMessage: errorMsg.
            p: (korz ide korzProcess copy selfProcess: process this) causeOfError: coe.
            korz ide korzProcessModel debugProcess: p.
            [(message copy receiver: korz ide korzProcessModel Selector: 'debugProcess:' With: p) fork.].
            [p suspendAndTrace: coe]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> 'defaultFailBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         value: err = ( |
            | 
            (copy errorMsg: err) value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: debugging\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         displayDetailsIfSpecifiedByContext = ( |
             selectorToShow.
            | 
            selectorToShow: context arguments at: 'showDispatch' IfAbsent: [^ nil].
            selectorToShow isProxyFacet ifFalse: [^ nil].
            "Change the following to display a suitable morph and continue, rather than halt"
            (selector = selectorToShow value) ifTrue: [halt: 'Dispatch of \'', selector, '\'']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 4 ensure every slot guard dim matches\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         ensureEachGuardedDimensionIsMatchedIfDispatchedOrPassedIfNot = ( |
            | 
            distancesByNameByFullyMatchingSlot:
              distancesByNameByPartiallyMatchingSlot copyFilteredBy: [|:dByN. :s|
                s isEveryDimensionForMatching: selector PresentIn: dByN OrIn: context arguments
              ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 1 find matches and dists per facet\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         forEachArgumentFindAllMatchingSlotsAndTheirDistances = ( |
            | 
            slotsAndDistancesByFacetName: dictionary copyRemoveAll.

            context arguments do: [|:f. :argName. listOfSlotsAndDistances. |
              listOfSlotsAndDistances:    f getSlotsAndDistancesWithSelector: selector 
                                                ThatDispatchOnMeWhenIAmNamed: argName 
                                                     PositionalArgumentCount: context positionalFacetCount
                                                               FollowParents: followParents.
              slotsAndDistancesByFacetName at: argName Put: listOfSlotsAndDistances.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         handleError: message NumberOfMatches: d = ( |
            | 
            hasLookupFailureHandler ifFalse: [^ failBlock value: message With: d].
            korz operations send: 'value:With:' ToContext: contextForLookupFailure).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         hasLookupFailureHandler = ( |
            | 
            context arguments includesKey: lookupFailureHandlerDimension).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         lookup = ( |
            | 
            lookupIfNone: [messageNotUnderstoodError]
                     One: [mostSpecificSlots first]
                    Many: [messageAmbiguousError]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         lookup: sel In: ctx = ( |
            | 
            (copySelector: sel Context: ctx) lookup).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         lookup: sel In: ctx IfFail: fb = ( |
            | 
            ((copySelector: sel Context: ctx) failBlock: [|:e| ^ fb value: e]) lookup).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: top-level internals\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         lookupAllEquallySpecific = ( |
            | 
            context assertNoNils.
            lookupAllEquallySpecificSlowlyInParallel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         lookupAllEquallySpecificSlowlyInParallel = ( |
            | 
            forEachArgumentFindAllMatchingSlotsAndTheirDistances.

            mergePerArgumentListsIntoOneListOfDistancesForEachSlot.

            addInUndispatchedSlots.

            addInDistancesForUndispatchedFormals.

            ensureEachGuardedDimensionIsMatchedIfDispatchedOrPassedIfNot.

            trimAllLessSpecificSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         lookupFailureHandlerDimension = 'lookupFailureHandler'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupIfNone: noneBlock One: oneBlock Many: manyBlock = ( |
            | 
            lookupAllEquallySpecific.
            displayDetailsIfSpecifiedByContext.
            case
              if: (mostSpecificSlots isEmpty)   Then: noneBlock
              If: [mostSpecificSlots size = 1]  Then:  oneBlock
                                                Else: manyBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 2 merge dims into slots\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         mergePerArgumentListsIntoOneListOfDistancesForEachSlot = ( |
            | 
            distancesByNameByPartiallyMatchingSlot: identityDictionary copyRemoveAll.

            slotsAndDistancesByFacetName do: [|:listOfSlotsAndDistances. :facetName. distancesByFacetName|
              listOfSlotsAndDistances do: [|:slotAndDist. slot. dist. distancesByName|
                slot: slotAndDist x.  dist: slotAndDist y.
                (
                  distancesByNameByPartiallyMatchingSlot 
                    if: slot  IsPresentDo:                                    [|:dByN| dByN]
                              IfAbsentPut: [dictionary copyRemoveAll]  AndDo: [|:dByN| dByN]
                ) at: facetName Put: dist.
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         messageAmbiguousError = ( |
            | 
            handleError: 'Korz message: ', selector, ' is ambigous, has ', mostSpecificSlots size printString, ' equally specific slots'
            NumberOfMatches: mostSpecificSlots size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: errors\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         messageNotUnderstoodError = ( |
            | 
            handleError: 'Korz message: ', selector, ' not understood'
            NumberOfMatches: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            distancesByNameByFullyMatchingSlot removeAll.
            distancesByNameByPartiallyMatchingSlot removeAll.
            slotsAndDistancesByFacetName removeAll.
            mostSpecificSlots removeAll.
            followParents: true.
            failBlock: defaultFailBlock.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: interface\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsCompetingWith: aSlot Do: blk = ( |
             l1.
             l2.
            | 
            l1: copySelector: aSlot selector
                     Context: aSlot contextFromFormals: false.
            l1 followParents: false.
            l1 lookupAllEquallySpecific.
            (l1 mostSpecificSlots copyFilteredBy: [|:s| s != aSlot]) do: blk.

            aSlot isData ifFalse: [^ self].

            l2: copySelector: aSlot selector, ':'
                     Context: aSlot contextFromFormals: true.
            l2 followParents: false.
            l2 lookupAllEquallySpecific.
            (l2 mostSpecificSlots copyFilteredBy: [|:s| s != aSlot]) do: blk.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 5 pick most spcific slots\x7fCategory: helpers\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         testCompare = ( |
             x.
             y.
            | 
            x: dictionary copyRemoveAll.
            x at: 'foo' Put: 0.
            y: dictionary copyRemoveAll.
            compareDistancesByDimesionName: x
                                        To: y 
                                 If1Closer: [halt]  
                           EquallySpecific: [ halt]
                                 If2Closer: [halt]
                      IncomparablySpecific: [halt ].
            compareDistancesByDimesionName: y
                                        To: x
                                 If1Closer: [halt]  
                           EquallySpecific: [ halt]
                                 If2Closer: [halt]
                      IncomparablySpecific: [halt ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> 'parent' -> () From: ( | {
         'Category: algorithm\x7fCategory: top\x7fCategory: 5 pick most spcific slots\x7fModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         trimAllLessSpecificSlots = ( |
            | 
            mostSpecificSlots: identitySet copyRemoveAll addAll: distancesByNameByFullyMatchingSlot keys.

            distancesByNameByFullyMatchingSlot do: [|:dByN1. :s1. |
              distancesByNameByFullyMatchingSlot do: [|:dByN2.  :s2|
                s1 == s2  ifFalse: [
                  compareDistancesByDimesionName: dByN1
                                              To: dByN2 
                                       If1Closer: [ mostSpecificSlots remove: s2 IfAbsent: []]  
                                 EquallySpecific: [ ]
                                       If2Closer: [ mostSpecificSlots remove: s1 IfAbsent: []]
                            IncomparablySpecific: [ ]
                ]
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (\'\')\x7fVisibility: public'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'multidispatchLookup' -> () From: ( | {
         'Category: intermediate results\x7fModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (dictionary copyRemoveAll)\x7fVisibility: private'
        
         slotsAndDistancesByFacetName <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         korzMDLookup = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzMDLookup.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMDLookup' -> () From: ( | {
         'ModuleInfo: Module: korzMDLookup InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzMDLookup postFileIn
