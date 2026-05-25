 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         experiments = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker experiments.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         addMySlots: expression = ( |
            | 
            addSlotsFromExpression: '{ experiment => ', experimentName, ' :: ', expression, '}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: alternate privacy experiment\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         alternatePrivacyExperiment = ( |
            | 
            makeAPE.
            doAPE).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: alternate privacy experiment\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         doAPE = ( |
            | 
            test: ' { alternatePrivacyExperiment. person => \'david\'.  kindOfSlot => \'factoid\' } lastName '
            Expect: 'ungar'.

            test: ' { alternatePrivacyExperiment. person => \'harold\'. kindOfSlot => \'factoid\'  } lastName '
            Expect: 'ossher'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         eval: s = ( |
            | evaluateStringAsEvaluatorContents: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: InitializeToExpression: (nil)'
        
         experiments <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: alternate privacy experiment\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeAPE = ( |
            | 
            addSlotsFromExpression: ' 
            { alternatePrivacyExperiment ::
              { kindOfSlot => \'factoid\'  ::
                   { person => \'david\'.  :: lastName = \'ungar\' }
                   { person => \'harold\'. :: lastName = \'ossher\' }
                   { person => \'mark\'.   :: lastName = \'wegman\' }
              }

            }
            '.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: control structure experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeAndTestContextBasedControlStructuresExperiment = ( |
            | 
            makeControlStructureDimension.
            "Note: Fails if rcvr = foyer is omitted"
            addSlotsFromExpression: '
              { rcvr => foyer. controlStructures =>> javaLike  ::
                if: { condition => true  } Then: { thenBlock => abstractBlock } = ( thenBlock value ).
                if: { condition => false } Then: { thenBlock => abstractBlock } = ( nil ).
              }'.


            addSlotsFromExpression: '
              {  controlStructures =>> selfLike  ::
                { rcvr => true   ::   ifTrue: { trueBlock => abstractBlock } = ( trueBlock value ). }
                { rcvr => false  ::   ifTrue: { trueBlock => abstractBlock } = ( nil             ). }
              }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: context accessing experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeContextAccessingExperiment = ( |
            | 
            addFacetFromExpression: '
              { rcvr => experiments  ::  contextAccessing = () }  
            '
                Parent: foyer.

            makeContextAttributeNamedSlot.
            makeTestContextAttributeAccess.

            testContextAttributeNamed.
            testContextAttributeAccessViaDispatch).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: context accessing experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeContextAttributeNamedSlot = ( |
            | 
            addSlotsFromExpression: '
              { worldRegion => experiments :: contextAttributeNamed: name = (
                      |r|
                      r: _ThisContext.
                      r _PrimitiveGetContextFacetNamed: name.
                  )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: control structure experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeControlStructureDimension = ( |
             controlStructures.
            | 

            controlStructures: addFacetFromExpression: '{ rcvr => foyer  ::  controlStructures =  () }'
              Parent: foyer.

            addFacetFromExpression: '{ rcvr => controlStructures.  ::  javaLike =  () }'
              Parent: controlStructures.

            addFacetFromExpression: '{ rcvr => controlStructures.  ::  selfLike =  () }'
              Parent: controlStructures).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeEnvironmentDimension = ( |
             any.
             default.
             environmentFacet.
             personal.
             work.
            | 

            environmentFacet: addFacetFromExpression: '{ worldRegion => allWorldRegions experiments  ::  allEnvironments =  () }'.

            default: addFacetFromExpression: '{ rcvr => allEnvironments  ::  default =  () }'
                            Parent: foyer.

            work: addFacetFromExpression: '{ rcvr => allEnvironments  ::  work =  () }'
                            Parent: default.

            personal: addFacetFromExpression: '{ rcvr => allEnvironments  ::  personal =  () }'
                            Parent: default.

            any: addFacetFromExpression: '{ rcvr => allEnvironments  ::  any =  () }'
                            Parent: work.

            any addKorzParentFacet: personal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: error handling experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeErrorHandlingExperiment = ( |
            | 
            makeStandardErrorHandlers.

            addSlotsFromExpression: '
               { ::  errorMethod = ( (contextAttributeNamed: \'errorHandler\') 
                                                      value: \'message\' 
                                                       With: \'context\'
                                                       With: \'selector\'
                                                       With: \'foundCollection\'
                                                 ) }  
             '.


            "{ message => 'message'. contenxt => 'context"

             testErrorHandling).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeExperimentFacet = ( |
            | 
            addSlotsFromExpression: experimentName, ' = ()'.
            setDefaultCoordinateOfDimension: 'experiment' To: getWellKnownFacet: experimentName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeGraph1 = ( |
            | 
            addFacetFromExpression: '{ rcvr => experiments graphs  ::  graph1 = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph1  ::  samNode = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph1  ::  daveNode = () }'.

            addFacetFromExpression: '{ rcvr => experiments graphs graph1 samNode ::  name = \'Sam\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph1 samNode ::  age = 54 }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph1 samNode ::  knows = experiments graphs graph1 daveNode }'.

            addFacetFromExpression: '{ rcvr => experiments graphs graph1 daveNode ::  name = \'Dave\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph1 daveNode ::  age = 60 }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeGraph2 = ( |
            | 
            addFacetFromExpression: '{ rcvr => experiments graphs  ::  graph2 = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2  ::  samNode = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2  ::  daveNode = () }'.

            addFacetFromExpression: '{ rcvr => experiments graphs graph2 samNode ::  name = \'Sam\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 samNode ::  age = 54 }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 samNode ::  knows = experiments graphs graph2 daveNode }'.

            addFacetFromExpression: '{ rcvr => experiments graphs graph2 daveNode ::  firstName = \'Dave\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 daveNode ::  lastName = \'Ungar\' }'.
            addSlotsFromExpression: '{ rcvr => experiments graphs graph2 daveNode ::  name = ( firstName , \' \', lastName ) }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 daveNode ::  age = 60 }'.


            addFacetFromExpression: '{ rcvr => experiments graphs graph2  ::  haroldNode = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 haroldNode ::  name = \'Harold\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 haroldNode ::  city = \'NY\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph2 haroldNode ::  knows = experiments graphs graph2 samNode}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeGraph3 = ( |
            | 
            addFacetFromExpression: '{ rcvr => experiments graphs  ::  graph3 = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3  ::  samNode = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3  ::  daveNode = () }'.

            addFacetFromExpression: '{ rcvr => experiments graphs graph3 samNode ::  name = \'Sam\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 samNode ::  age = 54 }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 samNode. environment => allEnvironments work  ::  knows = experiments graphs graph3 daveNode }'.

            addFacetFromExpression: '{ rcvr => experiments graphs graph3 daveNode ::  name = \'Dave\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 daveNode ::  age = 60 }'.


            addFacetFromExpression: '{ rcvr => experiments graphs graph3  ::  haroldNode = () }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 haroldNode ::  name = \'Harold\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 haroldNode ::  city = \'NY\' }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 haroldNode. environment => allEnvironments work      ::  knows = experiments graphs graph3 samNode }'.
            addFacetFromExpression: '{ rcvr => experiments graphs graph3 haroldNode. environment => allEnvironments personal  ::  knows = experiments graphs graph3 daveNode }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeGraphExperiments = ( |
            | 
            addFacetFromExpression: '
              { rcvr => experiments  ::  graphs = ()  } 
            '
                Parent: foyer.

            makeGraph1.
            makeGraph2.

            makeEnvironmentDimension.
            setDefaultCoordinateOfDimension: 'environment' To: evaluateStringAsEvaluatorContents: 'allEnvironments any'.
            makeGraph3.
            testGraph3.
            removeDefaultCoordinateOfDimension: 'environment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment1_ExpressionSequence = ( |
            | 
            evaluateStringAsEvaluatorContents: '
                 | capabilityObject = () |
                 (| { rcvr => allWorldRegions experiments objectCapability. capability => capabilityObject :: 
                          protectedMethod1 = (\'Protected method called successfully\') } |).

                 (| { rcvr => allWorldRegions experiments objectCapability. :: boundaryMethod1 =
                      ( | c = capabilityObject |
                        { capability => c } protectedMethod1 
                      )
                 } |)
            '.


                           test: ' allWorldRegions experiments objectCapability protectedMethod1 '
            ExpectNotUnderstood: 'protectedMethod1'.

              test: ' allWorldRegions experiments objectCapability boundaryMethod1 '
            Expect: 'Protected method called successfully').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment1a_ExpressionSequenceShowingLeak = ( |
            | 
            addSlotsFromExpression: '
                {  rcvr => allWorldRegions experiments objectCapability. capability  :: 
                          unprotectedMethod1a = ( 
                              | leakedCapability |
                              leakedCapability: capability.
                               "Call some other method to take and store the capability object"
                              supbidiaryProtectedMethod1a
                 ) }
            '.


            addSlotsFromExpression: '
                 { rcvr => allWorldRegions experiments objectCapability. capability :: 
                          unprotectedMethod1a = (
                              | leakedCapability |
                              leakedCapability: capability.
                              "Call some other method to take and store the capability object"
                              supbidiaryProtectedMethod1a

                    ) }
            '.

            evaluateStringAsEvaluatorContents: '
                 | capabilityObject = () |
                 (| { rcvr => allWorldRegions experiments objectCapability. capability => capabilityObject :: 
                          protectedMethod1a = (unprotectedMethod1a) } |).

                 (| { rcvr => allWorldRegions experiments objectCapability. capability => capabilityObject :: 
                          supbidiaryProtectedMethod1a = (\'Subsidiary protected method called successfully\') } |).

                 (| { rcvr => allWorldRegions experiments objectCapability. :: boundaryMethod1a =
                      ( | c = capabilityObject |
                        { capability => c } protectedMethod1a 
                      ) } |)
            '.


                           test: ' allWorldRegions experiments objectCapability protectedMethod1 '
            ExpectNotUnderstood: 'protectedMethod1'.

              test: ' allWorldRegions experiments objectCapability boundaryMethod1a '
            Expect: 'Subsidiary protected method called successfully').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment2_FacetDefinition_BAD = ( |
            | 
            "Does not work because previous slots are not in scope -- dmu"

            evaluateStringAsEvaluatorContents: '
                 (|
                    { static => true. :: createProtectedAndBoundaryMethod = (|
                       capabilityObject = ().
                       dummy1 = (| { rcvr => allWorldRegions experiments objectCapability. capability => capabilityObject :: 
                              protectedMethod2 = (\'Protected method called successfully\') } |).

                       dummy2 = (| { rcvr => allWorldRegions experiments objectCapability. :: 
                              boundaryMethod2 =
                                ( | c = capabilityObject |
                                  { capability => c } protectedMethod2
                                )
                          } |)
                     halt. |) } |)
            '.


                           test: ' allWorldRegions experiments objectCapability protectedMethod2 '
            ExpectNotUnderstood: 'protectedMethod1'.

              test: ' allWorldRegions experiments objectCapability boundaryMethod2 '
            Expect: 'Protected method called successfully').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment3_UseOfGuard = ( |
            | 
            "Reflection support must ensure that the empty capability object cannot escape (e.g., be picked up and used in context expressions)"

            addSlotsFromExpression: '
                { capabilityObject => () ::  objectCapabilitySlots = 
                    (| 
                        { rcvr => allWorldRegions experiments objectCapability ::
                            { secure_capability => capabilityObject  :: protectedMethod3 = ( \'Protected method called successfully\' ) } 
                            {                                        :: boundaryMethod3  = ( | c = capabilityObject | { secure_capability => c } protectedMethod3 ) }
                        }
                     |)
                }

            '.

                           test: ' allWorldRegions experiments objectCapability protectedMethod3 '
            ExpectNotUnderstood: 'protectedMethod3'.

              test: ' allWorldRegions experiments objectCapability boundaryMethod3 '
            Expect: 'Protected method called successfully').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment4_UseOfGuard_Leak = ( |
            | 
            "Reflection support must ensure that the empty capability object cannot escape (e.g., be picked up and used in context expressions)"

            addSlotsFromExpression: '
                { capabilityObject => () ::  objectCapabilitySlots = 
                    (| 
                        { rcvr => allWorldRegions experiments objectCapability ::
                            { capability => capabilityObject  :: protectedMethod4 = ( unprotectedMethod4 ) } 
                            {                                 :: boundaryMethod4  = ( | c = capabilityObject | { capability => c } protectedMethod4 ) }

                            { capability                      :: unprotectedMethod4 = ( 
                                                                    | leakedCapability |
                                                                    leakedCapability: capability.
                                                                    "Call some other method to take and store the capability object"
                                                                    subsidiaryProtectedMethod4 ) }
                            { capability => capabilityObject  :: subsidiaryProtectedMethod4 = (\'Subsidiary protected method called successfully\') }

                        }
                     |)
                }

            '.

                           test: ' allWorldRegions experiments objectCapability protectedMethod4 '
            ExpectNotUnderstood: 'protectedMethod4'.

              test: ' allWorldRegions experiments objectCapability boundaryMethod4 '
            Expect: 'Subsidiary protected method called successfully').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment5_UseOfGuard_LeakPlugged = ( |
            | 
            "Reflection support must ensure that the empty capability object cannot escape (e.g., be picked up and used in context expressions)"

            addSlotsFromExpression: '
                { capabilityObject => () ::  objectCapabilitySlots = 
                    (| 
                        { rcvr => allWorldRegions experiments objectCapability ::
                            { secure_cap => capabilityObject  :: protectedMethod5 = ( unprotectedMethod5 ) } 
                            {                                 :: boundaryMethod5  = ( | c = capabilityObject | { secure_cap => c } protectedMethod5 ) }

                            { secure_cap                      :: unprotectedMethod5 = ( 
                                                                    | leakedCapability |
                                                                    leakedCapability: secure_cap.
                                                                    "Call some other method to take and store the capability object"
                                                                    subsidiaryProtectedMethod5 ) }
                            { secure_cap => capabilityObject  :: subsidiaryProtectedMethod5 = (\'Subsidiary protected method called successfully\') }

                        }
                     |)
                }
            '
            ExpectError: 'guard component starting with: secure_ must have a coordinate').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiment9 = ( |
            | 
            "Approach not pursued: providing evaluation context explicitly"
            evaluateStringAsEvaluatorContents: '
                 | capabilityObject = () |
                 (| { capability => capabilityObject :: protectedMethod = (\'Protected method called successfully\') } |).

                 (| { :: boundaryMethod =
                      (
                        { capability => capabilityObject } protectedMethod 
                      )
                 } |)
            ' in context: tbd).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: objectCapabilityExperiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeObjectCapabilityExperiments = ( |
            | 
            addFacetFromExpression: ' { rcvr => allWorldRegions experiments :: objectCapability = () } '.

            makeObjectCapabilityExperiment1_ExpressionSequence.
            makeObjectCapabilityExperiment1a_ExpressionSequenceShowingLeak.

            [makeObjectCapabilityExperiment2_FacetDefinition_BAD].
            makeObjectCapabilityExperiment3_UseOfGuard.
            makeObjectCapabilityExperiment4_UseOfGuard_Leak.
            makeObjectCapabilityExperiment5_UseOfGuard_LeakPlugged.

            [makeObjectCapabilityExperiment9].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            experiments: addFacetFromExpression: '{ rcvr => allWorldRegions. worldRegion => allWorldRegions world. ::  experiments =  () }'
              Parent: foyer.
            addParent: experiments To: anyWorldRegionFacet.

            harold.
            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions world. ::  experiments =  allWorldRegions experiments }'.


            [makeAndTestContextBasedControlStructuresExperiment].

            makeTacitExperiment.
            makeGraphExperiments.
            makeContextAccessingExperiment.
            makeSimpleErrorHandlingExperiment.
            makeErrorHandlingExperiment.
            makeObjectCapabilityExperiments.
            makeTemporalityExperiments.

            nonRcvrFacetsExperiment makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: error handling experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeSimpleErrorHandlingExperiment = ( |
            | 
            addFacetFromExpression: '
              { rcvr => experiments  ::  errorHandling = () }  
            '
                Parent: foyer.

            addSlotsFromExpression: '
              { rcvr => experiments errorHandling ::  simpleErrorMethod = ( halt. (contextAttributeNamed: \'errorHandler\') value: \'a message\'  ) }  
            '.

            addSlotsFromExpression: '
              { :: simpleErrorMethod = ( (contextAttributeNamed: \'errorHandler\') value: \'a message\'  ) }  
            '.

            testSimpleErrorhandling).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: error handling experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeStandardErrorHandlers = ( |
            | 
            addSlotsFromExpression: '
               { rcvr => foyer :: returningErrorHandler = (  
                    [ | :message. :context. ":selector. :foundCollection" | ^ \'error: \' , message ] 
               )}
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: tacit dimension experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeTacitExperiment = ( |
             p.
            | 

            addFacetFromExpression: '
              { rcvr => experiments  ::  tacit = () }  
            '
                Parent: foyer.

            addFacetFromExpression: '
              { rcvr => experiments tacit  ::  p = () }
            '
                Parent: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: context accessing experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeTestContextAttributeAccess = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => experiments contextAccessing ::  testContextAttributeAccess = ( contextAttributeNamed: \'foo\'  ) }  
            '.

            addSlotsFromExpression: '
              { worldRegion => experiments ::  testContextAttributeAccess: name = ( contextAttributeNamed: name  ) }  
            '.

            addSlotsFromExpression: '
              { worldRegion => experiments ::  testContextAttributeAccessH: name = ( halt. contextAttributeNamed: name  ) }  
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: non-rcvr facets\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         nonRcvrFacetsExperiment = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'nonRcvrFacetsExperiment' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker experiments nonRcvrFacetsExperiment.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'nonRcvrFacetsExperiment' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         experimentName = 'nonRcvrFacet'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'nonRcvrFacetsExperiment' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet. 

            addMySlots: '
              andy = ().
              joe = ().

              p = (). "printer"
            '.


            addMySlots: ' 
              { rcvr => p :: print: value = ( value ) }

              { who => joe.  :: employer = \'IBM\'.    }
              { who => andy. :: employer = \'Oracle\'. }
            '.

            addMySlots: '
              {      :: printEmployeeV1On: aPrinter = ( aPrinter print: rcvr employer ) }
              {      :: printEmployeeV2On: aPrinter = ( aPrinter print: employer ) }
              { rcvr :: printEmployeeV3On: aPrinter = ( aPrinter print: rcvr employer ) }
              { rcvr :: printEmployeeV4On: aPrinter = ( aPrinter print: { who => rcvr } employer ) }
              {      :: printEmployeeV5On: aPrinter = ( aPrinter print: employer ) }
            '.

              test: 'andy printEmployeeV1On: p'
            ExpectNotUnderstood: 'rcvr'.

              test: 'andy printEmployeeV2On: p'
            ExpectNotUnderstood: 'employer'.

              test: 'andy printEmployeeV3On: p'
            ExpectNotUnderstood: 'employer'.

              test: 'andy printEmployeeV4On: p'
            Expect: 'Oracle'.

              test: '{ who => andy } printEmployeeV2On: p'
            Expect: 'Oracle'.

            removeDefaultCoordinateOfDimension: 'experiment'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'nonRcvrFacetsExperiment' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: relation expreiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         relationExperiment1 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker experiments relationExperiment1.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         experimentName = 'relation1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeExampleSlots = ( |
            | 
            addMySlots: '
              "Example objects"
              exSource  = ().
              exTarget1 = ().
              exTarget2 = ().

            '.

            addMySlots: ' 
              "Slots with no rel dimension"
              { rcvr => exSource :: 
                  t1 <- ().
                  t2 <- ().
                  initialize = (
                    t1: exTarget1.
                    t2: relPairPrototype copy.
                    t2 source: rcvr.
                    t2 target: exTarget2
                    ) }
            '.

            addMySlots: ' 
              "Slots with rel => relation"
              { rcvr => exSource. rel => relation :: 
                  t1 = (| r | r: relPairPrototype copy. r source: rcvr. r target: {-rel} t1. r) 
              }

            '.

            addMySlots: ' 
              "Slots with rel => reference"
              { rcvr => exSource. rel => reference :: t2 = ( {-rel} t2 target ) }

            '.


            evaluateStringAsEvaluatorContents: '
              exSource initialize
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.
            makeRelationSupport.
            makeExampleSlots.

            "test."

            "

              { who => joe.  :: employer = \'IBM\'.    }
              { who => andy. :: employer = \'Oracle\'. }
            '.

            addMySlots: '
              {      :: printEmployeeV1On: aPrinter = ( aPrinter print: rcvr employer ) }
              {      :: printEmployeeV2On: aPrinter = ( aPrinter print: employer ) }
              { rcvr :: printEmployeeV3On: aPrinter = ( aPrinter print: rcvr employer ) }
              { rcvr :: printEmployeeV4On: aPrinter = ( aPrinter print: { who => rcvr } employer ) }
              {      :: printEmployeeV5On: aPrinter = ( aPrinter print: employer ) }
            '.

              test: 'andy printEmployeeV1On: p'
            ExpectNotUnderstood: 'rcvr'.

              test: 'andy printEmployeeV2On: p'
            ExpectNotUnderstood: 'employer'.

              test: 'andy printEmployeeV3On: p'
            ExpectNotUnderstood: 'employer'.

              test: 'andy printEmployeeV4On: p'
            Expect: 'Oracle'.

              test: '{ who => andy } printEmployeeV2On: p'
            Expect: 'Oracle'.

            removeDefaultCoordinateOfDimension: 'experiment'.

            self

            "

            process this birthEvent sourceHand attach:
            (evaluateStringAsEvaluatorContents: 'relation1 exSource') asMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         makeRelationSupport = ( |
            | 
            addMySlots: '
              "Relation parents"
              relPairParent = (| parent* = foyer |).

              "Coordinates in the rel dimension"
              relation  = ().
              reference = ().

            '.

            addMySlots: ' 
              "Prototypes"
              relPairPrototype = (| parent* = relPairParent |).

            '.

            addMySlots: ' 
              "Prototype slots"
              { rcvr => relPairPrototype :: source <- () }
              { rcvr => relPairPrototype :: target <- () }

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> 'relationExperiment1' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         test = ( |
            | tbd).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: context accessing experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         testContextAttributeAccessViaDispatch = ( |
            | 
             "TBD"
            failingtest: 'TBD'  
            Expect: anyWorldRegionFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: context accessing experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         testContextAttributeNamed = ( |
            | 
            test: ' { foo => 99 } contextAttributeNamed: \'foo\' '
            Expect: 99.

            test: ' { bar => 99 } testContextAttributeAccess: \'bar\''
            Expect: 99.

            test: ' { baz => 99. rcvr => experiments contextAccessing } testContextAttributeAccess: \'baz\''
            Expect: 99.

            test: ' ( { blockAttr => [ \'block value\' ] } testContextAttributeAccess: \'blockAttr\') value '
            Expect: 'block value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: control structure experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         testControlStructures = ( |
            | 
            test: ' {controlStructures =>> javaLike } if: true Then: [\'true\'] '
            Expect: 'true'.

            test: ' (controlStructures =>> javaLike } if: false Then: [\'true\'] '
            Expect: getWellKnownFacet: 'nil'.

            test: ' {controlStructures =>> selfLike. rcvr => true} true ifTrue: [\'true\'] '
            Expect: 'true'.


            test: ' { controlStructures =>> selfLike. rcvr => false } ifTrue: [\'true\'] '
            Expect: getWellKnownFacet: 'nil'.


            [harold "how code test that message not understood deep in the system?"
            test: ' { controlStructures =>> selfLike } if: true Then: [\'success\'] '
            Expect: notUnderstood.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: error handling experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         testErrorHandling = ( |
            | 
            test: ' {errorHandler => [ | :reason. :context. :selector. :foundCollection | ^ \'error: \' , reason ]  } errorMethod '
            Expect: 'error: message'.

            failingtest: ' {errorHandler => [^ rcvr] } errorMethod '
            Expect: foyer
            "ExpectNotUnderstood: 'rcvr'. doIts no longer get rcvr dimension for free").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         testGraph3 = ( |
            | 
              test: ' { environment => allEnvironments work.      rcvr => experiments graphs graph3 haroldNode } knows name '
            Expect: 'Sam'.

              test: ' { environment => allEnvironments personal.  rcvr => experiments graphs graph3 haroldNode } knows name '
            Expect: 'Dave'.


              test: ' { environment => allEnvironments work.  rcvr => experiments graphs graph3 samNode } knows name '
            Expect: 'Dave'.

              test: ' { environment => allEnvironments any.  rcvr => experiments graphs graph3 samNode } knows name '
            Expect: 'Dave'.



            "These lead to errors:

             test: ' { environment => allEnvironments any.  rcvr => experiments graphs graph3 haroldNode } knows name '
            Expect: 'ambiguous'.

              test: ' { environment => allEnvironments personal.  rcvr => experiments graphs graph3 samNode } knows name '
            Expect: 'not found'.

              test: ' { environment => allEnvironments defaultEnvironment.  rcvr => experiments graphs graph3 haroldNode } knows name '
            Expect: 'ambiguity'.

              test: [experiments graphs graph3 haroldNode knows name]
            Expect: 'ambiguity'.


              test: ' { environment => allEnvironments nil.  rcvr => experiments graphs graph3 haroldNode } knows name '
            Expect: 'ambiguity'.

            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: error handling experiments\x7fModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         testSimpleErrorhandling = ( |
            | 
            test: ' {errorHandler => [ | :msg | ^ \'error: \' , msg ] } simpleErrorMethod '
            Expect: 'error: a message').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         korzExperiments = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzExperiments.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzExperiments' -> () From: ( | {
         'ModuleInfo: Module: korzExperiments InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzExperiments postFileIn
