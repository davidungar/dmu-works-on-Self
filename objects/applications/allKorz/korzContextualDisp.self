 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         contextualDisplay = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker contextualDisplay.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         isExampleDimensionUsed = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         korzSlots: expression = ( |
            | 
            "Note: We may want to switch to a separate 'example' dimension, rather than worldRegion, but then need simplification morph and/or a bottom element for the example dimension.
             See also makeStepCoordinate:"

            addSlotsFromExpression: 
              isExampleDimensionUsed ifFalse: expression True: ['{ worldRegion => allWorldRegions examples contextualDisplay ', stepName, ' :: ', expression, '}']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         makeAndShow = ( |
            | 
            make. "makeOnlyMe."

            process this birthEvent sourceHand attach:
            (evaluateStringAsEvaluatorContents: 'allWorldRegions examples contextualDisplay') asMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         makeExampleCoordinate = ( |
            | 
            isExampleDimensionUsed ifTrue: [
              addSlotsFromExpression: '
                { rcvr => allWorldRegions examples :: contextualDisplay = () }
              ']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            makeExampleCoordinate.
            step1 makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         makeStepCoordinate: name = ( |
             coordinate.
            | 

            isExampleDimensionUsed ifTrue: [
              coordinate:
                addSlotsFromExpression: '
                  { rcvr => allWorldRegions examples contextualDisplay :: ', name, ' = (|
                      parent* = allWorldRegions examples contextualDisplay.
                      |) }
                '.

              addParent: (evaluateStringAsEvaluatorContents: 'allWorldRegions examples contextualDisplay ', name) To: anyWorldRegionFacet
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> () From: ( | {
         'Category: evolution steps\x7fModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         step1 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker contextualDisplay step1.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'Category: boilerplate\x7fModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         make = ( |
            | contextualDisplay make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         makeAndShow = ( |
            | 
            make. "makeOnlyMe."

            process this birthEvent sourceHand attach:
            (evaluateStringAsEvaluatorContents: 'allWorldRegions examples contextualDisplay step1') asMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            makeStepCoordinate: stepName.
            makePersonFacets.
            makePersonSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         makePersonFacets = ( |
            | 
            "Coordinate for parent containing code for person facets"
            korzSlots: '
              { :: personParent = (| parent* = foyer |) }
            '.

            "The following must be in separate calls to korzSlots because of static evaluation"

            "Person prototype"
            korzSlots: '
              { :: cd_person = (| parent* = personParent |) }

            '.

            "Some person facets"
            korzSlots: '
              { :: doug = (| parent* = cd_person |) }
              { :: dave = (| parent* = cd_person |) }

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         makePersonSlots = ( |
            | 
            "Person prototype data slots"
            korzSlots: '
              { rcvr => cd_person :: firstName <- \'John\' }
              { rcvr => cd_person :: lastName  <- \'Doe\' }

            '.

            "Person parent method slots"
            korzSlots: '
              { rcvr => personParent :: name = ( firstName, \' \', lastName ) }
            '.

            "Details fo specific people"
            korzSlots: '
              { rcvr => doug :: firstName <- \'Doug\' }
              { rcvr => doug :: lastName  <- \'Kimelman\' }

              { rcvr => dave :: firstName <- \'David\' }
              { rcvr => dave :: lastName  <- \'Ungar\' }

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'contextualDisplay' -> 'step1' -> () From: ( | {
         'Category: boilerplate\x7fModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         stepName = 'step1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         korzContextualDisp = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzContextualDisp.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzContextualDisp' -> () From: ( | {
         'ModuleInfo: Module: korzContextualDisp InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzContextualDisp postFileIn
