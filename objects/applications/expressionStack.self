 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalActivationModel' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: expressionStack InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            ('step' & 'next' & 'retry' & 'revert' & 'finish' & nil &
             'methodHolder' & 'expressionStack' & nil
            ) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalActivationModel' -> 'parent' -> () From: ( | {
         'Category: browsing\x7fModuleInfo: Module: expressionStack InitialContents: FollowSlot\x7fVisibility: private'
        
         showExpressionStack: evt = ( |
             o.
            | 
            o: world outlinerForMirror: reflect: activation expressionStackIfFail: vector.
            evt sourceHand attach: o.
            o expandAll: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: FollowSlot'
        
         expressionStack = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules expressionStack.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'expressionStack' -> () From: ( | {
         'ModuleInfo: Module: expressionStack InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfActivationModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: debugging\x7fCategory: browsing\x7fCategory: Expression stack\x7fModuleInfo: Module: expressionStack InitialContents: FollowSlot'
        
         expressionStack = ( |
            | 
            target model showExpressionStack: event).
        } | ) 



 '-- Side effects'

 globals modules expressionStack postFileIn
