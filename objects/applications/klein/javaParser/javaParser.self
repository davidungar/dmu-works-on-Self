 '$Revision: 30.6 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: javaParser InitialContents: FollowSlot\x7fVisibility: public'
        
         javaParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals javaParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: FollowSlot'
        
         javaParser = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules javaParser.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein/javaParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.6 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaParser' -> () From: ( | {
         'ModuleInfo: Module: javaParser InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'javaLexer
javaParseNodes
javaMinis
javaParserTester
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'javaLexer' From: 'applications/klein/javaParser'
 bootstrap read: 'javaParseNodes' From: 'applications/klein/javaParser'
 bootstrap read: 'javaMinis' From: 'applications/klein/javaParser'
 bootstrap read: 'javaParserTester' From: 'applications/klein/javaParser'



 '-- Side effects'

 globals modules javaParser postFileIn
