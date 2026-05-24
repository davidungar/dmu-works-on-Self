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
         'Category: demos\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         d3_paper_example = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd3_paper_example' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker demos d3_paper_example.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd3_paper_example' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         demoName = 'demoForPaper'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd3_paper_example' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeDemoFacet. 


            addMySlots: 'screenParent = (|parent* = foyer|)'.
            addMySlots: 'screen = (|parent* = screenParent|)'.
            addMySlots: '{ rcvr => screen :: name <- \'anon\' }'.

            addMySlots: '
            { rcvr => screenParent :: drawPixelX: x Y: y Color: c = (
                \' on=\' _Print. name _Print.
                \'  x=\' _Print. x _Print.
                \'  y=\' _Print. y _Print.
                \'  color=\' _Print. c _Print.

             ).
            named: n = ( |r| r: copy. r name: n. r) }'.

            addMySlots: 's1 = screen named: \'s1\'. s2 = screen named: \'s2\' '.


            addMySlots: 'pointParent = (| parent* = foyer |)'.
            addMySlots: 'point = (|parent* = pointParent|)'.
            addMySlots: '{ rcvr => point    ::   x <- 0. y <- 0. color <- \'red\' }'.
            addMySlots: '{ rcvr => pointParent.  
             screen   
            :: display = ( screen drawPixelX: x Y: y Color: color) }'.
            addMySlots: '{ rcvr => pointParent :: copyX: x Y: y Color: c = (|r| r: copy. r x: x. r y: y. r color: c. r) }'.


            addMySlots: ' p1 = point copyX: 2 Y: 3 Color: \'red\' '.
            addMySlots: ' p2 = point copyX: 4 Y: 5 Color: \'green\' '.
            addMySlots: ' p3 = point copyX: 6 Y: 7 Color: \'blue\' '.

            test: '{ rcvr => p1.  screen => s1} display'.



            addMySlots: 'complexFigureParent = (|parent* = foyer|)'.
            addMySlots: 'complexFigure = (|parent* = complexFigureParent|)'.
            addMySlots: '{ rcvr => complexFigure :: point1 <- point. point2 <- point. point3 <- point }'.
            addMySlots: '{ rcvr => complexFigureParent :: display = ( point1 display.  point2 display.  point3 display ) }'.

            addMySlots: 'f1 = [|r| r: complexFigure copy. r point1: p1. r point2: p2. r point3: p3. r] value'.


            test: '{ rcvr => f1.  screen => screen } display'.
            '\n\n' print.


            addMySlots: '{ rcvr => allWorldRegions abstractTypes abstractString :: mapToGrayScale = \'gray\' }'.

            addMySlots: '{rcvr => screenParent.  isColorblind => true :: drawPixelX: x Y: y Color: c = ({ isColorblind => false} drawPixelX: x Y: y Color: c mapToGrayScale ) }'.

            test: '{ rcvr => f1. isColorblind => true. screen => s1} display'.
            '\n\n' print.


            addMySlots: '{rcvr => screenParent.  isAussie => true :: drawPixelX: x Y: y Color: c = ({ -isAussie} drawPixelX: x Y: 0 - y Color: c  ) }'.

            test: '{ rcvr => f1. isAussie => true.  screen => s1} display'.

            test: '{ rcvr => f1. isAussie => true. isColorblind => true. screen => s1} display' ExpectAmbiguous: 'drawPixelX:Y:Color:'.



            [removeDefaultCoordinateOfDimension: 'demo'.].


            addMySlots: '{ rcvr => complexFigureParent.  debugBlock => abstractBlock.  debugScreen => screenParent
            :: display = ({ rcvr => debugBlock. screen => debugScreen } value: rcvr.
            { -debugBlock} display ) }'.

            '\n\n\n' print.
            test: '{ rcvr => f1. screen => s1. debugScreen => s2. debugBlock => [|:fig| \'DEBUG \' _Print. fig point1 display]} display'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd3_paper_example' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         d4_paper_round2_example = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd4_paper_round2_example' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker demos d4_paper_round2_example.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd4_paper_round2_example' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         demoName = 'demoForPaper2'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd4_paper_round2_example' -> () From: ( | {
         'ModuleInfo: Module: korzDemos InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeDemoFacet. 

            addMySlots: 'clone = (_CopyKorzFacet). copy = (clone)'.

            "2.1"

            addMySlots: 'pointParent = ()'.
            addMySlots: 'point = (|parent* = pointParent|)'.
            addMySlots: '{ rcvr => point :: x <- 0. y <- 0. color <- \'gray\'}'.

            addMySlots: 'makeAPointX: x Y: y Color: c = ( |p| p: point copy. p x: x. p y: y. p color: c. p)'.

            addMySlots: 'makeAPoint = (makeAPointX: 3 Y: 4 Color: \'black\')'.

            test: 'makeAPoint'.


            "2.2"

            addMySlots: ' { rcvr => pointParent. device :: 
                 display = ( device drawPixelX: x Y: y Color: color ) }'.

            "2.3"
            addMySlots: 'screenParent = ()'.
            addMySlots: 'screen = (|parent* = screenParent|)'.

            addMySlots: '
            { rcvr => screenParent :: drawPixelX: x Y: y Color: c = (
                \'  x=\' _Print. x _Print.
                \'  y=\' _Print. y _Print.
                \'  color=\' _Print. c _Print.
             ).
            }'.

            test: ' { rcvr => makeAPoint. device => screen } display'.

            "2.4"

            addMySlots: 'figureParent = ()'.
            addMySlots: 'complexFigure  = (|parent* = figureParent|)'.
            addMySlots: '{ rcvr => complexFigure :: point1. point2. point3 }'.
            addMySlots: '{ rcvr => figureParent :: display = ( point1 display. point2 display. point3 display ) }'.

            addMySlots: 'makeFig = (|f1|
            f1: complexFigure copy.
            f1 point1: makeAPointX: 2 Y: 3 Color: \'red\'.
            f1 point2: makeAPointX: 4 Y: 5 Color: \'green\'.
            f1 point3: makeAPointX: 6 Y: 7 Color: \'blue\'.
            f1)'.

            test: '{ rcvr => makeFig. device => screen } display'.

            "2.5"

            addMySlots: '{ rcvr => screenParent.  isColorblind => true :: 
              drawPixelX: x Y: y Color: c = ( 
                {isColorblind => false} drawPixelX: x Y: y Color: c mapToGrayScale) }'.

            addMySlots: '{ rcvr => allWorldRegions abstractTypes abstractString :: mapToGrayScale = (\'gray-\', rcvr) }'.

            test: '\'\n\n\' _Print'.

            test: ' { rcvr => makeFig. device => screen. isColorblind => true} display'.

            "2.6"

            addMySlots: 'locationParent = ()'.
            addMySlots: 'southernHemi = (|parent* = locationParent|)'.
            addMySlots: 'australia = (|parent* = southernHemi|)'.
            addMySlots: 'antarctica = (|parent* = southernHemi|)'.
            addMySlots: 'southAfrica = (|parent* = southernHemi|)'.

            addMySlots: '{ rcvr => screenParent.  location => southernHemi  ::
              drawPixelX: x Y: y Color: c = ( {-location} drawPixelX: x Y: 0 - y Color: c ) }
            '.

            test: '\'\n\n\' _Print'.
            test: ' { rcvr => makeFig.  device => screen.  location => australia } display '.


            test: '\'\n\n\' _Print'.
            test: ' { rcvr => makeFig.  device => screen.  location => australia.  isColorblind => true } display '   
            ExpectAmbiguous: 'drawPixelX:Y:Color:'.

            addMySlots: '{rcvr => screenParent.  isColorblind =>true. location => southernHemi ::
              drawPixelX: x Y: y Color: c = ( {-isColorblind} drawPixelX: x Y: y Color: c mapToGrayScale ) }'.

            test: ' { rcvr => makeFig.  device => screen.  location => australia.  isColorblind => true } display '.

            "2.7"

            addMySlots: '{ rcvr =>screenParent. location => antarctica ::
             drawPixelX: x Y: y Color: c = ( {-location} drawPixelX: 2 * x Y: -2 * y Color: c  ) }'.

            test: '\'\nantarctica:\n\' _Print'.
            test: '{rcvr => makeFig. device => screen. location => antarctica} display'.

            "2.8"
            test: '\'\nantarctica colorblind:\n\' _Print'.
            test: '{rcvr => makeFig. device => screen. isColorblind => true. location => antarctica} display'.


            [



            test: '{ rcvr => f1. isAussie => true. isColorblind => true. screen => s1} display' ExpectAmbiguous: 'drawPixelX:Y:Color:'.



            [removeDefaultCoordinateOfDimension: 'demo'.].


            addMySlots: '{ rcvr => complexFigureParent.  debugBlock => abstractBlock.  debugScreen => screenParent
            :: display = ({ rcvr => debugBlock. screen => debugScreen } value: rcvr.
            { -debugBlock} display ) }'.

            '\n\n\n' print.
            test: '{ rcvr => f1. screen => s1. debugScreen => s2. debugBlock => [|:fig| \'DEBUG \' _Print. fig point1 display]} display'.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'demos' -> 'd4_paper_round2_example' -> () From: ( | {
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
            [d3_paper_example makeOnlyMe.].
            d4_paper_round2_example makeOnlyMe.
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
