 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot'
        
         privacyE1 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE1.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot'
        
         korzPrivacyE1 = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzPrivacyE1.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE1 InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzPrivacyE1 postFileIn
