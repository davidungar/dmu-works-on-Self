 '$Revision: 30.3 $'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kleinAndYoda' -> 'layouts' -> 'memoryObject' -> 'abstractHeaderField' -> () From: ( | {
         'Category: verifying\x7fCategory: variable-size headers\x7fModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot\x7fVisibility: public'
        
         variableHeader_verifyObject: o Layout: aLayout With: aVerifier = ( |
            | 
                      ifMarkOf: o
            EncodesMyValueThen: [|:v| v]
                          Else: [basicVerifyObject: o At: (offsetFor: o Layout: aLayout) Layout: aLayout With: aVerifier]
                        Layout: aLayout
                        IfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot'
        
         vmKitVarHdrsVerify = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules vmKitVarHdrsVerify.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/klein'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.3 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'vmKitVarHdrsVerify' -> () From: ( | {
         'ModuleInfo: Module: vmKitVarHdrsVerify InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules vmKitVarHdrsVerify postFileIn
