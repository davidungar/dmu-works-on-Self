 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fCategory: creating the time dimension\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         makeTimeDimension = ( |
             abstractTime.
            | 

            abstractTime: addFacetFromExpression: '{ worldRegion => allWorldRegions abstractTypes :: abstractTime = ()}'.

            anyTimeFacet: addFacetFromExpression: '{ ::  anyTime =  ()}'
              Parent: abstractTime.

            "Don't do this until needed, so as not to clutter base context"
            [setDefaultCoordinateOfDimension: 'timeStamp' To: anyTimeFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known facets\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         makeTimeFacets = ( |
            | 
            addWellKnownProxyFacetNamed: 'protoTime' 
                          InitializedTo: time copy  
                         InheritingFrom: 'abstractTime'.

            addExistingFacetFromExpression: '{ worldRegion => allWorldRegions prototypes :: protoTime = protoTime}'
                    ReplacingWellKnownSlot: 'protoTime').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> () From: ( | {
         'Category: creating well-known slots\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         makeTimeSlots = ( |
            | 
            ['    { rcvr => abstractTime :: now = ( 
                    | result |    
                    result: __Current.
                    (| { rcvr => anyTime :: parent* = "result" allWorldRegions } |).
                    "result."
                  ) }
            '].

            addSlotsFromExpression: '
                { rcvr => abstractTime :: now = ( __Current ) }
                { rcvr => abstractTime :: <  { a => abstractTime }  = ( \'<\' __SendTo: rcvr With: a ) }
                { rcvr => abstractTime :: <= { a => abstractTime }  = ( \'<=\' __SendTo: rcvr With: a ) }
                { rcvr => abstractTime :: =  { a => abstractTime }  = ( \'=\' __SendTo: rcvr With: a ) }
                { rcvr => abstractTime :: >= { a => abstractTime }  = ( \'>\' __SendTo: rcvr With: a ) }
                { rcvr => abstractTime :: >  { a => abstractTime }  = ( \'>=\' __SendTo: rcvr With: a ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         makeTemporalityExperiment1 = ( |
            | 
            addFacetFromExpression: ' { rcvr => allWorldRegions experiments temporality :: data = () } '.

            addSlotsFromExpression: '
                { rcvr => allWorldRegions experiments temporality data. timeStamp => protoTime now :: valueOfTemporalData  <- 1 } 
            '.

            testTemporality1.
            testTemporality1Assignment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         makeTemporalityExperiments = ( |
            | 
            setDefaultCoordinateOfDimension: 'timeStamp' To: anyTimeFacet.
            addFacetFromExpression: ' { rcvr => allWorldRegions experiments :: temporality = () } '.

            makeTemporalityExperiment1

            removeDefaultCoordinateOfDimension: 'timeStamp').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         t1_1_UngaurdedAccessWhenJustOneSlot = ( |
            | 
              test: ' allWorldRegions experiments temporality data valueOfTemporalData ' 
            Expect: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         t1_2_SecondSlotCreationAndAccess = ( |
            | 
              test: ' 
                | newTime = protoTime now |
                (| { rcvr => allWorldRegions experiments temporality data. timeStamp => newTime :: valueOfTemporalData <- 2 } |).
                { timeStamp => newTime. rcvr => allWorldRegions experiments temporality data } valueOfTemporalData
            '
            Expect: 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         t1_3_UnguardedAccessWhenMultipleSlots = ( |
            | 
             test: ' 
                allWorldRegions experiments temporality data valueOfTemporalData
            '
            Expect: 2
            ButAmbiguous: 'value'. "This is expected with current semantics, but not what one expects for temporality").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         t1_4_AccessToOldValue = ( |
            | 
            "How can this work? - dmu"

            test: ' 
                (| { rcvr => allWorldRegions experiments temporality data. timeStamp => protoTime now :: valueOfTemporalData <- 3 } |).
                { timeStamp => newTime. rcvr => allWorldRegions experiments temporality data } valueOfTemporalData
            '
            "Expect: 2 "
            ExpectNotUnderstood: 'newTime').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         t1a_1_InitialSlotCreation = ( |
            | 
              test: ' 
                | newTime = protoTime now |
                (| { rcvr => allWorldRegions experiments temporality data. timeStamp => newTime :: valueOfTemporalData2 <- 11 } |).
                { timeStamp => newTime. rcvr => allWorldRegions experiments temporality data } valueOfTemporalData2
            '
            Expect: 11).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         t1a_2_Assignment = ( |
            | 
            "How can this work? -- dmu"

              test: ' 
                allWorldRegions experiments temporality data valueOfTemporalData2: 12.
                { timeStamp => newTime. rcvr => allWorldRegions experiments temporality data } valueOfTemporalData2
            '
            ExpectNotUnderstood: 'newTime'
            "
            Expect: 11
            ButGet: 12
            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         testTemporality1 = ( |
            | 
            t1_1_UngaurdedAccessWhenJustOneSlot.
            t1_2_SecondSlotCreationAndAccess.
            t1_3_UnguardedAccessWhenMultipleSlots.
            t1_4_AccessToOldValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'experiments' -> () From: ( | {
         'Category: temporality experiments\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         testTemporality1Assignment = ( |
            | 
            t1a_1_InitialSlotCreation.
            t1a_2_Assignment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         korzTemporality = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzTemporality.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzTemporality' -> () From: ( | {
         'ModuleInfo: Module: korzTemporality InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'time' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         asKorzObject = ( |
            | asKorzTime).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'time' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korzTemporality InitialContents: FollowSlot'
        
         asKorzTime = ( |
             result.
            | 
            result: (korz facets getWellKnownFacet: 'protoTime') copy value: self.
            (korz facets getWellKnownFacet: 'anyTime') addKorzParentFacet: result.
            result).
        } | ) 



 '-- Side effects'

 globals modules korzTemporality postFileIn
