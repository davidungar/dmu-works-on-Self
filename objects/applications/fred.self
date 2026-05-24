 '$Revision:$'
 '
Copyright 1992-2002 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         fred = bootstrap setObjectAnnotationOf: bootstrap stub -> 'fred' -> () From: ( |
             {} = 'ModuleInfo: Creator: fred.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         joe = bootstrap setObjectAnnotationOf: bootstrap stub -> 'fred' -> 'joe' -> () From: ( |
             {} = 'ModuleInfo: Creator: fred joe.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'fred' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: fred parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'fred' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         joe = bootstrap setObjectAnnotationOf: bootstrap stub -> 'fred' -> 'parent' -> 'joe' -> () From: ( |
             {} = 'ModuleInfo: Creator: fred parent joe.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'fred' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         peter = bootstrap setObjectAnnotationOf: bootstrap stub -> 'fred' -> 'parent' -> 'peter' -> () From: ( |
             {} = 'ModuleInfo: Creator: fred parent peter.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         fred = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules fred.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'fred' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: InitializeToExpression: (false)'
        
         xxx <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 



 '-- Side effects'

 globals modules fred postFileIn
