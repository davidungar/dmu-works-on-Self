 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         usExperiments = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usExperiments.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usExperiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         experiments = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker experiments.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: InitializeToExpression: (nil)'
        
         experiments <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: control structure experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeAndTestContextBasedControlStructuresExperiment = ( |
            | 
            makeControlStructureDimension.
            "Note: Fails if self = foyer is omitted"
            addSlotFromExpression: '
              (| self = foyer. controlStructures = controlStructures javaLike. condition = true |) 
                if: condition Then: thenBlock = ( thenBlock value ).
              (| self = foyer. controlStructures = controlStructures javaLike. condition = false |) 
                if: condition Then: thenBlock = ( nil ).
            '.


            addSlotFromExpression: '
              (| self = true. controlStructures = controlStructures selfLike. |) 
                ifTrue: trueBlock = ( trueBlock value ).
              (| self = false. controlStructures = controlStructures selfLike. |) 
                ifTrue: trueBlock = ( nil ).
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: control structure experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeControlStructureDimension = ( |
             controlStructures.
            | 

            controlStructures: addFacetFromExpression: '(| self = foyer. worldRegion = dimensions |) controlStructures =  ()'
              Parent: foyer.

            addFacetFromExpression: '(| self = controlStructures. |) javaLike =  ()'
              Parent: controlStructures.

            addFacetFromExpression: '(| self = controlStructures. |) selfLike =  ()'
              Parent: controlStructures).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeEnvironmentDimension = ( |
             any.
             default.
             environmentFacet.
             personal.
             work.
            | 

            environmentFacet: addFacetFromExpression: '(| self = foyer. dimension = dimension. worldRegion = experiments |) environment =  ()'
                            Parent: defaultDimensionFacet.
            addParent: environmentFacet To: anyDimensionFacet.

            default: addFacetFromExpression: '(| self = environment |) default =  ()'
                            Parent: foyer.

            work: addFacetFromExpression: '(| self = environment |) work =  ()'
                            Parent: default.

            personal: addFacetFromExpression: '(| self = environment |) personal =  ()'
                            Parent: default.

            any: addFacetFromExpression: '(| self = environment |) any =  ()'
                            Parent: work.

            any addUsParentFacet: personal.

            setDefaultCoordinateOfDimension: 'environment' To: any).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeGraph1 = ( |
            | 
            addFacetFromExpression: '(| self = experiments graphs |) graph1 = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph1 |) samNode = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph1 |) daveNode = ()'.

            addFacetFromExpression: '(| self = experiments graphs graph1 samNode|) name = \'Sam\''.
            addFacetFromExpression: '(| self = experiments graphs graph1 samNode|) age = 54'.
            addFacetFromExpression: '(| self = experiments graphs graph1 samNode|) knows = experiments graphs graph1 daveNode'.

            addFacetFromExpression: '(| self = experiments graphs graph1 daveNode|) name = \'Dave\''.
            addFacetFromExpression: '(| self = experiments graphs graph1 daveNode|) age = 60').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeGraph2 = ( |
            | 
            addFacetFromExpression: '(| self = experiments graphs |) graph2 = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph2 |) samNode = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph2 |) daveNode = ()'.

            addFacetFromExpression: '(| self = experiments graphs graph2 samNode|) name = \'Sam\''.
            addFacetFromExpression: '(| self = experiments graphs graph2 samNode|) age = 54'.
            addFacetFromExpression: '(| self = experiments graphs graph2 samNode|) knows = experiments graphs graph2 daveNode'.

            addFacetFromExpression: '(| self = experiments graphs graph2 daveNode|) firstName = \'Dave\''.
            addFacetFromExpression: '(| self = experiments graphs graph2 daveNode|) lastName = \'Ungar\''.
            addSlotFromExpression: '(| self = experiments graphs graph2 daveNode|) name = ( firstName , \' \', lastName )'.
            addFacetFromExpression: '(| self = experiments graphs graph2 daveNode|) age = 60'.


            addFacetFromExpression: '(| self = experiments graphs graph2 |) haroldNode = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph2 haroldNode|) name = \'Harold\''.
            addFacetFromExpression: '(| self = experiments graphs graph2 haroldNode|) city = \'NY\''.
            addFacetFromExpression: '(| self = experiments graphs graph2 haroldNode|) knows = experiments graphs graph2 samNode').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeGraph3 = ( |
            | 
            addFacetFromExpression: '(| self = experiments graphs |) graph3 = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph3 |) samNode = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph3 |) daveNode = ()'.

            addFacetFromExpression: '(| self = experiments graphs graph3 samNode|) name = \'Sam\''.
            addFacetFromExpression: '(| self = experiments graphs graph3 samNode|) age = 54'.
            addFacetFromExpression: '(| self = experiments graphs graph3 samNode. environment = environment work |) knows = experiments graphs graph3 daveNode'.

            addFacetFromExpression: '(| self = experiments graphs graph3 daveNode|) name = \'Dave\''.
            addFacetFromExpression: '(| self = experiments graphs graph3 daveNode|) age = 60'.


            addFacetFromExpression: '(| self = experiments graphs graph3 |) haroldNode = ()'.
            addFacetFromExpression: '(| self = experiments graphs graph3 haroldNode|) name = \'Harold\''.
            addFacetFromExpression: '(| self = experiments graphs graph3 haroldNode|) city = \'NY\''.
            addFacetFromExpression: '(| self = experiments graphs graph3 haroldNode. environment = environment work     |) knows = experiments graphs graph3 samNode'.
            addFacetFromExpression: '(| self = experiments graphs graph3 haroldNode. environment = environment personal |) knows = experiments graphs graph3 daveNode').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeGraphExperiments = ( |
            | 
            addFacetFromExpression: '
              (| self = experiments |) graphs = ()   
            '
                Parent: foyer.

            makeGraph1.
            makeGraph2.

            makeEnvironmentDimension.
            makeGraph3.
            testGraph3).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            experiments: addFacetFromExpression: '(| self = foyer. worldRegion = world. dimension = worldRegion  |) experiments =  ()'
              Parent: foyer.
            addParent: experiments To: anyWorldRegionFacet.

            [makeAndTestContextBasedControlStructuresExperiment].

            makeTacitExperiment.
            makeGraphExperiments).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: tacit dimension experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         makeTacitExperiment = ( |
             p.
            | 

            addFacetFromExpression: '
              (| self = experiments |) tacit = ()   
            '
                Parent: foyer.

            addFacetFromExpression: '
              (| self = experiments tacit |) p = ()   
            '
                Parent: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'ModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: control structure experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         testControlStructures = ( |
            | 
            test: [
              addContextAttribute: 'controlStructures' Value: controlStructures javaLike
              Do: [
                if: true Then: ['true']
              ].
            ]
            Expect: 'true'.

            test: [
              addContextAttribute: 'controlStructures' Value: controlStructures javaLike
              Do: [
                if: false Then: ['true']
              ].
            ]
            Expect: getWellKnownFacet: 'nil'.

            test: [
              addContextAttribute: 'controlStructures' Value: controlStructures selfLike
              Do: [
                true ifTrue: ['true']
              ].
            ]
            Expect: 'true'.


            test: [
              addContextAttribute: 'controlStructures' Value: controlStructures selfLike
              Do: [
                false ifTrue: ['true']
              ].
            ]
            Expect: getWellKnownFacet: 'nil'.


            [harold "how code test that message not understood deep in the system?"
            test: [
              addContextAttribute: 'controlStructures' Value: controlStructures selfLike
              Do: [
                if: true Then: ['success']
              ].
            ]
            Expect: notUnderstood.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: graph experiments\x7fModuleInfo: Module: usExperiments InitialContents: FollowSlot'
        
         testGraph3 = ( |
            | 
              test: [[experiments graphs graph3 haroldNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment work]
            Expect: 'Sam'.

              test: [[experiments graphs graph3 haroldNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment personal]
            Expect: 'Dave'.


              test: [[experiments graphs graph3 samNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment work]
            Expect: 'Dave'.

              test: [[experiments graphs graph3 samNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment any]
            Expect: 'Dave'.



            "These lead to errors:

             test: [[experiments graphs graph3 haroldNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment any]
            Expect: 'ambiguous'.

              test: [[experiments graphs graph3 samNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment personal]
            Expect: 'not found'.

              test: [[experiments graphs graph3 haroldNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment defaultEnvironment]
            Expect: 'ambiguity'.

              test: [experiments graphs graph3 haroldNode knows name]
            Expect: 'ambiguity'.


              test: [[experiments graphs graph3 haroldNode knows name]
                         valueWithContextAttribute: 'environment' Value: environment nil]
            Expect: 'ambiguity'.

            ").
        } | ) 



 '-- Side effects'

 globals modules usExperiments postFileIn
