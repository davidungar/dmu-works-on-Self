 '$Revision: 30.6 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> () From: ( | {
         'Category: node summaries for outliner\x7fModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot'
        
         importDcl = bootstrap define: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals javaParser importOrPackageDcl copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals javaParser importDcl.

CopyDowns:
globals javaParser importOrPackageDcl. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals javaParser importDcl parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot\x7fVisibility: public'
        
         category = ( |
            | 
            '<imports>').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot'
        
         isImportDcl = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'importDcl' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'javaParser' -> 'importOrPackageDcl' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot'
        
         importDclNodeSum = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules importDclNodeSum.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein/javaParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.6 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'importDclNodeSum' -> () From: ( | {
         'ModuleInfo: Module: importDclNodeSum InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules importDclNodeSum postFileIn
