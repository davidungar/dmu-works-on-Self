 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot'
        
         renAdditions = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules renAdditions.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renAdditions' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'random' -> () From: ( | {
         'Comment: Return collection of N ints in [0..n) in a random order\x7fModuleInfo: Module: renAdditions InitialContents: FollowSlot\x7fVisibility: public'
        
         permutation: n = ( |
             debug = bootstrap stub -> 'globals' -> 'false' -> ().
             v.
            | 
            v: vector copySize: n.
            n do: [|:i| v at: i Put: i].
            n downTo: 2 Do: [|:i. x. y|
              "v[i..n) is random AND v has each int exactly once"
              x: integer: i.

              y: v at: i pred.  v at: i pred Put: v at: x.  v at: x Put: y.

              debug ifTrue: [|check|
                check: vector copySize: n FillingWith: 0.
                v do: [|:i| check at: i Put: (check at: i) succ].
                check do: [|:a| a = 1 ifFalse: [halt]].
              ].
            ].
            v).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'vector' -> () From: ( | {
         'ModuleInfo: Module: renAdditions InitialContents: FollowSlot\x7fVisibility: public'
        
         randomlyDo: blk = ( |
            | 
            (random permutation: size) do: [|:i| blk value: (at: i) With: i]).
        } | ) 



 '-- Side effects'

 globals modules renAdditions postFileIn
