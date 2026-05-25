 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         privacyE = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         commonOps = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE commonOps.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot\x7fVisibility: public'
        
         addMySlots: expression = ( |
            | 
            addSlotsFromExpression: '{ experiment => ', experimentName, ' :: ', expression, '}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         eval: s = ( |
            | evaluateStringAsEvaluatorContents: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeExperimentFacet = ( |
            | 
            addSlotsFromExpression: experimentName, ' = ()'.
            setDefaultCoordinateOfDimension: 'experiment' To: getWellKnownFacet: experimentName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: counters\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         dualCounterEStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterEStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE dualCounterEStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterEStyle' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'dualCounterEStyle'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterEStyle' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: 'dualCounter = (|parent* = foyer|)'.

            addMySlots: '
              { 
                rcvr => dualCounter.
                cap => ().
                ::
                  countHolder = (|p* = foyer. count <- 0|).
                  upCounter = ( |
                    p* = foyer.
                    {cap => cap :: ch}
                    copy: ch = ( |r. cap = cap| r: copy. {cap=>cap. rcvr=>r} ch: ch. r).
                    incr = ( 
                      |ch. cap = cap|  ch: {cap=>cap. rcvr=>rcvr} ch.
                      { cap => cap. rcvr => cc } ch count: ch count + 1 ).
                  | ).
                  downCounter = ( |
                    p* = foyer.
                    {cap => cap :: ch}
                    copy: ch = ( |r. cap = cap| r: copy. {cap=>cap. rcvr=>r} ch: ch. r).
                    decr = ( 
                      |ch. cap = cap|  ch: {cap=>cap. rcvr=>rcvr} ch.
                      ch count: ch count - 1 ).
                  | ).
                  { -cap ::
                    makeDualCounter = ( |c. v|
                      { 
                        cap => cap.  
                        rcvr => [
                          c: countHolder copy.
                          v: vector copySize: 2.
                          v at: 0 Put:   upCounter copy: c.
                          v at: 1 Put: downCounter copy: c.
                          v
                        ]
                      } value
                    )
                  }
              }'.


            test: '|v| v: dualCounter makeDualCounter. (v at: 0) incr. (v at: 0) incr' Expect: 2. 
            test: '|v| v: dualCounter makeDualCounter. (v at: 0) incr'  Expect: 1.

            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterEStyle' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: counters\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         dualCounterH = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterH' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE dualCounterH.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterH' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'dualCounterH'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterH' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: 'dualCounter = (|parent* = foyer|)'.

            addMySlots: '
              { 
                rcvr => dualCounter.
                cap => ().
                ::
                  countHolder = (|p* = foyer. count <- 0|).
                  upCounter = ( |
                    p* = foyer.
                    {cap => cap :: ch}
                    copy: ach = ( |r. cap = cap| r: copy. {cap=>cap. rcvr=>r} ch: ach. r).
                    incr = ( 
                      |ach. cap = cap| ach: {cap=>cap. "rcvr=>rcvr"} ch.
                      { cap => cap. rcvr => ach } count: { cap => cap. rcvr => ach } count + 1 ).
                  | ).
                  downCounter = ( |
                    p* = foyer.
                    {cap => cap :: ch}
                    copy: ch = ( |r. cap = cap| r: copy. {cap=>cap. rcvr=>r} ch: ch. r).
                    decr = ( 
                      |ch. cap = cap|  ch: {cap=>cap. rcvr=>rcvr} ch.
                      ch count: ch count - 1 ).
                  | ).
                  { -cap ::
                    makeDualCounter = ( |c. v|
                      { 
                        cap => cap.  
                        rcvr => [
                          c: countHolder copy.
                          c count: 0.
                          v: vector copySize: 2.
                          v at: 0 Put:   upCounter copy: c.
                          v at: 1 Put: downCounter copy: c.
                          v
                        ]
                      } value
                    )
                  }
              }'.


            test: '|v| v: dualCounter makeDualCounter. (v at: 0) incr. (v at: 0) incr' Expect: 2. 
            test: '|v| v: dualCounter makeDualCounter. (v at: 0) incr'  Expect: 1.

            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterH' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: counters\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         dualCounterKStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterKStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE dualCounterKStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterKStyle' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'dualCounterKStyle'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterKStyle' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              dualCounter = ().
            '.


            addMySlots: '
              {
                rcvr => dualCounter. secure_counter => (). up => (). down => ()
                ::  
                { -up. -down. :: count <- 0 }
                { -secure_counter :: 
                  { direction => up ::  count = (
                      | c = secure_counter |
                      ^ { secure_counter => c.  rcvr => rcvr } count: {secure_counter => c.  rcvr => rcvr} count + 1 )
                  }
                  { direction => down ::  count = (
                      | c = secure_counter |
                      ^ { secure_counter => c.  rcvr => rcvr } count: {secure_counter => c.  rcvr => rcvr} count - 1 )
                  }
                }
              }
            '.





            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'dualCounterKStyle' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            simplePrivacy makeOnlyMe.
            simplePrivacyAlt makeOnlyMe.
            orthogonalPrivacy makeOnlyMe.

            simpleStack makeOnlyMe.
            stackWithInvariants1 makeOnlyMe.
            stackWithInvariants2 makeOnlyMe.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: privacy\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         orthogonalPrivacy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'orthogonalPrivacy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE orthogonalPrivacy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'orthogonalPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'orthogonalPrivacy'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'orthogonalPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              andy = ().
              joe = ()
            '.


            addMySlots: '
              { 
                secure_IBM_capability => ().  secure_Oracle_capability => ().  secure_HIPPA_capability => ().
                ::
                { 
                  -secure_IBM_capability. -secure_Oracle_capability. -secure_HIPPA_capability. 
                  ::
                  { who => joe.  :: employer = \'IBM\'.    }
                  { who => andy. :: employer = \'Oracle\'. }

                  { who => joe.   secure_IBM_capability    => secure_IBM_capability    :: serial_number = \'5D1234\'. }
                  { who => joe.   secure_HIPPA_capability  => secure_HIPPA_capability  :: issue = \'headache\'.       }
                  { who => andy.  secure_Oracle_capability => secure_Oracle_capability :: serial_number = \'1234\'.     }
                  { who => andy.  secure_HIPPA_capability  => secure_HIPPA_capability  :: issue = \'warts\'.          }

                  serial_number = \'MYOB\'.
                  issue         = \'MYOB\'.

                  loginUser: {user => abstractString} Password: {password => abstractString} AndDo: {whatToDo => abstractBlock } = (
                    (user = \'hippa\' )  &&  [password = \'hippa\'  ]  ifTrue: [ ^ { secure_HIPPA_capability  => secure_HIPPA_capability.   rcvr => whatToDo } value ].
                    (user = \'ibm\'   )  &&  [password = \'ibm\'    ]  ifTrue: [ ^ { secure_IBM_capability    => secure_IBM_capability.     rcvr => whatToDo } value ].
                    (user = \'oracle\')  &&  [password = \'oracle\' ]  ifTrue: [ ^ { secure_Oracle_capability => secure_Oracle_capability.  rcvr => whatToDo } value ].
                    \'bad login\')
                }
              }'.





            test:   'loginUser: \'ibm\'    Password: \'ibm\'    AndDo: [ {who => joe  } serial_number ]'  Expect: '5D1234'.
            test:   'loginUser: \'oracle\' Password: \'oracle\' AndDo: [ {who => andy } serial_number ]'  Expect: '1234'.
            test:   'loginUser: \'hippa\'  Password: \'hippa\'  AndDo: [ {who => joe  } issue         ]'  Expect: 'headache'.
            test:   'loginUser: \'hippa\'  Password: \'hippa\'  AndDo: [ {who => andy } issue         ]'  Expect: 'warts'.

            test:   'loginUser: \'hippa\'  Password: \'hippa\'  AndDo: [ {who => andy } serial_number ]'  Expect: 'MYOB'.

            test:   '{who => andy} serial_number' Expect: 'MYOB'.
            test:   '{who => joe } issue' Expect: 'MYOB'.



            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'orthogonalPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: privacy\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         simplePrivacy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE simplePrivacy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'simplePrivacy'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              { secure_capabilityDimension => () ::
                  slotHoldingASecret = \'The secret\'.
                  { -secure_capabilityDimension :: secretGetter = ( { secure_capabilityDimension => secure_capabilityDimension} slotHoldingASecret )
                  }
              }'.

            test: 'secretGetter' Expect: 'The secret'.
            test: 'slotHoldingASecret' ExpectNotUnderstood: 'slotHoldingASecret'.
            test: ' { secure_capabilityDimension => () } slotHoldingASecret' ExpectNotUnderstood: 'slotHoldingASecret'.
            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: privacy\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         simplePrivacyAlt = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacyAlt' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE simplePrivacyAlt.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacyAlt' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'simplePrivacyAlt'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacyAlt' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              { secure_capabilityDimension => () ::
                  slots = (| { -rcvr ::
                              { secure_capabilityDimension => secure_capabilityDimension :: slotHoldingASecretAlt = \'The secret (alt)\' }
                              secretGetterAlt = ( | sc = secure_capabilityDimension | { secure_capabilityDimension => sc} slotHoldingASecretAlt ).
                             }
                           |).
              }'.

            test: 'secretGetterAlt' Expect: 'The secret (alt)'.
            test: 'slotHoldingASecretAlt' ExpectNotUnderstood: 'slotHoldingASecretAlt'.
            test: ' { secure_capabilityDimension => () } slotHoldingASecretAlt' ExpectNotUnderstood: 'slotHoldingASecretAlt'.

            "Version without the local variable in secretGetter to show dynamic versus static evluation in the reveiver context"
            addMySlots: '
              { secure_capabilityDimension => () ::
                  slotToShowDynamicEvaluation = (|
                              {-rcvr :: secretGetterBAD = ( { secure_capabilityDimension => secure_capabilityDimension} slotHoldingASecretAlt ) }
                           |)
               }'.

            test: 'secretGetterBAD' ExpectNotUnderstood: 'secure_capabilityDimension'. 
                "hlo: This behavior is correct, but I believe the developer will have a hard time keeping the static vs. dynamic evaluation 
                      and their implications straight when looking at the two cases here and that in your original simplePrivacy. 
                      Perhaps this is just a matter of syntax"

            removeDefaultCoordinateOfDimension: 'experiment'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simplePrivacyAlt' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: stacks\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         simpleStack = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simpleStack' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE simpleStack.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simpleStack' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'simpleStack'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simpleStack' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              stack = (| parent* = foyer |).
            '.


            addMySlots: '
              { rcvr => stack ::
                size <- 0.
                contents <- vector copySize: 10.
                top = (contents at: size).
                push: x = (size: size + 1.  contents at: size Put: x).
                pop = (|r| r: top. size: size - 1. r).
                copy = (|r| r: clone. r contents: contents copy. r).
              }'.


            test:   'stack push: 1. stack top'  Expect: 1.
            test:   'stack push: 2. stack top' Expect: 2.
            test:   'stack size' Expect: 2.
            test:   'stack pop' Expect: 2.
            test:   'stack pop' Expect: 1.

            test: '|s1. s2| s1: stack copy.  s2: stack copy.  s1 push: 1.  s2 push: 10. s1 top'
            Expect: 1.


            test:   'stack push: 1. stack push: 2. stack size: 3. stack top' Expect: nil.
            test:   'stack push: 1. stack contents at: stack size Put: 17. stack top' Expect: 17.


            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'simpleStack' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: stacks\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         stackWithInvariants1 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE stackWithInvariants1.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'stackWithInvariants1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              stack = ().
            '.


            addMySlots: '
              { rcvr => stack. capability => () ::
                size <- 0.
                { -capability ::
                  contents <- vector copySize: 10.
                  size = ( {rcvr => rcvr. capability => capability} size ).
                  top = (contents at: size).
                  push: x = ( {rcvr => rcvr. capability => capability} size: size + 1.  contents at: size Put: x).
                  pop = (|r| r: top. {rcvr => rcvr. capability => capability} size: size - 1. r).
                  copy = (|r| r: clone. r contents: contents copy. r).
                }
              }'.


            test:   'stack push: 1. stack top'  Expect: 1.
            test:   'stack push: 2. stack top' Expect: 2.
            test:   'stack size' Expect: 2.
            test:   'stack pop' Expect: 2.
            test:   'stack pop' Expect: 1.

            test:   'stack push: 1. stack push: 2. stack size: 3. stack top' ExpectNotUnderstood: 'size:'.
            test:   'stack push: 1. stack contents at: stack size Put: 17. stack top' Expect: 17.


            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> () From: ( | {
         'Category: stacks\x7fModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         stackWithInvariants2 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants2' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyE stackWithInvariants2.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants2' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         experimentName = 'stackWithInvariants2'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants2' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.

            addMySlots: '
              stack = (| parent* = foyer |).
            '.


            addMySlots: '
              { rcvr => stack. cap => () ::
                size <- 0.
                contents <- vector copySize: 10.
                { -cap ::
                  size = ( {rcvr => rcvr. cap => cap} size ).
                  top = ( {rcvr => rcvr. cap => cap} contents at: size).
                  push: x = ( {rcvr => rcvr. cap => cap} size: size + 1.  {rcvr => rcvr. cap => cap} contents at: size Put: x).
                  pop = (|r| r: top. {rcvr => rcvr. cap => cap} size: size - 1. r).
                  copy = (|r| r: clone. {rcvr => r. cap => cap} contents: {rcvr => rcvr. cap => cap} contents copy. r).
                }
              }'.


            test:   'stack push: 1. stack top'  Expect: 1.
            test:   'stack push: 2. stack top' Expect: 2.
            test:   'stack size' Expect: 2.
            test:   'stack pop' Expect: 2.
            test:   'stack pop' Expect: 1.

            test: '|s1. s2| s1: stack copy.  s2: stack copy.  s1 push: 1.  s2 push: 10. s1 top'
            Expect: 1.


            test:   'stack push: 1. stack push: 2. stack size: 3. stack top' ExpectNotUnderstood: 'size:'.
            test:   'stack push: 1. stack contents at: stack size Put: 17. stack top' ExpectNotUnderstood: 'contents'.


            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'stackWithInvariants2' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyE' -> 'commonOps' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         korzPrivacyE = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzPrivacyE.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacyE' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacyE InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'korzPrivacyE1
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'korzPrivacyE1' From: 'applications/allKorz'



 '-- Side effects'

 globals modules korzPrivacyE postFileIn
