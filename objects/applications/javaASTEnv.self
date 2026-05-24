 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: FollowSlot'
        
         javaASTEnv = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules javaASTEnv.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'javaASTEnv' -> () From: ( | {
         'ModuleInfo: Module: javaASTEnv InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'parseKit
selfParser
javaParser
javaUI2
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'parseKit' From: 'applications/parseKit'
 bootstrap read: 'selfParser' From: 'applications/selfParser'
 bootstrap read: 'javaParser' From: 'applications/klein/javaParser'
 bootstrap read: 'javaUI2' From: 'applications/klein/javaUI2'



 '-- Side effects'

 globals modules javaASTEnv postFileIn
