 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         hanenberg1 = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules hanenberg1.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'hanenberg1' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'process' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         doErrorHandling: errorHandlers = ( |
            | 
            shTranscript show: 'doErrorHandling ...'.

            suspend.
            killActivationsUpTo: ((errorHandlers at: 0)).
            resetCauseOfError.

            "Up to here everything is fine...."
            "The stack is killed until the method internalIfErrorTry:OnFail:"
            "Now both parameters of the method activation should be swopped"


            "I just do this to make debugging easier - I access the shDummy tmp from a different shell"
            shDummy tmp: (stack at: 0). 

            "HHHEEEELLLLLPPPPPP
            I tried the following

            1.
            shDummy tmp at: 'tryBlock' PutContents: (reflect:  (shDummy tmp at: 'failBlock')).
            -> badTypeError

            2.
            (reflect: shDummy tmp) at: 'tryBlock' PutContents: (reflect:  (shDummy tmp at: 'failBlock')).
            -> Just makes 'a mirror on a mirror', so it does not have any effect....

            "
            "
            (shDummy tmp at: 'tryBlock') contents define: (reflect: (shDummy tmp at: 'failBlock'))
            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'process' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         isHandled = ( |
             beforeLastMirror.
             count.
             handler.
             lastMirror.
            | 

            [sh errorHandling].

            beforeLastMirror: nil.
            lastMirror: nil.
            handler: list copy.
            count: 0.

            stack copy do: [|:each|
              lastMirror ifNotNil: [

                  "The internal exception handling method"
                  (lastMirror  selector asString = 'internalIfErrorTry:OnFail:') ifTrue: [

                    "Only catches Exception if first parameter is the same as receiver"
                    (lastMirror receiver reflectee = ((lastMirror at: 'tryBlock') contents reflectee)) ifTrue: [
                      "The internal exception handling method"
                      (each selector asString = 'ifFail:') ifTrue: [
                        (each receiver =  (lastMirror receiver)) ifTrue: [
                          handler add: count-1.
                          handler add: beforeLastMirror.
                          handler add: count.
                          handler add: lastMirror.
                          handler add: count + 1.
                          handler add: each.
                          ^ handler.
                        ].
                      ].
                    ].
                  ].
              ].
              beforeLastMirror: lastMirror.
              lastMirror: each.
              count: count + 1.
            ].

            ^  nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'process' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         t1 = ( |
             i.
             v.
            | 
            i: 0.
            v: vector prototype cloneSize: (stack size - 1).

            stack do: [|:each|
              (i=0) ifFalse: [
                v at: (i-1) Put: (stack at: i).
              ].
              i: i + 1.
            ].
            stack doInspect.
            "stack: v."
            "continue.").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fCategory: shSUnit\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shAssertionError = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shAssertionError' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shAssertionError.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fCategory: shSUnit\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTestCaseError = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTestCaseError' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTestCaseError.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shAssertionError' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'shTestCaseError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shChanges_INSTALLATION_TESTS = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shChanges_INSTALLATION_TESTS.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         m = ( |
            | 
            shTranscript show: 'test').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'lobby' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         runAll = ( |
             m.
            | 
            m: reflect: self.
            m names copy do: [ |:aName|
              ('test' isPrefixOf: aName) ifTrue: [
                [shTranscript show: 'send: '.] 
                  ifFail: [shTranscript show: 'FAILED - ', aName.]
                  IfNotFail: [shTranscript show: 'ok - ', aName.].
              ].
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         runtests = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         test01_BLOCK_ifFail_01 = ( |
             ok.
            | 
            "checks, whether exceptions are throws correctly"

                [blabla blabla] ifFail: [ shTranscript show: 'ok'. ^  self. ].
                self error: 'dummy').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shChanges_INSTALLATION_TESTS' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         test02_BLOCK_ifFailNotFail_01 = ( |
             ok.
            | 
            "checks, whether exceptions are throws correctly"

                [blabla blabla] ifFail: [
                  "everything ok" ^  self.
                ] IfNotFail: [
                  error: 'Should be an error'
                ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shUI\x7fModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (nil)'
        
         shColumnMorph <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shDummy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shDummy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shDummy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shDummy' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         m = ( |
            | 
            error: 'dummy error').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shDummy' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'defaultBehavior' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shDummy' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (())'
        
         tmp <- ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shDummy' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (().)'
        
         tmp2 <- ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shExceptionHandling = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shExceptionHandling' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shExceptionHandling.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shExceptionHandling' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (())'
        
         defaultMethodActivation <- ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shUI\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shPluggableCreation = ( |
             im.
            | 
            im: columnMorph clone.
            im color: paint newRed.
            im setWidth: 200 Height: 200.

            process this birthEvent sourceHand world addMorph: im asMorph.
            im changed).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shUI\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shScripts = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shScripts' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shScripts.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shScripts' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         createNewColumnMorph = ( |
             t.
            | 
            t: columnMorph copy.
            t openInWorld).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shScripts' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         createTextViewer = ( |
             t.
             tf.
            | 
            t: textViewerMorph copy copyTitle: 'Stefan'.
            t openInWorld.
            t open).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shScripts' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fCategory: shSUnit\x7fModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (nil)'
        
         shSelfUnit.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fCategory: shSUnit\x7fModuleInfo: Module: hanenberg1 InitialContents: InitializeToExpression: (nil)'
        
         shSelfUnitRunner.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fCategory: shSUnit\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTestCase = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTestCase' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTestCase.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCase' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         assert: b = ( |
             err.
            | 
            ^ assert: b Msg: 'An assertion has failed. Expected true but got false.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCase' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         assert: b Msg: msg = ( |
            | 
            b ifFalse: [
              (shAssertionError newWithMsg: msg) signalOn: self.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCase' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'lobby' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseError' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         errorMsgPrefix = 'TestCaseError: '.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseError' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         newWithMsg: aMessage = ( |
             s.
            | 
            s: self clone.
            s message: aMessage.
            s receiver: nil.
            ^ s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseError' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'processErrors' -> 'userError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseError' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         signalOn: anObject = ( |
             env = bootstrap stub -> 'lobby' -> ().
            | 
            "If the error string is too long, the system crashes trying to draw the morphs.
              -- dmu 11/05"
            "Temporary fix for handling errors under Klein and Yoda. -- Adam, 5/06"
            (_TheVMIfFail: [
            env process this suspendAndTrace:
                (self receiver: anObject)
                    message:  (ensureString: errorMsgPrefix, message) copyAtMostWithEllipsis: 2000.
            env process this errorContinueValue] ) vmKitsError: message).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fCategory: shSUnit-Tests\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTestCaseTestCase = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTestCaseTestCase' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTestCaseTestCase.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseTestCase' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'shTestCase' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseTestCase' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         runTests = ( |
            | 
            test01ThrowException).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTestCaseTestCase' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         test01ThrowException = ( |
             ok.
            | 
            "checks, whether exceptions are throws correctly"

                [assert: false] ifFail: [
                  "everything ok" self.
                  shTranscript show: 'passed - test01ThrowException'.
                ] NotFail: [
                  error: 'Should be an error'
                ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shUI\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTextViewer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTextViewer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTextViewer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTranscript = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTranscript.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         addDependent: d = ( |
            | 
            dependents add: d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         clear = ( |
            | 
            dependents do: [|:each|
              each clear.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         dependents = bootstrap define: bootstrap stub -> 'globals' -> 'shTranscript' -> 'dependents' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             bootstrap remove: 'safety' From:
             globals set copyRemoveAll ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTranscript' -> 'dependents' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTranscript dependents.

CopyDowns:
globals set. copyRemoveAll 
SlotsToOmit: parent prototype safety.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         open = ( |
            | 
            shTranscriptWindow openNew).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parents* = bootstrap stub -> 'lobby' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         removeAllDependents = ( |
            | 
            dependents copy do: [|:each|
              removeDependent: each.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         removeDependent: d = ( |
            | 
            (dependents includes: d) ifTrue: [
              dependents remove: d.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscript' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         show: s = ( |
            | 
            dependents do: [ |:each| each info: s]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTranscriptWindow = bootstrap define: bootstrap stub -> 'globals' -> 'shTranscriptWindow' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals frameMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTranscriptWindow' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTranscriptWindow.

CopyDowns:
globals frameMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscriptWindow' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         clear = ( |
            | 
            editor setText: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscriptWindow' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         info: aString = ( |
            | 
            editor appendString: aString.
            editor appendString: '\n' asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscriptWindow' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         openNew = ( |
             s.
            | 
            s: (copyTitle: 'A TranscriptWindow' Text: '').
            shTranscript addDependent: s.
            s openInHand.
            s open).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: shChanges\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         shTranscriptWindowTrait = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'shTranscriptWindowTrait' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals shTranscriptWindowTrait.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscriptWindowTrait' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         delete = ( |
            | 
            shTranscript removeDependent: self.
            parent.delete).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'shTranscriptWindowTrait' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'textViewerMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'block' -> () From: ( | {
         'Category: shChange\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         ifFail: aBlock = ( |
            | 
            internalIfErrorTry: self OnFail: aBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'block' -> () From: ( | {
         'ModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         internalIfError = ( |
            | 
            value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'block' -> () From: ( | {
         'Category: shChange\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         internalIfErrorTry: tryBlock OnFail: failBlock = ( |
            | 
            tryBlock value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: shUI\x7fModuleInfo: Module: hanenberg1 InitialContents: FollowSlot'
        
         openInHand = ( |
            | 
            process this birthEvent sourceHand attach: self).
        } | ) 



 '-- Side effects'

 globals modules hanenberg1 postFileIn
