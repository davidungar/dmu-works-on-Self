 '$Revision: 30.8 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot'
        
         usParser = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usParser.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs/usParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.8 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- 'usLexer
usParserTester
usMinis
usParseNodes
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: usParser InitialContents: FollowSlot\x7fVisibility: public'
        
         usParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'ModuleInfo: Module: usParser InitialContents: FollowSlot\x7fVisibility: public'
        
         tryIt = ( |
            | 
            tester showFile: 'test1.us').
        } | ) 



 '-- Sub parts'

 bootstrap read: 'usLexer' From: 'applications/allUs/usParser'
 bootstrap read: 'usParserTester' From: 'applications/allUs/usParser'
 bootstrap read: 'usMinis' From: 'applications/allUs/usParser'
 bootstrap read: 'usParseNodes' From: 'applications/allUs/usParser'



 '-- Side effects'

 globals modules usParser postFileIn
