 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         collectionE = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'collectionE' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker collectionE.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'collectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         experimentName = 'collectionE'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'collectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         makeExperimentFacet = ( |
            | 
            addSlotsFromExpression: experimentName, ' = ()'.
            setDefaultCoordinateOfDimension: 'experiment' To: getWellKnownFacet: experimentName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'collectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | xxx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'collectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         korzCollectionE = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzCollectionE.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzCollectionE' -> () From: ( | {
         'ModuleInfo: Module: korzCollectionE InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzCollectionE postFileIn
