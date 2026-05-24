 '$Revision:$'
 '
Copyright 1992-2002 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: FollowSlot'
        
         xConvTest = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules xConvTest.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xConvTest' -> () From: ( | {
         'ModuleInfo: Module: xConvTest InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tests' -> () From: ( | {
         'Category: VM tests\x7fModuleInfo: Module: xConvTest InitialContents: FollowSlot'
        
         conversionPrologueTest = ( |
             m.
            | 
            shell useNIC.
            _Flush.
            [conversionPrologueTestLoop]. "browsing"
            (message copy receiver: self Selector: 'conversionPrologueTestLoop') fork.
            m: (traits vector asMirror at: 'at:IfAbsent:') contents.
            [
              m at: 'addedBy_conversionPrologueTest' PutContents: nil asMirror. 
              m removeSlot: 'addedBy_conversionPrologueTest'
            ] loop.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tests' -> () From: ( | {
         'Category: VM tests\x7fModuleInfo: Module: xConvTest InitialContents: FollowSlot'
        
         conversionPrologueTestLoop = ( |
             v.
             vv.
            | 
            v: vector copySize: 100.
            [vv: v at: 3 IfAbsent: 17] loop.
            self).
        } | ) 



 '-- Side effects'

 globals modules xConvTest postFileIn
