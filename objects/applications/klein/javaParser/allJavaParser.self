 '$Revision: 23.6 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: FollowSlot'
        
         allJavaParser = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules allJavaParser.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein/javaParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 23.6 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'allJavaParser' -> () From: ( | {
         'ModuleInfo: Module: allJavaParser InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- '
parseKit
javaParser'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'parseKit' From: 'applications/parseKit'
 bootstrap read: 'javaParser' From: 'applications/klein/javaParser'



 '-- Side effects'

 globals modules allJavaParser postFileIn
