 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         usVMFaSMaker = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usVMFaSMaker.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usVMFaSMaker' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         addWellKnownFacetNamed: n = ( |
            | us facets addWellKnownFacetNamed: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         addWellKnownProxyFacetNamed: facetName InitializedTo: initialContents InheritingFrom: parentName = ( |
            | 
            ((us facets addWellKnownFacetNamed: facetName Copying: us proxyFacet) value: initialContents)
              addUsParentFacet: getWellKnownFacet: parentName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         constantName = ( |
            | us facets constantName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         evaluateStringAsEvaluatorContents: aString Receiver: aFacet = ( |
            | 
            us operations evaluateStringAsEvaluatorContents: aString Receiver: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         getWellKnownFacet: name = ( |
            | 
            us facets getWellKnownFacet: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         nilName = ( |
            | us facets nilName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         protoBlockName = ( |
            | us facets protoBlockName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         foyer = ( |
            | us facets foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fCategory: VM\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         foyerName = ( |
            | us facets foyerName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         vm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'vm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker vm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | 
            us baseContext: us context copyRemoveAll. 
            makeFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: private'
        
         makeFacets = ( |
            | 
            removeHardwiredFacetSelfSlots.

            addWellKnownFacetNamed: foyerName.
            addWellKnownFacetNamed: constantName.

            addWellKnownFacetNamed:        nilName.  (getWellKnownFacet:        nilName) addUsParentFacet: foyer.
            addWellKnownFacetNamed: protoBlockName.  (getWellKnownFacet: protoBlockName) addUsParentFacet: foyer.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'vm' -> () From: ( | {
         'ModuleInfo: Module: usVMFaSMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         removeHardwiredFacetSelfSlots = ( |
            | 
            foyerName, ':' sendTo: us facets With: nil.
            self).
        } | ) 



 '-- Side effects'

 globals modules usVMFaSMaker postFileIn
