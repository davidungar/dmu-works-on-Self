 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: lyParser InitialContents: FollowSlot\x7fVisibility: public'
        
         lyParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: FollowSlot'
        
         lyParser = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules lyParser.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/lyParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyParser InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'parseKit lyLexer lyParserTester lyParseNodes lyMinis'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'parseKit' From: 'applications/parseKit'
 bootstrap read: 'lyLexer' From: 'applications/lyParser'
 bootstrap read: 'lyParserTester' From: 'applications/lyParser'
 bootstrap read: 'lyParseNodes' From: 'applications/lyParser'
 bootstrap read: 'lyMinis' From: 'applications/lyParser'



 '-- Side effects'

 globals modules lyParser postFileIn
