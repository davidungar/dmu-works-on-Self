 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         stack = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules stack.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: collections\x7fCategory: ordered\x7fModuleInfo: Module: stack InitialContents: FollowSlot'
        
         stack = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stack' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stack.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: InitializeToExpression: (sequence copy)'
        
         contents <- sequence copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy contents: contents copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stack' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stack parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         pop = ( |
            | contents removeLast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         push: x = ( |
            | 
            contents addLast: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: stack InitialContents: FollowSlot'
        
         removeAll = ( |
            | contents removeAll).
        } | ) 



 '-- Side effects'

 globals modules stack postFileIn
