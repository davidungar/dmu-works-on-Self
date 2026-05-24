 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         helloWorld = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker helloWorld.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         makeExampleSlots = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples helloWorld greeter. :: greet = ( \'I do not know your language, so the best I can do is: Hello World!\' ).
                { language => allLanguages english ::  greet = ( \'Hello World!\' ) }
                { language => allLanguages hebrew  ::  greet = ( \'Shalom Olam!\' ) }
                { language => allLanguages english ::
                    { formality => allFormalityCoords casual  ::  greet = ( \'Hi World!\' )    }
                    { formalit  => allFormalityCoords formal  ::  greet = ( \'Hello World!\' ) }
                }
              }
              { rcvr => allWorldRegions examples helloWorld nonContextualGreeter  ::  greet = ( \'Hello World!\' ) }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         makeFormalityDimension = ( |
            | 
            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  allFormalityCoords =  () }'.

            addExistingFacetFromExpression: '{ rcvr => allFormalityCoords.  ::  formal =  foyer true  }'.
            addExistingFacetFromExpression: '{ rcvr => allFormalityCoords.  ::  casual = foyer false }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         makeLanguageDimension = ( |
             language.
            | 

            language: addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  allLanguages =  () }'.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples allLanguages.  ::  english =  () }'
              Parent: language.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples allLanguages.  ::  hebrew =  () }'
              Parent: language.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples allLanguages.  ::  italian =  () }'
              Parent: language).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples.  ::  helloWorld =  () }'
              Parent: foyer.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples helloWorld.  ::  greeter =  () }'
              Parent: foyer.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples helloWorld.  ::  nonContextualGreeter =  () }'
              Parent: foyer.

            makeLanguageDimension.
            makeFormalityDimension.
            makeExampleSlots.
            test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testEnglish = ( |
            | 
            test: ' { language => allLanguages english. 
                      rcvr     => allWorldRegions examples helloWorld greeter } greet '
                Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testEnglishFalse = ( |
            | 
            test: ' { language  => allLanguages english.
                      formality => allFormalityCoords formal.
                      rcvr      => allWorldRegions examples helloWorld greeter } greet '
            Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testEnglishTop = ( |
            | 
            test: ' { language  => allLanguages english. 
                      formality => foyer.
                      rcvr      => allWorldRegions examples helloWorld greeter } greet
                  '
                Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testEnglishTrue = ( |
            | 
            test: ' { language  => allLanguages english. 
                      formality => allFormalityCoords casual.
                      rcvr      => allWorldRegions examples helloWorld greeter } greet
                  '
                Expect: 'Hi World!'.


            test: ' { language =>  allLanguages english.
                       formality => allFormalityCoords casual.
                       bogusDimension => \'bogus\'.
                       rcvr => allWorldRegions examples helloWorld greeter } greet
                  '
                Expect: 'Hi World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testHebrew = ( |
            | 
            test: '
                  { language => allLanguages hebrew. 
                    rcvr     => allWorldRegions examples helloWorld greeter } greet
                  '
                Expect: 'Shalom Olam!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testItalian = ( |
            | 
            test: ' { language  => allLanguages italian.
                      rcvr      => allWorldRegions examples helloWorld greeter } greet '
            Expect: 'I do not know your language, so the best I can do is: Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'helloWorld' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         testNoContext = ( |
            | 
            test: '
                  allWorldRegions examples helloWorld greeter greet
                  '
                Expect: 'I do not know your language, so the best I can do is: Hello World!'.

            test: '
                  allWorldRegions examples helloWorld nonContextualGreeter greet
                  '
                Expect: 'Hello World!').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         korzHelloWorld = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzHelloWorld.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzHelloWorld' -> () From: ( | {
         'ModuleInfo: Module: korzHelloWorld InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzHelloWorld postFileIn
