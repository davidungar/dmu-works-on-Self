 '$Revision: 30.7 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot'
        
         usParserTester = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usParserTester.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs/usParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.7 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParserTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         tester = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit tester copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser tester.

CopyDowns:
globals parseKit tester. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser tester parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         commentPrefix = '\"'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         commentSuffix = '\"'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         commentify: cmtSrc = ( |
             r <- ''.
            | 
            cmtSrc do: [|:c|
              ('"\\' includes: c) ifTrue: [r: r, '\\'].
              r: r, c
            ].
            resend.commentify: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'usParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'tester' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot'
        
         showFile: fileName = ( |
             o.
             tree.
            | 
            tree: fileSyntaxTester parse: fileName asFileContents IfFail: [|:e|
              ^  error: e reason
            ].
            o: parseNodeOuterOutliner copyNode: tree.
            process this birthEvent sourceHand attach: o.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'Category: files\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         testDirectory = 'applications/allUs/usParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'Category: files\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot'
        
         testFileSuffix = '.us'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         theParser = ( |
            | 
            error: 'use either fileSyntaxTester or stringSyntaxTester').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         uncommentify: wholeComment = ( |
             foundBackSl <- bootstrap stub -> 'globals' -> 'false' -> ().
             r <- ''.
            | 
            (resend.uncommentify: wholeComment) do: [|:c|
              foundBackSl not && [c == '\\']
               ifTrue: [ foundBackSl: true ]
                False: [ foundBackSl: false.  r: r, c ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> () From: ( | {
         'Category: foyer-level testing\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         testAll = ( |
            | 
            nameSpace lexer    testTokens.
              fileSyntaxTester testAll.
            stringSyntaxTester testAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> () From: ( | {
         'Category: foyer-level testing\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         testifyAll = ( |
            | 
              fileSyntaxTester testifyAll.
            stringSyntaxTester testifyAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         fileSyntaxTester = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'testAll' From:
             bootstrap remove: 'testifyAll' From:
             globals usParser tester copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser fileSyntaxTester.

CopyDowns:
globals usParser tester. copy 
SlotsToOmit: parent testAll testifyAll.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser fileSyntaxTester parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         parseAllModules = ( |
            | 
            transporter moduleDictionary do: [|:m. :n|
              n printLine.
              parseModule: m.
            ].
            'done' printLine.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         parseModule: aModule = ( |
            | 
             parse: aModule fileName asFileContents
            IfFail: [|:e| error: e printString].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = ( |
            | 
            (tests:  2 Named: 'acceptFileSyntax'),
            (tests:  4 Named: 'block'),
            (tests:  4 Named: 'comment'),
            (tests:  3 Named: 'dot'),
            (tests: 20 Named: 'expr'),
            (tests:  2 Named: 'fancy'),
            (tests: 28 Named: 'object'),
            (tests:  5 Named: 'return'),
            (tests: 12 Named: 'slotList'),
            ('emptyFileSyntax' & 'integer') asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         theParser = ( |
            | 
            fileParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: public'
        
         stringSyntaxTester = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'testAll' From:
             bootstrap remove: 'testifyAll' From:
             globals usParser tester copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser stringSyntaxTester.

CopyDowns:
globals usParser tester. copy 
SlotsToOmit: parent testAll testifyAll.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser stringSyntaxTester parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'tester' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot'
        
         tests = ( |
            | 
            (tests: 2 Named: 'acceptStringSyntax'),
            vector copyAddLast: 'emptyStringSyntax').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringSyntaxTester' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParserTester InitialContents: FollowSlot\x7fVisibility: private'
        
         theParser = ( |
            | 
            stringParser).
        } | ) 



 '-- Side effects'

 globals modules usParserTester postFileIn
