 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

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
        
         directory <- ''.
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

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'gasTank' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         coolDown = ( |
            | atoms do: [|:a| a velocity: a velocity * 0.9]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'gasTank' -> () From: ( | {
         'ModuleInfo: Module: fred InitialContents: FollowSlot'
        
         heatUp = ( |
            | atoms do: [|:a| a velocity: a velocity * 1.5]. self).
        } | ) 



 '-- Side effects'

 globals modules fred postFileIn
