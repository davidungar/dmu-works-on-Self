 '$Revision: 30.8 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: korzParser InitialContents: FollowSlot\x7fVisibility: public'
        
         korzParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot\x7fVisibility: public'
        
         tryIt = ( |
            | 
            tester showFile: 'test1.korz').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot'
        
         korzParser = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzParser.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz/korzParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.8 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParser' -> () From: ( | {
         'ModuleInfo: Module: korzParser InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- 'korzLexer
korzParserTester
korzMinis
korzParseNodes
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'korzLexer' From: 'applications/allKorz/korzParser'
 bootstrap read: 'korzParserTester' From: 'applications/allKorz/korzParser'
 bootstrap read: 'korzMinis' From: 'applications/allKorz/korzParser'
 bootstrap read: 'korzParseNodes' From: 'applications/allKorz/korzParser'



 '-- Side effects'

 globals modules korzParser postFileIn
