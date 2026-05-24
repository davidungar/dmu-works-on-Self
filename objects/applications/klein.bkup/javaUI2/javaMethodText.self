 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaUI2' -> () From: ( | {
         'Category: helpers\x7fModuleInfo: Module: javaMethodText InitialContents: FollowSlot'
        
         javaMethodText = bootstrap define: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals abstractMethodText copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> () From: ( |
             {} = 'Comment: language-independent method text\x7fModuleInfo: Creator: globals javaUI2 javaMethodText.

CopyDowns:
globals abstractMethodText. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: InitializeToExpression: (nil)'
        
         method.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals javaUI2 javaMethodText parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeForMethod: aMirror = ( |
             s.
            | 
            method: aMirror.
            s: method source.
            lines: convertToLines: s.
            nullIfEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaUI2' -> 'javaMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'abstractMethodText' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot'
        
         javaMethodText = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules javaMethodText.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein/javaUI2'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaMethodText' -> () From: ( | {
         'ModuleInfo: Module: javaMethodText InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules javaMethodText postFileIn
