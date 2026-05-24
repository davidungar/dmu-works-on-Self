 '$Revision: 30.2 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> () From: ( | {
         'Category: building / exporting programs\x7fCategory: exporting assembler programs\x7fComment: My children are program exporters that can be launched inside a foreignProcess.\x7fModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractProgramBuilder = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kleinAndYoda abstractProgramBuilder.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kleinAndYoda abstractProgramBuilder parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( | {
         'Category: ui support\x7fModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: public'
        
         buildActionName = ( |
            | 'Build').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( | {
         'Category: building\x7fComment: Prepares the foreignProgram for launching by
compiling, linking, and performing other essential
build tasks.  Reports status to the sender by
periodically sending a descriptive string argument
to the supplied block.\x7fModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: private'
        
         buildIfFail: fb = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: public'
        
         buildUsingProxy: p ReportingTo: sr IfFail: fb = ( |
            | 
            proxyForBuilding: p.
            statusReporter: sr.
            buildIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( | {
         'Category: ui support\x7fModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: public'
        
         rebuildActionName = ( |
            | 'Rebuild').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> 'parent' -> () From: ( | {
         'Category: ui support\x7fModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: public'
        
         rebuildProgramBeforeLaunchingPrompt = ( |
            | 'Rebuild program before launching?').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         proxyForBuilding.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'abstractProgramBuilder' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         statusReporter.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot'
        
         vmKitAbsPgmExporter = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules vmKitAbsPgmExporter.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.2 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitAbsPgmExporter' -> () From: ( | {
         'ModuleInfo: Module: vmKitAbsPgmExporter InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules vmKitAbsPgmExporter postFileIn
