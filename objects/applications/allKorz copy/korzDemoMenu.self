 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         demoMenu = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2Menu copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide demoMenu.

CopyDowns:
globals ui2Menu. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide demoMenu parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: general demoMenu\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         addDemoButtons = ( |
            | 
            addButtonTarget: self ScriptBlock: [target getFoyer: event] Label: 'Get Foyer'.
            addButtonTarget: self ScriptBlock: [target getFoyerForAssertions: event] Label: 'Get Foyer with assertion code'.
            addDivider.
            addButtonTarget: self ScriptBlock: [outlinerPreferences setDemoFonts] Label: 'Demo fonts'.
            addButtonTarget: self ScriptBlock: [outlinerPreferences setGiantFonts] Label: 'Giant fonts'.
            addButtonTarget: self ScriptBlock: [outlinerPreferences setNormalFonts] Label: 'Normal fonts'.
            isTornOff: true.
            popUpEventTimeStamp: 0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: evaluator munging\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         addEvaluatorEditorTo: m Event: evt Containing: aString = ( |
             ee.
            | 
            ee: m model addEvaluator: evt.
            ee contentsString: aString shrinkwrapped.
            ee).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: evaluator munging\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         evaluatorEditorIn: mo IfPresent: pb IfAbsent: ab = ( |
            | 
            mo allMorphs findFirst: [|:m|
                m morphTypeName = korz ide korzEvaluatorEditor morphTypeName
              ]
              IfPresent: pb
              IfAbsent:  ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString1 = ( |
            | 
            '| stack = (|parent* = collection|) |').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString1WithOtherDataStructures = ( |
            | 
            '| stack = (|parent* = collection|).
              btree = (|parent* = collection|).
              queue = (|parent* = collection|). 
            |').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString2 = ( |
            | 
            '(|
            {
              rcvr => stack 
              ::  
              contents <- vector copySize: 10.
              copy = (|r| r: clone.  r contents: contents copy.  r).
              sp <- 0.  
              size = (sp).
              clear = ( sp: 0. rcvr ).
              pop = ( sp: sp - 1.  contents at: sp ).
              push: x = ( contents at: sp Put: x.  sp: sp + 1.  rcvr ). 
              do: {blk => abstractBlock} = (
                | i  |
                i: 0.
                [ i < size ] whileTrue: [blk value: contents at: i]
              )
            }
            |).
            stack').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString3 = ( |
            | '| checkFast = () |').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString3WithOtherDataStructures = ( |
            | 
            '| checkFast = ().

            btree = ().
            queue = (). 

            |').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString4 = ( |
            | 
            '(|
            {
            rcvr => stack.
            assertions => checkFast
            ::   
            pop = (  
              sp <= 0  ifTrue: [ showError:  \'pop caught underflow\'. ^ nil ]. 
              {-assertions} pop  
            )
            }
            |)').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fCategory: foyer eval strings\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         foyerEvalString4WithOtherDataStructures = ( |
            | 
            '(|
            {
            rcvr => stack.
            assertions => checkFast
            ::   
            pop = (  
              sp <= 0  ifTrue: [ showError:  \'pop caught underflow\'. ^ nil ]. 
              {-assertions} pop  
            )
            }


            { assertions => checkFast ::
                { rcvr => btree :: remove: element = ( {-assertions} remove: element. contains: element ifTrue: [ showError:  \'error on remove\'. ^ nil ].  ) }
                { rcvr => queue :: remove          = ( frontp < backp  ifTrue: [ showError:  \'queue caught underflow\'. ^ nil ].  {-assertions} remove ) }
            }
            |)').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         getFoyer: event = ( |
             fo.
             m.
            | 
            fo: korz ide facetModel getFoyerFacetEvent: event.
            removeEvaluatorsFrom: fo.
            m: fo model.
            addEvaluatorEditorTo: fo Event: event Containing: foyerEvalString1WithOtherDataStructures.
            addEvaluatorEditorTo: fo Event: event Containing: foyerEvalString2.
            fo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: foyer\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         getFoyerForAssertions: event = ( |
             fo.
             m.
            | 
            fo: korz ide facetModel getFoyerFacetEvent: event.
            removeEvaluatorsFrom: fo.
            m: fo model.
            addEvaluatorEditorTo: fo Event: event Containing: foyerEvalString3.
            addEvaluatorEditorTo: fo Event: event Containing: foyerEvalString4WithOtherDataStructures.
            fo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: general demoMenu\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzDemoMenu'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2Menu' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: general demoMenu\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         popUp: evt = ( |
            | 
            addDemoButtons.
            isTornOff: true.
            resend.popUp: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> 'parent' -> () From: ( | {
         'Category: evaluator munging\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         removeEvaluatorsFrom: fo = ( |
            | 
            [
              evaluatorEditorIn: fo IfPresent: [|:ee| ee owner delete]
                                    IfAbsent: [^ self]
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'demoMenu' -> () From: ( | {
         'Category: Basic ui2Menu state\x7fModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide demoMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         korzDemoMenu = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzDemoMenu.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemoMenu' -> () From: ( | {
         'ModuleInfo: Module: korzDemoMenu InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzDemoMenu postFileIn
