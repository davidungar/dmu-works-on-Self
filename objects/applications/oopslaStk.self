 '$Revision:$'
 '
Copyright 1992-2003 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot'
        
         oopslaStk = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules oopslaStk.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'oopslaStk' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         stack = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'stack' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals stack.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: InitializeToExpression: (vector)\x7fVisibility: private'
        
         contents <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy contents: contents copySize: 100).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         pop = ( |
             r.
            | 
            r: top.
            sp: sp - 1.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         push: x = ( |
            | 
            sp: sp + 1.
            contents at: sp Put: x.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: InitializeToExpression: (-1)\x7fVisibility: private'
        
         sp <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'stack' -> () From: ( | {
         'ModuleInfo: Module: oopslaStk InitialContents: FollowSlot\x7fVisibility: public'
        
         top = ( |
            | contents at: sp).
        } | ) 



 '-- Side effects'

 globals modules oopslaStk postFileIn
