 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         addWellKnownFacetNamed: n = ( |
            | korz facets addWellKnownFacetNamed: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         addWellKnownProxyFacetNamed: facetName InitializedTo: initialContents InheritingFrom: parentName = ( |
            | 
            ((korz facets addWellKnownFacetNamed: facetName Copying: korz proxyFacet) value: initialContents)
              addKorzParentFacet: getWellKnownFacet: parentName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         constantName = ( |
            | korz facets constantName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         evaluateStringAsEvaluatorContents: aString = ( |
            | korz operations evaluateStringAsEvaluatorContents: aString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         evaluateStringAsEvaluatorContents: aString In: aContext = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: aString In: aContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         foyer = ( |
            | korz facets foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         foyerName = ( |
            | korz facets foyerName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         getWellKnownFacet: name = ( |
            | 
            korz facets getWellKnownFacet: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         nilName = ( |
            | korz facets nilName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         protoBlockName = ( |
            | korz facets protoBlockName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         vm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'vm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker vm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | 
            korz baseContext: korz context copyRemoveAll. 
            makeFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: private'
        
         makeFacets = ( |
            | 
            removeHardwiredFacetSelfSlots.

            addWellKnownFacetNamed: foyerName.
            addWellKnownFacetNamed: constantName.

            addWellKnownFacetNamed:        nilName.  (getWellKnownFacet:        nilName) addKorzParentFacet: foyer.
            addWellKnownFacetNamed: protoBlockName.  (getWellKnownFacet: protoBlockName) addKorzParentFacet: foyer.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         removeHardwiredFacetSelfSlots = ( |
            | 
            foyerName, ':' sendTo: korz facets With: nil.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         korzVMFaSMaker = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzVMFaSMaker.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: korzVMFaSMaker InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzVMFaSMaker postFileIn
