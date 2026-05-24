 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         fileSyntaxTester = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'fileSyntaxTester' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit tester copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'fileSyntaxTester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser fileSyntaxTester.

CopyDowns:
globals parseKit tester. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'fileSyntaxTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser fileSyntaxTester parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'tester' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         tests = ( |
            | 
            vector copyAddLast: 'boids_from_original').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         lyAST = ( |
            | 
            lyASTFor: 'applications/lyParser/boids_from_scratch.ly' asFileContents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         lyASTFor: s = ( |
            | 
            compilationUnitParser copyParseSource: s IfFail: 0 raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         old_testAll = ( |
            | 
            fileSyntaxTester testAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | 
            lexer copy testActual).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         tester = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser tester.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         commentPrefix = '/* '.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         commentSuffix = ' */'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         commentify: s = ( |
             r <- ''.
            | 
            s do: [|:c|
              ('/*\\' includes: c) ifTrue: [
                r: r, '\\'.
              ].
              r: r, c
            ].
            resend.commentify: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         old_testAll = ( |
            | 
            fileSyntaxTester testAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'tester' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         prototypes* = bootstrap stub -> 'globals' -> 'lyParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'Category: files\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         testDirectory = 'applications/lyParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'Category: files\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         testFileSuffix = '.ly'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         tests = ( |
            | 
            vector copyAddLast: 'boids_from_original').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         theParser = ( |
            | compilationUnitParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'tester' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         uncommentify: s = ( |
             foundBackSl <- bootstrap stub -> 'globals' -> 'false' -> ().
             r <- ''.
            | 
            (resend.uncommentify: s) do: [|:c|
              foundBackSl not && [c == '\\']
                ifTrue: [ foundBackSl: true ]
                 False: [ foundBackSl: false.  r: r, c ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         lyParserTester = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules lyParserTester.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: lyParserTester InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/lyParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParserTester' -> () From: ( | {
         'ModuleInfo: Module: lyParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules lyParserTester postFileIn
