 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         usCore = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usCore.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usCore' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         addImplicitFormalNamed: name Value: facet = ( |
             formal.
            | 
            formal: us formal copyForSlot: self.
            formal formalName: name.
            formal dispatchOn: facet.
            formal isExplicit: false.
            addFormal: formal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addExistingFacetFromExpression: expression = ( |
            | 
            addFacetFromExpression: expression
                           OldSlot: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addExistingFacetFromExpression: expression ReplacingWellKnownSlot: slotName = ( |
            | 
            checkExpressionDoesNotCreateNewFacet: expression.
            [(expression matchesPattern: '*)') not] assert.
            addFacetFromExpression: expression
                           OldSlot: foyer getWellKnownSlotNamed: slotName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addFacetFromExpression: expression = ( |
            | 
            addFacetFromExpression: expression Parent: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: private'
        
         addFacetFromExpression: expression OldSlot: oldSlot = ( |
             newSlot.
             rr.
            | 
            rr: ui2ResultReporter copy event: process this birthEvent.
            newSlot: us operations evaluateStringAsSlotDeclaration: expression
                                                  OldSlot: oldSlot
                                           ReportErrorsTo: rr. 
            newSlot contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addFacetFromExpression: expression Parent: parentFacet = ( |
             newFacet.
            | 
            newFacet: addFacetFromExpression: expression OldSlot: nil.
            newFacet addUsParentFacet: parentFacet.
            newFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addParent: parentFacet To: facet = ( |
            | facet addUsParentFacet: parentFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         addSlotFromExpression: expression = ( |
            | 
            evaluateStringAsEvaluatorContents: '| ' , expression, ' |'  Receiver: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         checkExpressionDoesNotCreateNewFacet: expression = ( |
            | 
            [(expression matchesPattern: '*)') not] assert).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         core = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker core.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         addWorldRegionToSlotsCreatedEarlier = ( |
            | 
            addWorldRegionToVMSlotsCreatedEarlier.

            "'dimensions' is the world region providing accesss from the world to the 'dimension' dimension"
            addExistingFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion |) dimensions =  dimension').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         addWorldRegionToVMSlotsCreatedEarlier = ( |
            | 
            addExistingFacetFromExpression: '(| self = foyer. worldRegion = abstractTypes |) abstractDimension = abstractDimension'
                    ReplacingWellKnownSlot: 'abstractDimension'.

            addExistingFacetFromExpression: '(| self = foyer. worldRegion = globalConstants |) nil =  nil'
                    ReplacingWellKnownSlot: 'nil'.

            addExistingFacetFromExpression: '(| self = foyer. worldRegion = prototypes |) protoBlock =  protoBlock'
                    ReplacingWellKnownSlot: 'protoBlock'.

            addExistingFacetFromExpression: '(| self = foyer. worldRegion = globalConstants |) foyer =  foyer'
                    ReplacingWellKnownSlot: 'foyer').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: usCore InitialContents: InitializeToExpression: (nil)'
        
         anyDimensionFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: usCore InitialContents: InitializeToExpression: (nil)'
        
         anyWorldRegionFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         createTestData = ( |
             anyCoordinate.
            | 
            anyCoordinate: makeTestDimension.
            makeTester.
            anyCoordinate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: usCore InitialContents: InitializeToExpression: (nil)'
        
         defaultDimensionFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | 
            makeVM. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the dimension dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeAnyDimensionFacet = ( |
            | 
            "'any' is the bottom facet of the dimension dimension, matching all dimensions."

            anyDimensionFacet: addFacetFromExpression: '(| self = foyer |) anyDimension =  ()'
                             Parent: getWellKnownFacet: 'dimension').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeAnyRegionFacet = ( |
            | 
            anyWorldRegionFacet: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion  |) anyRegion =  ()'
              Parent: worldFacet.

            setDefaultCoordinateOfDimension: 'worldRegion' To: anyWorldRegionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeBlockFacets = ( |
             abstractBlock.
             protoBlock.
            | 
            abstractBlock: addFacetFromExpression: '(| self = foyer. worldRegion = abstractTypes |) abstractBlock =  ()'
                                           Parent: foyer.

            harold.
            protoBlock: getWellKnownFacet: protoBlockName.
            [protoBlock usParentFacets removeAll].
            addParent: abstractBlock To: protoBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeBlockSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = abstractBlock. string1 = abstractString. |) 
                        valueWithContextAttribute: string1 Value: facet1 =
                 (
                  addContextAttribute: string1 Value: facet1 Perform: \'value\'
                 )
            '.

            addSlotFromExpression: '
              (| self = abstractBlock. string1 = abstractString. string2 = abstractString. |) 
                        valueWithContextAttribute: string1 Value: facet1 
                                        Attribute: string2 Value: facet2 =
                  (
                   addContextAttribute: string1 Value: facet1 
                                   Attribute: string2 Value: facet2 
                                     Perform: \'value\'
                  )
            '. 

            addSlotFromExpression: '
              (| self = abstractBlock. string1 = abstractString. string2 = abstractString. string3 = abstractString. |) 
                        valueWithContextAttribute: string1 Value: facet1 
                                        Attribute: string2 Value: facet2 
                                        Attribute: string3 Value: facet3 =
                 (
                  addContextAttribute: string1 Value: facet1 
                                  Attribute: string2 Value: facet2 
                                  Attribute: string3 Value: facet3 
                                    Perform: \'value\'
                 )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeBooleanFacets = ( |
             abstractBooleanFacet.
             f.
            | 
            abstractBooleanFacet: addFacetFromExpression: '(| self = foyer. worldRegion = abstractTypes |) abstractBoolean =  ()'
                          Parent: foyer.

            addFacetFromExpression: '(| self = foyer. worldRegion = globalConstants |) true =  ()'
                            Parent: abstractBooleanFacet.

            addFacetFromExpression: '(| self = foyer. worldRegion = globalConstants|) false =  ()'
                            Parent: abstractBooleanFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeBooleanSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = true |) not = ( false ).
              (| self = false |) not = ( true ).

              (| self = true. trueBlock = abstractBlock. falseBlock = abstractBlock |) 
                ifTrue: trueBlock False: falseBlock = ( trueBlock value ).
              (| self = false. trueBlock = abstractBlock. falseBlock = abstractBlock |) 
                ifTrue: trueBlock False: falseBlock = ( falseBlock value ).

              (| self = abstractBoolean. trueBlock = abstractBlock |) 
                ifTrue: trueBlock = ( ifTrue: trueBlock False: [ nil ] ).
              (| self = abstractBoolean. falseBlock = abstractBlock |) 
                ifFalse: falseBlock = ( ifTrue: [ nil ] False: falseBlock ).
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeCloneSlot = ( |
            | 
            addSlotFromExpression: ' 
              (| self = foyer|) clone = ( _CopyUsFacet )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeCopySlot = ( |
            | 
            addSlotFromExpression: '
              (| self = foyer|) copy = ( clone )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the dimension dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeDefaultDimensionFacet = ( |
            | 
            "'defaultDimension' is the default facet of the dimension dimension (created below). 
             It is currently used just for consistency; it seems unlikely that defaulting in this dimension will actually be useful"

            defaultDimensionFacet: addFacetFromExpression: '(| self = foyer |) defaultDimension =  ()'
                            Parent: getWellKnownFacet: 'abstractDimension').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the dimension dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeDimensionDimension = ( |
            | 
            "'abstractDimension' is the parent of defaultDimension, and specifies the default behavior for all dimensions"
            addFacetFromExpression: '(| self = foyer. |) abstractDimension =  ()'
                            Parent: foyer.

            makeDefaultDimensionFacet.
            makeDimensionFacet.
            makeAnyDimensionFacet.

            setDefaultCoordinateOfDimension: 'dimension' To: anyDimensionFacet.

            remakeSlotsToAddDimensionDimensionToSlotGuards).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the dimension dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeDimensionFacet = ( |
             dimensionFacet.
            | 
            "'dimension' is the dimension whose coordinates are the dimensions. Since it is itself a dimension, it inherits from 'defaultDimension'"

            dimensionFacet: addFacetFromExpression: '(| self = foyer. |) dimension =  ()'
                                            Parent: defaultDimensionFacet.

            "Termporary, to be reset to anyDimension once made" setDefaultCoordinateOfDimension: 'dimension' To: dimensionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeDoSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = foyer. string1 = abstractString. block = abstractBlock. |) 
                              addContextAttribute: string1 Value: facet1 Do: block =
                 (
                  block addContextAttribute: string1 Value: facet1 Perform: \'value\'
                 )
            '.

            addSlotFromExpression: '
              (| self = foyer. string1 = abstractString. string2 = abstractString. block = abstractBlock. |) 
                              addContextAttribute: string1 Value: facet1 
                                        Attribute: string2 Value: facet2 
                                               Do: block =
                  (
                   block addContextAttribute: string1 Value: facet1 
                                   Attribute: string2 Value: facet2 
                                     Perform: \'value\'
                  )
            '. 

            addSlotFromExpression: '
              (| self = foyer. string1 = abstractString. string2 = abstractString. string3 = abstractString. block = abstractBlock. |) 
                              addContextAttribute: string1 Value: facet1 
                                        Attribute: string2 Value: facet2 
                                        Attribute: string3 Value: facet3 
                                               Do: block =
                 (
                  block addContextAttribute: string1 Value: facet1 
                                  Attribute: string2 Value: facet2 
                                  Attribute: string3 Value: facet3 
                                    Perform: \'value\'
                 )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeFacets = ( |
            | 
            makeStandardDimensionsAndCoordinates.

            makeBlockFacets.
            makeBooleanFacets.
            makeNumberFacets.
            makeStringFacets.
            makeOrderedCollectionFacets.


            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeHaltSlot = ( |
            | 
            addSlotFromExpression: '
              (| self = foyer|) halt = ( _Halt )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeNumberFacets = ( |
             slot.
            | 

            addFacetFromExpression: '(| self = foyer. worldRegion = abstractTypes |) abstractNumber = ()'
                            Parent: foyer.
             addWellKnownProxyFacetNamed: 'protoNumber' InitializedTo: 0  InheritingFrom: 'abstractNumber'.

            addExistingFacetFromExpression: '(| self = foyer. worldRegion = prototypes |) protoNumber = protoNumber'
                    ReplacingWellKnownSlot: 'protoNumber').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeNumberSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = abstractNumber. a = abstractNumber|) + a = ( \'+\' __SendTo: self With: a).
              (| self = abstractNumber. a = abstractNumber|) - a = ( \'-\' __SendTo: self With: a).
              (| self = abstractNumber. a = abstractNumber|) * a = ( \'*\' __SendTo: self With: a). 
              (| self = abstractNumber. a = abstractNumber|) / a = ( \'/\' __SendTo: self With: a).
              (| self = abstractNumber. a = abstractNumber|) % a = ( \'%\' __SendTo: self With: a).
              (| self = abstractNumber. a = abstractNumber|) = a = ( \'=\' __SendTo: self With: a).

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            makeFacets.
            makeSlots.
            test.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeOrderedCollectionFacets = ( |
            | 
            addFacetFromExpression: '(| self = foyer.  worldRegion = abstractTypes |) abstractOrderedCollection = ()'
                            Parent: foyer.
            addWellKnownProxyFacetNamed: 'protoOrderedCollection' 
                          InitializedTo: sequence copyRemoveAll  
                         InheritingFrom: 'abstractOrderedCollection'.

            addExistingFacetFromExpression: '(| self = foyer. worldRegion = prototypes |) protoOrderedCollection = protoOrderedCollection'
                    ReplacingWellKnownSlot: 'protoOrderedCollection').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeOrderedCollectionSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = protoOrderedCollection |) copy = ( clone "should be resend.copy, which is not there yet"  _CopyMySelfObject ).
              (| self = abstractOrderedCollection. a = foyer|) add: a = ( __Add: a. self ).
              (| self = protoOrderedCollection. index = abstractNumber |) at: index = ( __At: index )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makePerformSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = foyer. string1 = abstractString. selector = abstractString |) 
                addContextAttribute: string1 Value: facet1 Perform: selector = (
                  |r|
                  r: _ThisContext.
                  r _PrimitiveAddContextFacetNamed: string1 Value: facet1.
                  r __Send: selector
                  )
            '. 

            addSlotFromExpression: ' 
              (| self = foyer. string1 = abstractString. string2 = abstractString. selector = abstractString |) 
                addContextAttribute: string1 Value: facet1 
                          Attribute: string2 Value: facet2 
                            Perform:   selector = (
                  |r|
                  r: _ThisContext.
                  r _PrimitiveAddContextFacetNamed: string1 Value: facet1.
                  r _PrimitiveAddContextFacetNamed: string2 Value: facet2.
                  r __Send: selector
                  )
            '. 

            addSlotFromExpression: ' 
              (| self = foyer. string1 = abstractString. string2 = abstractString. string3 = abstractString. selector = abstractString  |) 
                addContextAttribute: string1 Value: facet1 
                          Attribute: string2 Value: facet2 
                          Attribute: string3 Value: facet3 
                            Perform:   selector = (
                  |r|
                  r: _ThisContext.
                  r _PrimitiveAddContextFacetNamed: string1 Value: facet1.
                  r _PrimitiveAddContextFacetNamed: string2 Value: facet2.
                  r _PrimitiveAddContextFacetNamed: string3 Value: facet3.
                  r __Send: selector
                  )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlots = ( |
            | 
            makeCloneSlot.
            makeCopySlot.
            makePerformSlots.
            makeDoSlots.
            makeHaltSlot.

            makeBlockSlots.
            makeBooleanSlots.
            makeNumberSlots.
            makeStringSlots.
            makeOrderedCollectionSlots.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeStandardDimensionsAndCoordinates = ( |
            | 
            makeDimensionDimension.
            makeWorldRegionDimension).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeStringFacets = ( |
            | 
            addFacetFromExpression: '(| self = foyer.  worldRegion = abstractTypes |) abstractString = ()'
                            Parent: foyer.

            addWellKnownProxyFacetNamed: 'protoString' InitializedTo: '' InheritingFrom: 'abstractString'.

            addExistingFacetFromExpression: '(| self = foyer. worldRegion = prototypes |) protoString = protoString'
                    ReplacingWellKnownSlot: 'protoString').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeStringSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = abstractString. a = abstractString|) , a = ( \',\' __SendTo: self With: a )
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeTestDimension = ( |
             any.
             default.
             dimFacet.
             highMiddle.
             lowMiddle.
            | 

            dimFacet: addFacetFromExpression: '(| self = testData. dimension = dimension. |) testDim =  ()'
                            Parent: defaultDimensionFacet.
            addParent: dimFacet To: anyDimensionFacet.

            default: addFacetFromExpression: '(| self = testData testDim |) dimTop =  ()'
                            Parent: foyer.

            highMiddle: addFacetFromExpression: '(| self = testData testDim |) highMiddle =  ()'
                            Parent: default.

            lowMiddle: addFacetFromExpression: '(| self = testData testDim |) lowMiddle =  ()'
                            Parent: highMiddle.

            any: addFacetFromExpression: '(| self = testData testDim |) bottom =  ()'
                            Parent: lowMiddle.

            addFacetFromExpression: '(| self = testData testDim |) outside =  ()'
                            Parent: foyer. "overall foyer, not dimension foyer"

            any).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeTester = ( |
            | 
            addFacetFromExpression: '(| self = testData |) dispatchTester =  ()'
                            Parent: foyer.

            addSlotFromExpression: '
              (| self = testData dispatchTester |) tacitMethod   = ( \'(| |) tacit\' ).
              (| self = testData dispatchTester. testDim = testData testDim dimTop |) topMethod     = ( \'(| testDim = dimTop |) topMethod\' ).
              (| self = testData dispatchTester. testDim = testData testDim bottom |) bottomMethod  = ( \'(| testDim = bottom |) bottomMethod\' ).
              (| self = testData dispatchTester. testDim = testData testDim outside |) outsideMethod  = ( \'(| testDim = outside |) outsideMethod\' ).
            '.

            "Defaults to catch not-understood cases"
            addSlotFromExpression: '
              (| self = testData dispatchTester. |) topMethod      = ( \'Not understood\' ).
              (| self = testData dispatchTester. |) bottomMethod   = ( \'Not understood\' ).
              (| self = testData dispatchTester. |) outsideMethod  = ( \'Not understood\' ).
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeTopLevelWorldRegions = ( |
             facet.
            | 

            facet: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion |) prototypes =  ()'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion |) abstractTypes =  ()'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion  |) globalConstants =  ()'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion  |) examples =  ()'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet.

            facet: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion  |) testData =  ()'
              Parent: worldFacet.
            addParent: facet To: anyWorldRegionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeWorldFacet = ( |
            | 
            "'world' is the all-encompassing world region, and the default facet of the worldRegion dimension"

            worldFacet: addFacetFromExpression: '(| self = foyer. dimension = worldRegion |) world =  ()'
                                        Parent: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeWorldRegionDimension = ( |
             facet.
            | 

            makeWorldRegionFacet.
            makeWorldFacet.      "foyer"
            makeAnyRegionFacet.  "bottom"

            makeTopLevelWorldRegions.
            addWorldRegionToSlotsCreatedEarlier).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the world region dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         makeWorldRegionFacet = ( |
             worldRegionFacet.
            | 

            worldRegionFacet: addFacetFromExpression: '(| self = foyer. dimension = dimension |) worldRegion =  ()'
                            Parent: defaultDimensionFacet.

            addParent: worldRegionFacet To: anyDimensionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the dimension dimension\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         remakeSlotsToAddDimensionDimensionToSlotGuards = ( |
            | 
            "'defaultDimension', 'andDimension' and 'dimension' itself are coordinates of 'dimension'. Remake them to set the dimension coordinates."

            addExistingFacetFromExpression: '(| self = foyer. dimension = dimension |) defaultDimension =  defaultDimension'
                    ReplacingWellKnownSlot: 'defaultDimension'.

            addExistingFacetFromExpression: '(| self = foyer. dimension = dimension |) anyDimension = anyDimension'
                    ReplacingWellKnownSlot: 'anyDimension'.

            addExistingFacetFromExpression: '(| self = foyer. dimension = dimension |) dimension =  dimension'
                    ReplacingWellKnownSlot: 'dimension').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test = ( |
            | 
            [warning: 'Testing core at ' , time current timeString, ' ...'].
            "Block slots are tested by the Hello World example"
            testBooleanSlots.
            testNumberSlots.
            testOrderedCollectionSlots.
            testStringSlots. 

            testDispatchCases.

            [warning: ' ... tests succeeded']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test1A_TopTop = ( |
            | 
            test:   [ [testData dispatchTester topMethod] valueWithContextAttribute: 'testDim' Value: testData testDim dimTop ]
            Expect: '(| testDim = dimTop |) topMethod').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test1E_TopTacit = ( |
            | 
            test:   [ [testData dispatchTester tacitMethod] valueWithContextAttribute: 'testDim' Value: testData testDim dimTop ]
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test4A_XTop = ( |
            | 
            test:   [ [testData dispatchTester topMethod] valueWithContextAttribute: 'testDim' Value: examples ]
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test4C_XBottom = ( |
            | 
            test:   [ [testData dispatchTester bottomMethod] valueWithContextAttribute: 'testDim' Value: examples ]
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test4D_XOutside = ( |
            | 
            test:   [ [testData dispatchTester outsideMethod] valueWithContextAttribute: 'testDim' Value: examples ]
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test4E_XTacit = ( |
            | 
            test:   [ [testData dispatchTester tacitMethod] valueWithContextAttribute: 'testDim' Value: examples ]
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test5A_TacitTop = ( |
            | 
            test: [testData dispatchTester topMethod]
            Expect: 'Not understood').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         test5E_TacitTacit = ( |
            | 
            test: [testData dispatchTester tacitMethod]
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testAccessToSlotNamed: name Value: facet = ( |
            | 

            p1: us facets getWellKnownFacet: 'prototypes'.

            [p1 == p0] assert.

            p2: us operations evaluateStringAsEvaluatorContents: 'prototypes'
                         Receiver: foyer.

            [p2 == p0] assert).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testBooleanSlots = ( |
            | 
            test: [ true not ] Expect: getWellKnownFacet: 'false'.
            test: [ false not ] Expect: getWellKnownFacet: 'true'.

            test: [ true ifTrue: ['T'] False: ['F'] ]  Expect: 'T'.
            test: [ false ifTrue: ['T'] False: ['F'] ]  Expect: 'F'.

            test: [ true ifTrue: ['T'] ]  Expect: 'T'.
            test: [ false ifTrue: ['T'] ]  Expect: getWellKnownFacet: 'nil'.

            test: [ true ifFalse: ['F'] ]  Expect: getWellKnownFacet: 'nil'.
            test: [ false ifFalse: ['F'] ]  Expect: 'F').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testDispatchCases = ( |
             anyCoordinate.
            | 
            anyCoordinate: createTestData.

            testTacitCallingContextCases.
            setDefaultCoordinateOfDimension: 'testDim' To: anyCoordinate.
            testExplicitCallingContextCases).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testExplicitCallingContextCases = ( |
            | 
            test1A_TopTop.
            test1E_TopTacit.

            test4A_XTop.
            test4C_XBottom.
            test4D_XOutside.
            test4E_XTacit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testNumberSlots = ( |
            | 
            test: '( 3 + 4 ) - 5' Expect: 2.
            harold. "TODO: the following requires an Us parameter, not Self, because not a proxyFacet. Sort this out"
            test: '9 / 4' Expect: 2.
            test: '9 % 4' Expect: 1.
            test: '(( 3 + 4 ) - 5) = 2' Expect: getWellKnownFacet: 'true'.
            test: '(( 3 * 4 ) - 5) = 2' Expect: getWellKnownFacet: 'false'.

            [ | c |

            [(getWellKnownFacet: 'abstractNumber') usParentFormals size = 4] "assert".
            c: us context copy.
            c receiverFacet: foyer.
            c lookupStartForSelf: foyer.
            c receiverFacet: 3 asUsNumber.
            c positionalFacetAt: 1 Put: 4 asUsNumber.
            [ |r|
              r: us operations send: '+' ToContext: c.
              r asSelfObject = 7
            ] assert.

            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testOrderedCollectionSlots = ( |
            | 
            shell xxx: true.
            test: [ (protoOrderedCollection copy add: 'abc')          at: 0]  Expect: 'abc'.
            test: [((protoOrderedCollection copy add: 'abc') add: 55) at: 1]  Expect: 55).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testSecondTop = ( |
            | 
            test:   [ [testData dispatchTester tacitMethod] valueWithContextAttribute: 'testDim' Value: testData testDim foyer ]
            Expect: '(| |) tacit').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testStringSlots = ( |
            | 
            test: ['a','b'] Expect: 'ab').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: testing\x7fCategory: dispatch cases\x7fModuleInfo: Module: usCore InitialContents: FollowSlot'
        
         testTacitCallingContextCases = ( |
            | 
            test5A_TacitTop.
            test5E_TacitTacit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: usCore InitialContents: InitializeToExpression: (nil)'
        
         worldFacet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: core & hello world\x7fModuleInfo: Module: usCore InitialContents: FollowSlot\x7fVisibility: public'
        
         setDefaultCoordinateOfDimension: dimName To: aFacet = ( |
            | 
            us setDefaultCoordinateOfDimension: dimName To: aFacet).
        } | ) 



 '-- Side effects'

 globals modules usCore postFileIn
