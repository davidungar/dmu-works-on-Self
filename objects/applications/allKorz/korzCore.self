 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addExistingFacetFromExpression: expression = ( |
            | 
            addFacetFromExpression: expression
                           OldSlot: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addExistingFacetFromExpression: expression ReplacingWellKnownSlot: slotName = ( |
            | 
            checkExpressionDoesNotCreateNewFacet: expression.
            [(expression matchesPattern: '*)') not] assert.
            addFacetFromExpression: expression
                           OldSlot: foyer getWellKnownSlotNamed: slotName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addFacetFromExpression: expression = ( |
            | 
            addFacetFromExpression: expression Parent: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: private'
        
         addFacetFromExpression: expression OldSlot: oldSlot = ( |
             newSlot.
             rr.
            | 
            rr: ui2ResultReporter copy event: process this birthEvent.
            newSlot: korz operations evaluateStringAsSlotDeclaration: expression
                                                  OldSlot: oldSlot
                                           ReportErrorsTo: rr. 
            newSlot ifNil: [error].
            newSlot contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addFacetFromExpression: expression Parent: parentFacet = ( |
             newFacet.
            | 
            newFacet: addFacetFromExpression: expression OldSlot: nil.
            newFacet addKorzParentFacet: parentFacet.
            newFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addParent: parentFacet To: facet = ( |
            | facet addKorzParentFacet: parentFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addSlotsFromExpression: expression = ( |
            | 
            evaluateStringAsEvaluatorContents: '| { -rcvr :: ' , expression, '} |').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         checkExpressionDoesNotCreateNewFacet: expression = ( |
            | 
            [(expression matchesPattern: '*)') not] assert).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         core = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker core.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         addWorldRegionToSlotsCreatedEarlier = ( |
            | 
            addWorldRegionToVMSlotsCreatedEarlier).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         addWorldRegionToVMSlotsCreatedEarlier = ( |
            | 
            "Leave nil and foyer alone. -- dmu"

            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions prototypes      :: protoBlock =  protoBlock}'
                    ReplacingWellKnownSlot: 'protoBlock'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzCore InitialContents: InitializeToExpression: (nil.)'
        
         anyTimeFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzCore InitialContents: InitializeToExpression: (nil)'
        
         anyWorldRegionFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         createTestData = ( |
             anyCoordinate.
            | 
            anyCoordinate: makeTestDimension.
            makeTester.
            anyCoordinate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | 
            makeVM. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeAllWorldRegionsFacet = ( |
            | 
            addFacetFromExpression: '{ :: allWorldRegions =  ()}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeAnyRegionFacet = ( |
            | 
            anyWorldRegionFacet: addFacetFromExpression: '{ rcvr => allWorldRegions.  worldRegion => allWorldRegions world.  ::  anyRegion =  ()}'
              Parent: worldFacet.

            setDefaultCoordinateOfDimension: 'worldRegion' To: anyWorldRegionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeBlockFacets = ( |
             abstractBlock.
             protoBlock.
            | 
            abstractBlock: addFacetFromExpression: '{ worldRegion => allWorldRegions abstractTypes :: abstractBlock =  () }'
                                           Parent: foyer.

            harold.
            protoBlock: getWellKnownFacet: protoBlockName.
            [protoBlock korzParentFacets removeAll].
            addParent: abstractBlock To: protoBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeBlockSlots = ( |
            | 
            addSlotsFromExpression: '

              { rcvr => abstractBlock. ::
                value: a1 With: a2 With: a3 With: a4 With: a5 = ( value: a1 With: a2 With: a3 With: a4 ).
                value: a1 With: a2 With: a3 With: a4          = ( value: a1 With: a2 With: a3 ).
                value: a1 With: a2 With: a3                   = ( value: a1 With: a2 ).
                value: a1 With: a2                            = ( value: a1 ).
                value: a1                                     = ( value ).

                assert = (value ifFalse: [error: \'assertion failed\']).
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeBooleanFacets = ( |
             abstractBooleanFacet.
             f.
             worldRegionConstraint.
            | 
            worldRegionConstraint: korz worldMaker isForPaperFigure ifTrue: '' False: 'worldRegion => allWorldRegions globalConstants '.

            abstractBooleanFacet: addFacetFromExpression: '{ worldRegion => allWorldRegions abstractTypes :: abstractBoolean =  ()}'
                          Parent: foyer.

            addFacetFromExpression: '{ ', worldRegionConstraint, '  ::  true =  () }'
                            Parent: abstractBooleanFacet.

            addFacetFromExpression: '{ ', worldRegionConstraint, ' ::  false =  () }'
                            Parent: abstractBooleanFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeBooleanSlots = ( |
            | 
            addSlotsFromExpression: '

              { rcvr => true  :: not = ( false ) }
              { rcvr => false :: not = ( true  ) }

              { rcvr => true. ::
                ifTrue: { trueBlock => abstractBlock } False: { falseBlock => abstractBlock } = ( trueBlock value ).
              }
              { rcvr => false. ::
                ifTrue: { trueBlock => abstractBlock } False: { falseBlock => abstractBlock } = ( falseBlock value ).
              }

              { rcvr => abstractBoolean. ::
                ifTrue:  {  trueBlock => abstractBlock } = ( ifTrue: trueBlock False: [ nil ]    ).
                ifFalse: { falseBlock => abstractBlock } = ( ifTrue: [ nil ]   False: falseBlock ).
              }

              { rcvr => abstractBoolean. ::
                && {b => abstractBlock} = ( ifTrue: b       False: [false] ).
                || {b => abstractBlock} = ( ifTrue: [true]  False: b ).
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeCloneSlot = ( |
            | 
            addSlotsFromExpression: ' 
              { rcvr => foyer ::  clone = ( _CopyKorzFacet ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeCopySlot = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => foyer :: copy = ( clone ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeFacets = ( |
            | 
            makeStandardDimensionsAndCoordinates.

            makeBlockFacets.
            makeBooleanFacets.
            makeNumberFacets.
            makeStringFacets.
            makeOrderedCollectionFacets.
            makeVectorFacets.
            makeTimeFacets.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeHaltSlots = ( |
            | 
            addSlotsFromExpression: '
              {  :: halt = ( _Halt ) }
              {  :: halt: msg = ( _Halt: msg _Value) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeNumberFacets = ( |
             slot.
            | 

            addFacetFromExpression: '{  worldRegion => allWorldRegions abstractTypes :: abstractNumber = ()}'
                            Parent: foyer.
             addWellKnownProxyFacetNamed: 'protoNumber' InitializedTo: 0  InheritingFrom: 'abstractNumber'.

            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions prototypes  ::  protoNumber = protoNumber}'
                    ReplacingWellKnownSlot: 'protoNumber').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeNumberSlots = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => abstractNumber.  ::
                  +  { a => abstractNumber } = ( \'+\'  __SendTo: rcvr With: a).
                  -  { a => abstractNumber } = ( \'-\'  __SendTo: rcvr With: a).
                  *  { a => abstractNumber } = ( \'*\'  __SendTo: rcvr With: a). 
                  /  { a => abstractNumber } = ( \'/\'  __SendTo: rcvr With: a).
                  %  { a => abstractNumber } = ( \'%\'  __SendTo: rcvr With: a).
                  =  { a => abstractNumber } = ( \'=\'  __SendTo: rcvr With: a).
                  <  { a => abstractNumber } = ( \'<\'  __SendTo: rcvr With: a).
                  >  { a => abstractNumber } = ( \'>\'  __SendTo: rcvr With: a).
                  <= { a => abstractNumber } = ( \'<=\' __SendTo: rcvr With: a).
                  >= { a => abstractNumber } = ( \'>=\' __SendTo: rcvr With: a).
            }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            resetWellKnownFacets.
            makeFacets.
            makeSlots.
            test.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeOrderedCollectionFacets = ( |
            | 
            addFacetFromExpression: '{ worldRegion => allWorldRegions abstractTypes :: abstractOrderedCollection = ()}'.

            addWellKnownProxyFacetNamed: 'protoOrderedCollection' 
                          InitializedTo: sequence copyRemoveAll  
                         InheritingFrom: 'abstractOrderedCollection'.

            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions prototypes :: protoOrderedCollection = protoOrderedCollection}'
                    ReplacingWellKnownSlot: 'protoOrderedCollection').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeOrderedCollectionSlots = ( |
            | 
            addSlotsFromExpression: '
              { rcvr =>    protoOrderedCollection :: copy = ( clone "should be resend.copy, which is not there yet"  _CopyMySelfObject ). }
              { rcvr =>    protoOrderedCollection ::  add: { a => foyer } = ( _AsSelfObject _Add: a. rcvr ). }
              { rcvr =>    protoOrderedCollection ::   at:  { index => abstractNumber } = ( _AsSelfObject _At: index _AsSelfObject ) }
              { rcvr =>    protoOrderedCollection :: first = ( _AsSelfObject _First ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlots = ( |
            | 
            makeCloneSlot.
            makeCopySlot.
            makeHaltSlots.
            makeUserQuerySlots.

            makeBlockSlots.
            makeBooleanSlots.
            makeNumberSlots.
            makeStringSlots.
            makeOrderedCollectionSlots.
            makeVectorSlots.
            makeTimeSlots.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeStandardDimensionsAndCoordinates = ( |
            | 
            makeWorldRegionDimension.
            makeTimeDimension).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeStringFacets = ( |
            | 
            addFacetFromExpression: '{ worldRegion => allWorldRegions abstractTypes :: abstractString = ()}'
                            Parent: foyer.

            addWellKnownProxyFacetNamed: 'protoString' InitializedTo: '' InheritingFrom: 'abstractString'.

            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions prototypes :: protoString = protoString}'
                    ReplacingWellKnownSlot: 'protoString').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeStringSlots = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => abstractString :: , { a => abstractString } = ( \',\' __SendTo: rcvr With: a ) }
              { rcvr => abstractString :: = { a => abstractString } = ( \'=\' __SendTo: rcvr With: a ) }

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeTestDimension = ( |
             any.
             default.
             dimFacet.
             highMiddle.
             lowMiddle.
            | 

            "make testDim undispatched"
            dimFacet: addFacetFromExpression: '{ :: testDim =  ()}'.

            default: addFacetFromExpression: '{ rcvr => testDim :: dimTop =  ()}'
                            Parent: foyer.

            highMiddle: addFacetFromExpression: '{ rcvr => testDim :: highMiddle =  ()}'
                            Parent: default.

            lowMiddle: addFacetFromExpression: '{ rcvr =>  testDim :: lowMiddle =  ()}'
                            Parent: highMiddle.

            any: addFacetFromExpression: '{ rcvr =>  testDim :: bottom =  ()}'
                            Parent: lowMiddle.

            addFacetFromExpression: '{ rcvr =>  testDim :: outside =  ()}'
                            Parent: foyer. "overall foyer, not dimension foyer"

            any).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeTester = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions testData :: dispatchTester =  () }'
                            Parent: foyer.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions testData dispatchTester :: tacitMethod   = ( \'(| |) tacit\' ).     
                {  testDim =>> dimTop  ::     topMethod  = ( \'testDim =>> dimTop  ::     topMethod\' ). }
                {  testDim =>> bottom  ::  bottomMethod  = ( \'testDim =>> bottom  ::  bottomMethod\' ). }
                {  testDim =>> outside :: outsideMethod  = ( \'testDim =>> outside :: outsideMethod\' ). }
            }
            '.

            "Defaults to catch not-understood cases"
            addSlotsFromExpression: '
              { rcvr => allWorldRegions testData dispatchTester. ::     topMethod  = ( \'Not understood\' ).
                                                     bottomMethod  = ( \'Not understood\' ).
                                                    outsideMethod  = ( \'Not understood\' ).
            }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeTopLevelWorldRegions = ( |
             facet.
            | 
            "Not sure what to do about the commented out componenets below. -- dmu"

            facet: addFacetFromExpression: '{ rcvr => allWorldRegions."  worldRegion => allWorldRegions world." :: prototypes =  () }'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '{ rcvr => allWorldRegions."  worldRegion => allWorldRegions world."   :: abstractTypes =  ()}'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '{ rcvr => allWorldRegions."  worldRegion => allWorldRegions world."  :: globalConstants =  ()}'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '{ rcvr => allWorldRegions."  worldRegion => allWorldRegions world."  :: examples =  ()}'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '{ rcvr => allWorldRegions."  worldRegion => allWorldRegions world."  :: testData =  ()}'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeUserQuerySlots = ( |
            | 
            addSlotsFromExpression: '
              {  :: reportAndContinue: {msg => abstractString} = ( 0 _UserQuery _reportAndContinue: msg _Value. nil ) }
              { userInteraction => \'none\' :: reportAndContinue: {msg => abstractString} = ( nil ) }
            '.

            addSlotsFromExpression: '
              {  :: reportAndContinue: {msg => abstractString} 
                       Red: r Green: g Blue: b = ( 
                          0 _UserQuery _reportAndContinue: msg _Value Red: r _Value Green: g _Value Blue: b _Value. nil ) }
              { userInteraction => \'none\' :: reportAndContinue: {msg => abstractString} Red: r Green: g Blue: b = ( nil ) }
              showError: {msg => abstractString} = ( reportAndContinue: msg Red: 0.852395 Green: 0.384164 Blue: 0.384164 ).
              showStatus: {msg => abstratString} = ( reportAndContinue: msg Red: 0.518084 Green: 0.699902 Blue: 0.518084 )
            '.

            "hlo: would be good to add one that appends the message to a log or assigns it to a message holder so this can be checked 
                  at the end of the test").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeVectorFacets = ( |
            | 
            addFacetFromExpression: '{ worldRegion => allWorldRegions abstractTypes :: abstractVector = ()}'.

            addWellKnownProxyFacetNamed: 'vector' 
                          InitializedTo: vector copy
                         InheritingFrom: 'abstractVector'.

            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions prototypes :: vector = vector}'
                    ReplacingWellKnownSlot: 'vector').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeVectorSlots = ( |
            | 
            addSlotsFromExpression: '
              { rcvr =>    vector ::   at:  { index => abstractNumber } = ( _AsSelfObject _At: index _AsSelfObject ) }
              { rcvr =>    vector :: copy = ( clone  _CopyMySelfObject ). }
              { rcvr =>    vector :: copySize: {n => abstractNumber} = ( 
                |r| 
                r: clone. 
                r _Value: _Value _CopySize: n _AsSelfObject. 
                r ). } 
              { rcvr =>    vector ::   at:  { index => abstractNumber } Put: x = ( _AsSelfObject _At: index _AsSelfObject Put: x ) }
              { rcvr =>    vector ::   size = (__Size ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeWorldFacet = ( |
            | 
            "'world' is the all-encompassing world region, and the default facet of the worldRegion dimension"

            worldFacet: addFacetFromExpression: '{ rcvr => allWorldRegions :: world =  ()}'
                                        Parent: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         makeWorldRegionDimension = ( |
             facet.
            | 

            makeAllWorldRegionsFacet.
            makeWorldFacet.      "foyer"
            makeAnyRegionFacet.  "bottom"

            makeTopLevelWorldRegions.
            addWorldRegionToSlotsCreatedEarlier).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         resetWellKnownFacets = ( |
            | 
            anyTimeFacet: nil.
            anyWorldRegionFacet: nil.
            worldFacet: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test = ( |
            | 
            [warning: 'Testing core at ' , time current timeString, ' ...'].

            testNestedGuardAccess.
            testDisappearingArguments.
            testBlockArguments.
            testBlockAsReturnValue.
            testBlockParameterNesting.
            testBooleanSlots.
            testNumberSlots.
            testOrderedCollectionSlots.
            testVectorSlots.
            testStringSlots. 

            testLocalVariables.
            testLocalOverriding.
            testDispatchCases.
            testGuardAccessibility.
            testBlockImplicits.
            testImplicitReceiverInBlockArgumentOfMethodWithNoReceiver.
            testLocalScoping.
            testGuardDimensionWithNoCoordinate.
            testUndispatched.
            testProxyDispatched.

            testGuardsWithPrimitiveValues.
            testGuardDimensionWithoutValue.
            testGuardWithoutReceiver.
            testGuardWithNoDimensions.

            testStaticInitialization.
            testAssignmentToUndispatchedDataSlot.


            [warning: ' ... tests succeeded'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test1A_TopTop = ( |
            | 
            test:   ' {testDim =>> dimTop. rcvr => allWorldRegions testData dispatchTester}  topMethod '
            Expect: 'testDim =>> dimTop  ::     topMethod').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test1E_TopTacit = ( |
            | 
            test:   ' { testDim =>> dimTop.  rcvr => allWorldRegions testData dispatchTester } tacitMethod'
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test4A_XTop = ( |
            | 
            test:   ' { testDim => allWorldRegions examples. rcvr => allWorldRegions testData dispatchTester } topMethod'
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test4C_XBottom = ( |
            | 
            test:   ' { testDim => allWorldRegions examples.  rcvr => allWorldRegions testData dispatchTester } bottomMethod '
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test4D_XOutside = ( |
            | 
            test:   ' { testDim => allWorldRegions examples. rcvr =>  allWorldRegions testData dispatchTester } outsideMethod'
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test4E_XTacit = ( |
            | 
            test:   ' { testDim =>  allWorldRegions examples.  rcvr => allWorldRegions testData dispatchTester } tacitMethod'
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test5A_TacitTop = ( |
            | 
            test: [allWorldRegions testData dispatchTester topMethod]
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         test5E_TacitTacit = ( |
            | 
            test: [allWorldRegions testData dispatchTester tacitMethod]
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testAccessToSlotNamed: name Value: facet = ( |
            | 

            p1: korz facets getWellKnownFacet: 'prototypes'.

            [p1 == p0] assert.

            p2: korz operations evaluateStringAsEvaluatorContents: 'prototypes'.

            [p2 == p0] assert).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testAssignmentToUndispatchedDataSlot = ( |
            | 
            addSlotsFromExpression: '
                { :: testDataSlot55 <- 55 } 
            '.

              test: ' testDataSlot55: 66 '
            Expect: 66).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testBlockArguments = ( |
            | 
              test: '[ | :a. :b. :c. :d | a + b + c + d ] value: 1 With: 2 With:3 With: 4'
            Expect: 10.

              test: '[ | :a. :b. :c. :d | a + b + c + d ] value: 1 With: 2 With:3 With: 4 With: 5'
            Expect: 10.

              test: '[ 0 ] value: 1 With: 2 With:3 With: 4 With: 5'
            Expect: 0.

            addSlotsFromExpression: ' 
              { rcvr => allWorldRegions testData. :: 
                testBlockArgumentAccessThroughAMethod: x = ( [ x ] testBlockArgumentAccessThroughAMethodMethod ). }
                testBlockArgumentAccessThroughAMethodMethod = (value).
            '.
            test: 'allWorldRegions testData testBlockArgumentAccessThroughAMethod: 17'  Expect: 17.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testBlockAsReturnValue = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions testData :: returnBlock = ( [ \'block value\' ] ) }
            '.

            test: 'allWorldRegions testData returnBlock value'
            Expect: 'block value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testBlockImplicits = ( |
            | 
            "In order for block locals to work, when a block runs, it must restore all implicit arguments to
             the value that obtained for the home activation."
            "In order to allow a context change in a call chain that ends up invoking a block,
             when a block sends an 'explicit receiver' message, it must do so using the context mentioned in the home's guard that obtained
             when the block's value message was invoked."

            test: '
              ( | { rcvr => allWorldRegions testData. extra => abstractNumber :: snort = ( {rcvr => [extra]. extra => 3 } value ) } | ).
              {rcvr => allWorldRegions testData. extra => 1} snort '
            Expect: 1.

            test:  '  { 
                        rcvr => (| 
                          p* =  allWorldRegions testData. 
                          { 
                            aDim =>  allWorldRegions testData ::  
                              methodName = (   { rcvr => [aDim]. aDim => abstractString }   value  ). 
                          }
                        | ).
                        aDim =>  allWorldRegions testData 
                      } methodName '
            Expect:  evaluateStringAsEvaluatorContents: ' allWorldRegions testData '.



            test:  '(| { rcvr => allWorldRegions testData.  testBlockImplicitsDim => abstractNumber :: add3 = ( testBlockImplicitsDim + 3 ) } 
                       { rcvr => allWorldRegions testData.  testBlockImplicitsDim => abstractNumber :: test = (  { rcvr => [ allWorldRegions testData add3 ].  } value ) } |).
                     {rcvr => allWorldRegions testData. testBlockImplicitsDim => 1000} test '
            Expect: 1003.

            test:  '(| { rcvr => allWorldRegions testData.  testBlockImplicitsDim => abstractNumber :: add3 = ( testBlockImplicitsDim + 3 ) } 
                       { rcvr => allWorldRegions testData.  testBlockImplicitsDim => abstractNumber ::
                           test = (  { rcvr => [ allWorldRegions testData add3 ]. testBlockImplicitsDim => 100 } value ) } |).
                     {rcvr => allWorldRegions testData. testBlockImplicitsDim => 1000} test '
            Expect: 103.

            test:  '(| { rcvr => allWorldRegions testData.  testBlockImplicitsDim => abstractNumber ::
                           test = (  { rcvr => [ testBlockImplicitsDim + 3 ]. testBlockImplicitsDim => 100 } value ) } |).
                     {rcvr => allWorldRegions testData. testBlockImplicitsDim => 1000} test '
            Expect: 1003.

            "Fails because method's testBlockImplicitsDim trumps block argument because it's local slot gets created with all method's formals.
             The block argument should be created that way, too.
             See rebindFormals:ToHomeContext: and replaceLexicallyScopedImplicitArgumentsIn:"
            test: '(| { rcvr => allWorldRegions testData. 
                        testBlockImplicitsDim => abstractNumber 
                          :: test = ( { rcvr => [|:testBlockImplicitsDim| testBlockImplicitsDim + 3]. testBlockImplicitsDim => 100 } value: 1000 ) } |).
                      { rcvr => allWorldRegions testData. testBlockImplicitsDim => 10} test '
            Expect: 1003.


            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testBlockParameterNesting = ( |
            | 
              test: 'true ifTrue: [ true ifTrue: [ 99 ] ]'
            Expect: 99).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testBooleanSlots = ( |
            | 
            test: [ true  not ] Expect: getWellKnownFacet: 'false'.
            test: [ false not ] Expect: getWellKnownFacet: 'true'.

            test: [ true ifTrue: ['T'] False: ['F'] ]  Expect: 'T'.
            test: [ false ifTrue: ['T'] False: ['F'] ]  Expect: 'F'.

            test: [ true  ifTrue: ['T'] ]  Expect: 'T'.
            test: [ false ifTrue: ['T'] ]  Expect: getWellKnownFacet: 'nil'.

            test: [ true  ifFalse: ['F'] ]  Expect: getWellKnownFacet: 'nil'.
            test: [ false ifFalse: ['F'] ]  Expect: 'F').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testDisappearingArguments = ( |
            | 
            testDisappearingArgumentsWithMethodSlots.
            testDisappearingArgumentsWithDataSlots.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testDisappearingArgumentsWithDataSlots = ( |
            | 
            addSlotsFromExpression: '
              { :: testDisappearingArgumentsDataSlot = \'no dim\' }
            '.
            test: ' {                } testDisappearingArgumentsDataSlot'        Expect: 'no dim'.

            addSlotsFromExpression: '
              { testDim :: testDisappearingArgumentsDataSlot = \'dim only\' }

            '.
            test: ' {                } testDisappearingArgumentsDataSlot'        Expect: 'no dim'.
            test: ' { testDim        } testDisappearingArgumentsDataSlot'        Expect: 'dim only'.

            addSlotsFromExpression: '
              { testDim => 11 :: testDisappearingArgumentsDataSlot = \'dim 11\' }

            '.
            test: ' {                } testDisappearingArgumentsDataSlot'        Expect: 'no dim'.
            test: ' {testDim         } testDisappearingArgumentsDataSlot'        Expect: 'dim only'.
            test: ' {testDim => 11   } testDisappearingArgumentsDataSlot'        Expect: 'dim 11'.

            addSlotsFromExpression: '
              { :: testDisappearingArgumentsDataSlot: testDim = ( testDisappearingArgumentsDataSlot ) }

            '.

            test: ' {                } testDisappearingArgumentsDataSlot'        Expect: 'no dim'.
            test: ' {testDim         } testDisappearingArgumentsDataSlot'        Expect: 'dim only'.
            test: ' {testDim => 11   } testDisappearingArgumentsDataSlot'        Expect: 'dim 11'.
            test: ' {                } testDisappearingArgumentsDataSlot: 11'    Expect: 'no dim'.



            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testDisappearingArgumentsWithMethodSlots = ( |
            | 
            addSlotsFromExpression: '
              { :: testDisappearingArgumentsMethodSlot = (\'no dim\') }

            '.
            test: ' {} testDisappearingArgumentsMethodSlot' Expect: 'no dim'.


            addSlotsFromExpression: '
              { testDim :: testDisappearingArgumentsMethodSlot = (\'dim only\') }

            '.
            test: ' {} testDisappearingArgumentsMethodSlot' Expect: 'no dim'.
            test: ' {testDim } testDisappearingArgumentsMethodSlot' Expect: 'dim only'.

            addSlotsFromExpression: '
              { testDim => 17 :: testDisappearingArgumentsMethodSlot = (\'dim 17\') }

            '.
            test: ' {} testDisappearingArgumentsMethodSlot' Expect: 'no dim'.
            test: ' {testDim } testDisappearingArgumentsMethodSlot' Expect: 'dim only'.
            test: ' {testDim => 17} testDisappearingArgumentsMethodSlot' Expect: 'dim 17'.

            addSlotsFromExpression: '
              { :: testDisappearingArgumentsMethodSlot: testDim = ( testDisappearingArgumentsMethodSlot ) }

            '.

            test: ' {}                 testDisappearingArgumentsMethodSlot'        Expect: 'no dim'.
            test: ' {testDim }         testDisappearingArgumentsMethodSlot'        Expect: 'dim only'.
            test: ' {testDim => 17}    testDisappearingArgumentsMethodSlot'        Expect: 'dim 17'.
            test: ' {}                 testDisappearingArgumentsMethodSlot: 17'    Expect: 'no dim'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testDispatchCases = ( |
             anyCoordinate.
            | 
            anyCoordinate: createTestData.

            testTacitCallingContextCases.
            setDefaultCoordinateOfDimension: 'testDim' To: anyCoordinate.
            testExplicitCallingContextCases.
            removeDefaultCoordinateOfDimension: 'testDim').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testExplicitCallingContextCases = ( |
            | 
            test1A_TopTop.
            test1E_TopTacit.

            test4A_XTop.
            test4C_XBottom.
            test4D_XOutside.
            test4E_XTacit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testGuardAccessibility = ( |
            | 
            "Ensure that a dimension named protoString is inaccessible."
            test: ' { protoString => 17. rcvr => foyer } protoString ' Expect: ''.

            "But when it IS in the guard, it is accessible"
            test: ' { protoString => 16. rcvr => ( | { protoString => abstractNumber :: protoStringSixteenMethod = ( protoString ) } |) }  protoStringSixteenMethod '  Expect: 16.

            test: ' { protoString => 17. rcvr => ( | { protoString => 17 :: protoStringSeventeenMethod = ( protoString ) } |) }  protoStringSeventeenMethod '  Expect: 17.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testGuardDimensionWithNoCoordinate = ( |
            | 
            addSlotsFromExpression: '
              { 
                rcvr => allWorldRegions testData.
                dimensionWithoutCoordinate  ::
                    testGuardDimensionWithNoCoordinate = ( dimensionWithoutCoordinate )
              }

              { 
                dimensionWithoutCoordinate   ::
                    testGuardDimensionWithNoCoordinate2 = ( dimensionWithoutCoordinate )
              }
            '.

            test: '
              { 
                rcvr => allWorldRegions testData.
                dimensionWithoutCoordinate => 17
              } testGuardDimensionWithNoCoordinate
            '
            Expect: 17.


            [ "fails because slot has no way to find it currently"
            test: '
              { 
                rcvr => ().
                dimensionWithoutCoordinate => abstractBlock
              }
            '
            Expect: 18
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testGuardDimensionWithoutValue = ( |
            | 
            test: ' { rcvr        => (| {  worldRegion => allWorldRegions world :: wr = ( worldRegion ) } |). 
                      worldRegion => allWorldRegions anyRegion
                    }  wr '  
            Expect: anyWorldRegionFacet.

            test: ' { rcvr => (| {  worldRegion  :: wr = ( worldRegion ) } |) }  wr '  Expect: anyWorldRegionFacet.

              test: ' { rcvr => (| {  worldRegion  :: wr = ( | x | x: worldRegion ) } |) }  wr '  
            Expect: anyWorldRegionFacet
            "Was: ButNotUnderstood: 'Self lookup error: getSlotsAndDistancesWithSelector:... (called on nil)'").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testGuardWithNoDimensions = ( |
            | 
            addSlotsFromExpression: '
              { :: emptyGuardMethod = ( 99 ) }
            '.

            "emptyGuardMethod not understood"
            test: 'emptyGuardMethod'
            Expect: 99).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testGuardWithoutReceiver = ( |
            | 
            addSlotsFromExpression: '
              { worldRegion => allWorldRegions world :: wr2 = ( worldRegion ) }
              { foo => abstractString :: getfoo = ( \'result = \', foo ) }
            '.

              test: '{ worldRegion => allWorldRegions anyRegion } wr2'
            Expect: anyWorldRegionFacet.

              test: '{ foo => \'bar\' } getfoo'
            Expect: 'result = bar').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testGuardsWithPrimitiveValues = ( |
            | 
            addSlotsFromExpression: '
              {  rcvr => true        :: testValueTrue        = ( 42 ) }
              {  rcvr => protoString :: testValueProtoString = ( 43 ) }
              {  rcvr => \'abc\'     :: testValueAbc         = ( 44 ) }
              {  rcvr => protoNumber :: testValueProtoNumber = ( 45 ) }
              {  rcvr => 1           :: testValue1           = ( 46 ) }
            '.

              test: [ true testValueTrue ] 
            Expect: 42.

            test: [ 'abc' testValueProtoString ] 
            ExpectNotUnderstood: 'testValueProtoString'. "because protoString contains the empty string, not 'abc'"

             test: [ 'abc' testValueAbc ] 
            Expect: 44.

            test: [ 1 testValueProtoNumber ] 
            ExpectNotUnderstood: 'testValueProtoNumber'. "because protoNumber contains 0, not 1"

            test: [ 1 testValue1 ] 
            Expect: 46).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testImplicitReceiverInBlockArgumentOfMethodWithNoReceiver = ( |
            | 
            addSlotsFromExpression: '
                { worldRegion => allWorldRegions testData :: noReceiverDo: { b => abstractBlock } = ( b value ) }
                { rcvr => allWorldRegions testData :: dataItem = 77 }
                { rcvr => allWorldRegions testData :: caller = ( noReceiverDo: [ dataItem ] ) }
                { rcvr => allWorldRegions testData :: caller2 = ( noReceiverDo: [ rcvr ] ) }
                { rcvr => allWorldRegions testData. foo :: caller3 = ( noReceiverDo: [ foo ] ) }
            '.

              test: '{ rcvr => allWorldRegions testData} caller'
            Expect: 77.
            "ButNotUnderstood: 'examples'."

              test: '{ rcvr => allWorldRegions testData} caller2'
            Expect: evaluateStringAsEvaluatorContents: 'allWorldRegions testData'.

              test: '{ rcvr => allWorldRegions testData. foo => 78 } caller3'
            Expect: 78.
            "ButNotUnderstood: 'examples'.").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testLocalOverriding = ( |
            | 
            addSlotsFromExpression: '{ rcvr => allWorldRegions testData. foo => abstractNumber :: bar = ( | nil = \'hello1\' | nil ) }'.
            test: ' { rcvr => allWorldRegions testData. foo => 17 } bar '
            Expect: 'hello1'.

            addSlotsFromExpression: '{ rcvr => allWorldRegions testData. foo => abstractNumber :: nil = \'goodbye\'. bar = ( | nil = \'hello2\' | nil ) }'.
            test: ' { rcvr => allWorldRegions testData. foo => 17 } bar '
            Expect: 'hello2').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testLocalScoping = ( |
            | 
            addSlotsFromExpression: '
              { 
                rcvr => allWorldRegions testData :: 
                 localScopingTestSlot = \'the non-local slot\'.
                 localScopingTestMethod = ( 
                   | localScopingTestSlot = \'the local slot\' |
                   localScopingTestSlot )
              }
            '.

            test: 'allWorldRegions testData localScopingTestMethod'
            Expect: 'the local slot').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testLocalVariables = ( |
            | 
            addSlotsFromExpression: '{ rcvr => allWorldRegions testData. :: testLocalVariables1 = ( | v | v: 99. v ) }'.
            test: ' { rcvr => allWorldRegions testData. }  testLocalVariables1 '
            Expect: 99.

            addSlotsFromExpression: '{ worldRegion => allWorldRegions examples. :: testLocalVariables2 = ( | v | v: 98. v ) }'.
            test: ' { worldRegion => allWorldRegions examples. }  testLocalVariables2 '
            Expect: 98.

            test: ' { rcvr => foyer }  testLocalVariables2 '
            Expect: 98.

            test: ' { }  testLocalVariables2 '
            Expect: 98.

            addSlotsFromExpression: '{  :: testLocalVariables3 = ( | v | v: 97. v ) }'.
            test: ' { }  testLocalVariables3 '
            Expect: 97).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testNestedGuardAccess = ( |
            | 
            addSlotsFromExpression: '
              { aDim => 17 ::
                { anotherDim => 19 ::
                    nestedGuardAccessMethod = (|nestedGuardAccessLocalSlot = aDim| 
                      nestedGuardAccessLocalSlot + aDim)
                }
              }'.
            test: '{aDim => 17. anotherDim => 19} nestedGuardAccessMethod'
            Expect: 34).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testNumberSlots = ( |
            | 
            test: '( 3 + 4 ) - 5' Expect: 2.
            harold. "TODO: the following requires an Korz parameter, not Self, because not a proxyFacet. Sort this out"
            test: '9 / 4' Expect: 2.
            test: '9 % 4' Expect: 1.
            test: '(( 3 + 4 ) - 5) = 2' Expect: getWellKnownFacet: 'true'.
            test: '(( 3 * 4 ) - 5) = 2' Expect: getWellKnownFacet: 'false'.

            [ | c |
            [(getWellKnownFacet: 'abstractNumber' ) parentFormalCount = 4] "assert".
            c: korz context copy.
            c receiverFacet: foyer.
            c receiverFacet: 3 asKorzNumber.
            c positionalFacetAt: 1 Put: 4 asKorzNumber.
            [ |r|
              r: korz operations send: '+' ToContext: c.
              r asSelfObject = 7
            ] assert.

            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testOrderedCollectionSlots = ( |
            | 
            test: [ (protoOrderedCollection copy add: 'abc')          at: 0]  Expect: 'abc'.
            test: [((protoOrderedCollection copy add: 'abc') add: 55) at: 1]  Expect: 55).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testProxyDispatched = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => 17 :: testProxyDispatchedMethod = (21) }
            '.
            test: '17 testProxyDispatchedMethod' Expect: 21).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testSecondTop = ( |
            | 
            test:   ' { testDim =>> foyer.  rcvr => allWorldRegions testData dispatchTester } tacitMethod'
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testStaticInitialization = ( |
            | 
              test: '(| {tsi1 => 3. -rcvr ::  tsi2 = ( | a = tsi1 | a) } |). {tsi1 => 3} tsi2'
            Expect: 3.

              test: '(| {tsi3 => 3 ::  
                          tsi4 =  (| { tsi5 => tsi3. -rcvr :: tsi6 = (tsi5) } |) 
                        } |). 
                     {tsi5 => 3} tsi6'
            Expect: 3.

            "Why should this ever work?"
              test: '{capability => rcvr } foyer'
            Expect: foyer
            ButNotUnderstood: 'rcvr'.

            "changed initialization of x to be static:"
              test: ' | x = 99| (| { tsi8 => x. -rcvr :: tsi9 =  (tsi8 + 1) } |). {tsi8=>99} tsi9 '
            Expect: 100.

              test: ' | x = 99 | (| { :: tsi10 =  x } |). tsi10 '
            Expect: 99.

            "It looks at first glance like foo should be understood, but it should not"
              test: '(| {tsi11 => 3 ::  
                          tsi12 =  (| { -rcvr :: aMethod = (tsi11) } |) 
                        } |). 
                     aMethod'
            ExpectNotUnderstood: 'tsi11'.

            "Should either not understand arg guard or should work."
            failingtest: '{ (| {tsi13 => 3. :: tsi14: { tsi15 => tsi13 } = ( 12 ) } | ). {tsi13 => 3} tsi14: 3'
            Expect: 12.

            failingtest: '(| {tsi16 => 3 :: tsi17 = tsi16 } |)'
            ExpectNotUnderstood: 'tsi16').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testStringSlots = ( |
            | 
            test: ['a','b'] Expect: 'ab').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testTacitCallingContextCases = ( |
            | 
            test5A_TacitTop.
            test5E_TacitTacit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testUndispatched = ( |
            | 
            addSlotsFromExpression: '
              { :: testGuardlessMethod = ( 17 ) }
              { rcvr. :: testUndispatchedMethod = (18) }
            '.

            test: [testGuardlessMethod] Expect: 17.
            test: ' {rcvr => foyer } testUndispatchedMethod' Expect: 18).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testVectorSlots = ( |
            | 
            test: ' 
              |r|
              r: vector copySize: 3.
              r at: 0 Put: 2.
              r at: 1 Put: 5.
              r at: 2 Put: 7.
              (r at: 0) * (r at: 1) * (r at: 2) * r size
            '
            Expect: 210).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzCore InitialContents: InitializeToExpression: (nil)'
        
         worldFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         removeDefaultCoordinateOfDimension: dimName = ( |
            | korz removeDefaultCoordinateOfDimension: dimName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         setDefaultCoordinateOfDimension: dimName To: aFacet = ( |
            | 
            korz setDefaultCoordinateOfDimension: dimName To: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         testingContext = ( |
             c.
            | 
            c: korz baseContext copy.
            c implicitArgumentAt: 'userInteraction' Put: evaluateStringAsEvaluatorContents: '\'none\''.
            c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         korzCore = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzCore.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCore' -> () From: ( | {
         'ModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userQuery' -> () From: ( | {
         'Category: user queries\x7fComment: Present the given report text to the user.\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         report: reportText Red: r Green: g Blue: b = ( |
            | 
            "Performed from reportAndContinue:"
            askViaTTY ifTrue: [
                reportText printLine.
            ] False: [
                userQueryMorph
                  report: reportText
                   Event: process this birthEvent
                     Red: r  Green: g  Blue: b.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'userQuery' -> () From: ( | {
         'Category: user queries\x7fComment: Report the text but return right away.\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         reportAndContinue: reportText Red: r Green: g Blue: b = ( |
            | 
            scheduler isRunning ifFalse: [ reportText printLine. ^ self ].
            (message copy receiver: self Selector: 'report:Red:Green:Blue:' Arguments: (reportText & r & g & b) asVector) fork.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'userQueryMorph' -> () From: ( | {
         'Category: reporting\x7fComment: Present the given report to the user and wait for acknowledgement.
\x7fModuleInfo: Module: korzCore InitialContents: FollowSlot\x7fVisibility: public'
        
         report: s Event: evt Red: r Green: g Blue: b = ( |
             report.
            | 
            report: copyQuestion: s.
            report buttonInRowLabel: 'Okay' Result: nil.
            report colorAll: paint copyRed: r Green: g Blue: b.
            report popUpWhereEventHappened: evt.
            report drawAttention awaitResponse.
            self).
        } | ) 



 '-- Side effects'

 globals modules korzCore postFileIn
