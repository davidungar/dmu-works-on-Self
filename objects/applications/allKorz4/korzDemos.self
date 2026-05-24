 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot\x7fVisibility: public'
        
         demos = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker demos.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot\x7fVisibility: public'
        
         addMySlots: expression = ( |
            | 
            addSlotsFromExpression: 
              isDemoDimensionUsed ifFalse: expression True: ['{ demo => ', demoName, ' :: ', expression, '}']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         d1_simple_stack = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd1_simple_stack' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker demos d1_simple_stack.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd1_simple_stack' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         demoName = 'demo1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd1_simple_stack' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeDemoFacet. 

            addMySlots: 'collection = (| parent* = foyer. |)'.

            addMySlots: 'none = ()'.
            addMySlots: 'checkFast = ()'.
            addMySlots: 'checkAll  = (|  parent* = checkFast. |)'.


            addMySlots: '{
              rcvr => collection
              :: 
              size = ( | i | i: 0.  do: [i: i + 1]. i)
            }'.

            [makeStack.].

            [halt: 'd1_simple_stack made'].
            [
            test: '|x. y| x: stack copy.  x push: 1.  x push: 10.  y: x size. (x pop * 3)  + x pop  +  (y * 5)'
            Expect: 41.
            ].
            [removeDefaultCoordinateOfDimension: 'demo'.].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd1_simple_stack' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeStack = ( |
            | 
            addMySlots: 'stack = (|
              parent* = collection. 
            |)'.

            addMySlots: '{
              rcvr => stack 
              ::  
              contents <- vector copySize: 10.
              copy = (|r| r: clone.  r contents: contents copy.  r).
              sp <- 0.  
              size = (sp).
              clear = ( sp: 0 ).
              pop = ( sp: sp - 1.  contents at: sp ).
              push: x = ( contents at: sp Put: x.  sp: sp + 1.  rcvr ). 
              do: {blk => abstractBlock} = (
                | i  |
                i: 0.
                [ i < size ] whileTrue: [blk value: contents at: i]
              )
            }'.

            makeTestMethod.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd1_simple_stack' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeTestMethod = ( |
            | 
            addMySlots: '
              {    
                rcvr => stack.
                "test"
                ::   
                test1 = (| s |
                         s: copy.
                         s push: 1.
                         s push: 2.
                         s pop = 2 ifFalse:  [ showError: \'Error on pop\'].
                         s size = 1 ifFalse: [ showError: \'Error on size\'].
                         showStatus: \'test1 succeeded\'.
                         nil
                        )
              }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd1_simple_stack' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         d2_add_assertions = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd2_add_assertions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker demos d2_add_assertions.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd2_add_assertions' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         demoName = 'demo2'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd2_add_assertions' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeAndGet: stackName = ( |
             f.
            | 
            isDemoDimensionUsed ifTrue: [
              setDefaultCoordinateOfDimension: 'demo' To: getWellKnownFacet: 'demo2'.
            ].
            addSlotsFromExpression: stackName, ' = stack copy'.
            (korz facet getWellKnownSlotNamed: stackName) setKorzCreatorSlotHint.
            f: getWellKnownFacet: stackName.

            isDemoDimensionUsed ifTrue: [
              removeDefaultCoordinateOfDimension: 'demo'.
            ].
            f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd2_add_assertions' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            addSlotsFromExpression: 'demo2 = (| parent* = demo1|)'.
            isDemoDimensionUsed ifTrue: [setDefaultCoordinateOfDimension: 'demo' To: getWellKnownFacet: 'demo2'.].


            addMySlots: '
              {    
                rcvr => stack.
                assertions => checkFast
                ::   
                pop = (               sp <= 0  ifTrue: [ showError: \'pop caught underflow\'. ^ nil ]
                                                False: [ showStatus: \'pop assertion check succeeded\']. 
                                      {-assertions} pop  ).
              }'.

            "Omit sp - don't want double checks
                sp  = (               
                                      {-assertions} sp <  0  ifTrue: [ showError:  \'sp caught underflow\'. ^ -1  ].  {-assertions} sp  )."


            test: '|x. y| x: stack copy.  x push: 1.  x push: 10.  y: x size. (x pop * 3)  + x pop  +  (y * 5)'
            Expect: 41.

            test: '{ assertions => checkFast.  rcvr => stack } pop' Expect: getWellKnownFacet: 'nil'.

            addMySlots: 'tryIt = ( {assertions=>d2_add_assertions checkFast. rcvr=> d1_simple_stack stack} pop)'.

            makeAndGet: 'stack1'.
            makeAndGet: 'stack2'.


            [halt: 'Demo stop'].
            isDemoDimensionUsed ifTrue: [removeDefaultCoordinateOfDimension: 'demo'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd2_add_assertions' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         eval: s = ( |
            | evaluateStringAsEvaluatorContents: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         isDemoDimensionUsed = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeDemoFacet = ( |
            | 
            addSlotsFromExpression: demoName, ' = ()'.
            isDemoDimensionUsed ifTrue: [setDefaultCoordinateOfDimension: 'demo' To: getWellKnownFacet: demoName].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            d1_simple_stack makeOnlyMe.
            [d2_add_assertions makeOnlyMe.].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         korzDemos = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzDemos.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDemos' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzDemos postFileIn
