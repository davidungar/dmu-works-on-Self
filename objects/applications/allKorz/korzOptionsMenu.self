 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         optionsMenu = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2Menu copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide optionsMenu.

CopyDowns:
globals ui2Menu. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide optionsMenu parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> 'parent' -> () From: ( | {
         'Category: general optionsMenu\x7fModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot'
        
         addOptionsButtons = ( |
            | 
            addButtonTarget: self
                ScriptBlock: [korz worldMaker isForPaperFigure: korz worldMaker isForPaperFigure not]
                      Label: 'Prepare to build ', (korz worldMaker isForPaperFigure ifTrue: 'everything' False: 'only Korz paper example').

            addButtonTarget: self
                ScriptBlock: [korz ide isSimplified: korz ide isSimplified not]
                      Label: (korz ide isSimplified ifTrue: 'Include' False: 'Exclude'), ' header buttons'.

            popUpEventTimeStamp: 0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> 'parent' -> () From: ( | {
         'Category: general optionsMenu\x7fModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzOptionsMenu'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2Menu' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> 'parent' -> () From: ( | {
         'Category: general optionsMenu\x7fModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot'
        
         popUp: evt = ( |
            | 
            addOptionsButtons.
            resend.popUp: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'optionsMenu' -> () From: ( | {
         'Category: Basic ui2Menu state\x7fModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide demoMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot'
        
         korzOptionsMenu = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzOptionsMenu.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzOptionsMenu' -> () From: ( | {
         'ModuleInfo: Module: korzOptionsMenu InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzOptionsMenu postFileIn
