 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         usHelloWorld = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usHelloWorld.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         helloWorld = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us worldMaker helloWorld.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         makeCasualDimension = ( |
            | 
            addFacetFromExpression: '(| self = foyer. dimension = dimension. worldRegion = examples |) casual =  ()'
                            Parent: defaultDimensionFacet. 

            addExistingFacetFromExpression: '(| self = casual. |) true =  foyer true'.
            addExistingFacetFromExpression: '(| self = casual. |) false = foyer false').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         makeExampleSlots = ( |
            | 
            addSlotFromExpression: '
              (| self = examples helloWorld greeter. |) greet = ( \'I do not know your language, so the best I can do is: Hello World!\' ).
              (| self = examples helloWorld greeter. language = language english|)
                      greet = ( \'Hello World!\' ).
              (| self = examples helloWorld greeter. language = language hebrew|)
                      greet = ( \'Shalom Olam!\' ).
              (| self = examples helloWorld greeter. language = language english. casual = true. |)
                      greet = ( \'Hi World!\' ).
              (| self = examples helloWorld greeter. language = language english. casual = false. |)
                      greet = ( \'Hello World!\' )
            '.

            addSlotFromExpression: '(| self = examples helloWorld nonContextualGreeter. |)
                      greet = ( \'Hello World!\' )').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         makeLanguageDimension = ( |
             language.
            | 

            language: addFacetFromExpression: '(| self = foyer. dimension = dimension. worldRegion = examples |) language =  ()'
                                      Parent: defaultDimensionFacet.

            addFacetFromExpression: '(| self = language. |) english =  ()'
              Parent: language.

            addFacetFromExpression: '(| self = language. |) hebrew =  ()'
              Parent: language.

            addFacetFromExpression: '(| self = language. |) italian =  ()'
              Parent: language).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '(| self = examples. |) helloWorld =  ()'
              Parent: foyer.

            addFacetFromExpression: '(| self = examples helloWorld. |) greeter =  ()'
              Parent: foyer.

            addFacetFromExpression: '(| self = examples helloWorld. |) nonContextualGreeter =  ()'
              Parent: foyer.

            makeLanguageDimension.
            makeCasualDimension.
            makeExampleSlots.
            test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         test = ( |
            | 
            testNoContext.
            testItalian.
            testHebrew.
            testEnglish.
            testEnglishTop.
            testEnglishTrue.
            testEnglishFalse).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testEnglish = ( |
            | 
            test: [
                  addContextAttribute: 'language' Value: language english 
                       Do: [examples helloWorld greeter greet]
                  ]
                Expect: 'Hello World!'.

            test: [
                    [examples helloWorld greeter greet]
                       valueWithContextAttribute: 'language' Value: language english 
                  ]
                Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testEnglishFalse = ( |
            | 
            test: [
                  addContextAttribute: 'language' Value: language english 
                            Attribute: 'casual'   Value: false
                        Do: [examples helloWorld greeter greet]
                  ]
                Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testEnglishTop = ( |
            | 
            test: [
                  addContextAttribute: 'language' Value: language english 
                            Attribute: 'casual'   Value: foyer
                        Do: [examples helloWorld greeter greet]
                  ]
                Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testEnglishTrue = ( |
            | 
            test: [
                  addContextAttribute: 'language' Value: language english 
                            Attribute: 'casual'   Value: true
                        Do: [examples helloWorld greeter greet]
                  ]
                Expect: 'Hi World!'.

            test: [
                    [examples helloWorld greeter greet]
                       valueWithContextAttribute: 'language' Value: language english 
                                       Attribute: 'casual'   Value: true
                  ]
                Expect: 'Hi World!'.

            test: [
                    [examples helloWorld greeter greet]
                       valueWithContextAttribute: 'language' Value: language english 
                                       Attribute: 'casual'   Value: true
                                       Attribute: 'bogusDimension'   Value: 'bogus'
                  ]
                Expect: 'Hi World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testHebrew = ( |
            | 
            test: [
                  addContextAttribute: 'language' Value: language hebrew 
                        Do: [examples helloWorld greeter greet]
                  ]
                Expect: 'Shalom Olam!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testItalian = ( |
            | 
            test: [
                  addContextAttribute: 'language' Value: language italian 
                        Do: [examples helloWorld greeter greet]
                  ]
                Expect: 'I do not know your language, so the best I can do is: Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usHelloWorld InitialContents: FollowSlot'
        
         testNoContext = ( |
            | 
            test: '
                  examples helloWorld greeter greet
                  '
                Expect: 'I do not know your language, so the best I can do is: Hello World!'.

            test: '
                  examples helloWorld nonContextualGreeter greet
                  '
                Expect: 'Hello World!').
        } | ) 



 '-- Side effects'

 globals modules usHelloWorld postFileIn
