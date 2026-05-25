 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: idpSwags InitialContents: FollowSlot\x7fVisibility: public'
        
         idpSwags = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'idpSwags' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals idpSwags.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot\x7fVisibility: public'
        
         gcNSPerByte = ( |
            | 
            ((vector copySize: 10) mapBy: [oneGC]) mean).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot\x7fVisibility: public'
        
         objectCreation = ( |
             a.
             t.
            | 
            a: vector copySize: 10.
            t: [ 1000000 do: [a copy]] time.
            t).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot'
        
         oneGC = ( |
             msAfter.
             msBefore.
             nsPerByte.
             t.
            | 
            msBefore: memoryState copy.
            t: [_GarbageCollect] time.
            msAfter: memoryState copy.
            nsPerByte: (t asFloat * 1e6) /= msAfter used.
            nsPerByte).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot'
        
         idpSwags = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules idpSwags.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'idpSwags' -> () From: ( | {
         'ModuleInfo: Module: idpSwags InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules idpSwags postFileIn
