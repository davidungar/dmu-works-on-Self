 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         worldMaker = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         addSlotsFromExpression: expression ExpectError: msg = ( |
            | 
            harold. "to be implemented"
            msg).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         failingtest: korzExpressionStringOrBlock Expect: selfValue = ( |
            | 
            runFailingTests ifTrue: [ test: korzExpressionStringOrBlock Expect: selfValue ]
                            False:  self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         failingtest: korzExpressionStringOrBlock ExpectNotUnderstood: selector = ( |
            | 
            runFailingTests ifTrue: [ test: korzExpressionStringOrBlock ExpectNotUnderstood: selector ]
                            False:  self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Comment: Simplifies the world for just showing the slots for the Korz paper figure\x7fModuleInfo: Module: korzWorldMaker InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         isForPaperFigure <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         korzStringFrom: stringOrBlock = ( |
             m.
            | 
            m: stringOrBlock asMirror.
            case
              if: [m isReflecteeBlock ]  Then: [m methodSource]
              If: [m isReflecteeString]  Then: [m reflecteeStringIfFail: [m reflectee asString]]
              Else: [m reflectee asString]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | 
            makeVM. makeNonVM).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         makeNonVM = ( |
            | 
            core makeOnlyMe. 
            isForPaperFigure ifTrue: [
              demos d4_paper_round2_example makeOnlyMe.
              ^ self
            ].
            contextualDisplay makeOnlyMe.
            demos makeOnlyMe.

            bankAccount makeOnlyMe.
            helloWorld makeOnlyMe.
            privacyE makeOnlyMe.
            experiments makeOnlyMe.
            identityE makeOnlyMe.
            privacy makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         makeVM = ( |
            | 
            korz worldMaker vm make).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         runFailingTests = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock = ( |
             r.
            | 

            r:  evaluateStringAsEvaluatorContents: (korzStringFrom: korzExpressionStringOrBlock)
                                               In: testingContext.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock Expect: selfValue = ( |
             r.
            | 

            r:  evaluateStringAsEvaluatorContents: (korzStringFrom: korzExpressionStringOrBlock)
                                               In: testingContext.
            [r value = selfValue] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock Expect: selfValue ButAmbiguous: selector = ( |
            | 
            runFailingTests ifTrue: [ test: korzExpressionStringOrBlock Expect: selfValue ]
                             False:  self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock Expect: selfValue ButGet: selfValue2 = ( |
             r.
            | 

            r:  evaluateStringAsEvaluatorContents: (korzStringFrom: korzExpressionStringOrBlock)
                                               In: testingContext.
            [r value = selfValue2] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock Expect: selfValue ButNotUnderstood: selector = ( |
            | 
            test: korzExpressionStringOrBlock ExpectNotUnderstood: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock ExpectAmbiguous: selector = ( |
            | 
            test: '{ ', korz multidispatchLookup lookupFailureHandlerDimension,  ' => [ |:sel. :n| ^ n = 0 ifTrue: [\'not understood\'] False: [sel]].
                        rcvr => [', (korzStringFrom: korzExpressionStringOrBlock), ']} value'
            Expect: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         test: korzExpressionStringOrBlock ExpectFacetNamed: korzName = ( |
             r.
            | 

            r:  evaluateStringAsEvaluatorContents: (korzStringFrom: korzExpressionStringOrBlock)
                                               In: testingContext.
            [r korzName = korzName] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fCategory: failing tests\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock ExpectFacetNamed: korzName ButNotUnderstood: selector = ( |
            | 
            test: korzExpressionStringOrBlock ExpectNotUnderstood: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock ExpectNotUnderstood: selector = ( |
            | 
            test: '{ ', korz multidispatchLookup lookupFailureHandlerDimension,  ' => [ |:sel. :n| ^ n = 0 ifTrue: [sel] False: [\'ambig\']].
                        rcvr => [', (korzStringFrom: korzExpressionStringOrBlock), ']} value'
            Expect: selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         korzWorldMaker = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzWorldMaker.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: korzWorldMaker InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'korzVMFaSMaker
korzCore
korzExamples
korzExperiments
korzOldCore
korzOldExperiments
korzOldHelloWorld
korzPrivacy
korzTemporality
korzPrivacyE
korzCollectionE
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'korzVMFaSMaker' From: 'applications/allKorz'
 bootstrap read: 'korzCore' From: 'applications/allKorz'
 bootstrap read: 'korzExamples' From: 'applications/allKorz'
 bootstrap read: 'korzExperiments' From: 'applications/allKorz'
 bootstrap read: 'korzOldCore' From: 'applications/allKorz'
 bootstrap read: 'korzOldExperiments' From: 'applications/allKorz'
 bootstrap read: 'korzOldHelloWorld' From: 'applications/allKorz'
 bootstrap read: 'korzPrivacy' From: 'applications/allKorz'
 bootstrap read: 'korzTemporality' From: 'applications/allKorz'
 bootstrap read: 'korzPrivacyE' From: 'applications/allKorz'
 bootstrap read: 'korzCollectionE' From: 'applications/allKorz'



 '-- Side effects'

 globals modules korzWorldMaker postFileIn
