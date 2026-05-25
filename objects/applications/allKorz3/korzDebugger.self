 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         activationOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals korz ide slotOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide activationOutliner.

CopyDowns:
globals korz ide slotOutliner. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide activationOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzIDEActivationOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide activationOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzActivationModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide slotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivationModel.

CopyDowns:
globals korz ide slotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivationModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            korz ide activationOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzProcessModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalProcessModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessModel.

CopyDowns:
globals generalProcessModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalProcessModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         preferredColor = paint copyRed: 0.915934 Green: 0.896383  Blue: 0.829912.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         processStackModel = ( |
            | 
            korz ide korzProcessStackModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzProcessStackModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalProcessStackModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessStackModel.

CopyDowns:
globals generalProcessStackModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () From: ( | {
         'Comment: true if I am filtering the stack\x7fModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (true)\x7fVisibility: private'
        
         isFiltered <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessStackModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         activationModelProto = ( |
            | 
            korz ide korzActivationModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         buttonDescriptions = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalProcessStackModel parent buttonDescriptions _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( |
             {} = 'Comment: Holds button descriptions:
category leaf is button name, 
slot name is button name in buttonCache,
method source is button script,
public slots make asynchronous buttons.\x7fModuleInfo: Creator: globals korz ide korzProcessStackModel parent buttonDescriptions.

CopyDowns:
globals generalProcessStackModel parent buttonDescriptions. _Clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessStackModel parent buttonDescriptions parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            resend.buttonsToPutInMenu copyAddFirst:
              isFiltered ifTrue: 'dontFilter' False: 'filter').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: accessing activations\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         filteredTopActivationsDo: blk = ( |
            | 
            unfilteredTopActivationsDo: blk.
            [cabo].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isCommentButtonWanted = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         processModel = ( |
            | 
            korz ide korzProcessModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: accessing activations\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         toggleFiltering: event = ( |
            | 
            isFiltered: isFiltered not.
            myOutliner update.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: accessing activations\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         topActivationsDo: blk = ( |
            | 
            isFiltered ifTrue: [  filteredTopActivationsDo: blk]
                        False: [unfilteredTopActivationsDo: blk]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         korzDebugger = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzDebugger.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzDebugger postFileIn
