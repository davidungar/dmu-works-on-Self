 '$Revision: 30.5 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fCategory: VM Kits\x7fModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: public'
        
         kleinAndYoda = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kleinAndYoda.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot'
        
         vmKits = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules vmKits.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            resend.postFileIn.
            runAutomatedTests.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.5 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: private'
        
         runAssemblerTests = ( |
            | 
            assemblerSystems i386 generateAll testAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: private'
        
         runAutomatedTests = ( |
            | 
            transporter moduleDictionary refill.
            runAssemblerTests.
            runExportTests).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: private'
        
         runExportTests = ( |
            | 
            desktop isOpen ifTrue: [
              klein exportTests miniVM copy run.
            ] False: [
               desktop open.
               klein exportTests miniVM copy run.
               "desktop close."
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKits' -> () From: ( | {
         'ModuleInfo: Module: vmKits InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'vmKitBase
vmKitDB
vmKitObjects
vmKitVM
vmKitMemInterface
vmKitMemory
vmKitExport
vmKitPrims
vmKitUpdater
klein
yoda
kleinSmallInterp
vmKitInterpreter
vmKitGC
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'vmKitBase' From: 'applications/klein'
 bootstrap read: 'vmKitDB' From: 'applications/klein'
 bootstrap read: 'vmKitObjects' From: 'applications/klein'
 bootstrap read: 'vmKitVM' From: 'applications/klein'
 bootstrap read: 'vmKitMemInterface' From: 'applications/klein'
 bootstrap read: 'vmKitMemory' From: 'applications/klein'
 bootstrap read: 'vmKitExport' From: 'applications/klein'
 bootstrap read: 'vmKitPrims' From: 'applications/klein'
 bootstrap read: 'vmKitUpdater' From: 'applications/klein'
 bootstrap read: 'klein' From: 'applications/klein'
 bootstrap read: 'yoda' From: 'applications/klein'
 bootstrap read: 'kleinSmallInterp' From: 'applications/klein'
 bootstrap read: 'vmKitInterpreter' From: 'applications/klein'
 bootstrap read: 'vmKitGC' From: 'applications/klein'



 '-- Side effects'

 globals modules vmKits postFileIn
