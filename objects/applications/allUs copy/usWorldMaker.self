 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         usWorldMaker = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usWorldMaker.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usWorldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'usVMFaSMaker
usCore
usExamples
usExperiments
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         worldMaker = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: usWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | 
            makeVM. makeNonVM).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         makeNonVM = ( |
            | 
            core makeOnlyMe. bankAccount makeOnlyMe. helloWorld makeOnlyMe.
            experiments makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: operations\x7fModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         makeVM = ( |
            | 
            us worldMaker vm make).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'ModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usWorldMaker InitialContents: FollowSlot\x7fVisibility: public'
        
         test: usExpressionStringOrBlock Expect: selfValue = ( |
             r.
            | 

            r:  evaluateStringAsEvaluatorContents: (usStringFrom: usExpressionStringOrBlock)
                Receiver: foyer.
            [r value = selfValue] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usWorldMaker InitialContents: FollowSlot'
        
         usStringFrom: stringOrBlock = ( |
             m.
            | 
            m: stringOrBlock asMirror.
            case
              if: [m isReflecteeBlock ]  Then: [m methodSource]
              If: [m isReflecteeString]  Then: [m reflecteeStringIfFail: [m reflectee asString]]
              Else: [m reflectee asString]).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'usVMFaSMaker' From: 'applications/allUs'
 bootstrap read: 'usCore' From: 'applications/allUs'
 bootstrap read: 'usExamples' From: 'applications/allUs'
 bootstrap read: 'usExperiments' From: 'applications/allUs'



 '-- Side effects'

 globals modules usWorldMaker postFileIn
