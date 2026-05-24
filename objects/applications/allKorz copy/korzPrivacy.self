 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         privacy = ( |
            | 
            privacyV5).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         privacyV1 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyV1.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         abstractDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeCompany = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  acme =  () }'.

            setDefaultCoordinateOfDimension: 'role' To: evaluateStringAsEvaluatorContents: 'role hr'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public       :: name = (\'The ACME Company\') }
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization :: employees <- protoOrderedCollection copy }

            '.

            makeEmployees.

            setDefaultCoordinateOfDimension: 'role' To: evaluateStringAsEvaluatorContents: 'role visitor').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployeeWithId: id Name: n Salary: s = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy employees :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy employees ', id, ' :: name = \'', n, '\' }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy employees ', id, '. privacyDomain =>> personal :: salary = ', s asString, ' }
            '.

            evaluateStringAsEvaluatorContents: '
                { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees add: allWorldRegions examples privacy employees ', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployees = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  employees =  () }'.
            makeEmployeeWithId: 'ann' Name: 'Ann' Salary: 99999.
            makeEmployeeWithId: 'ben' Name: 'Ben' Salary: 88888).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  computations =  () }'.

            makePublicComputation.
            makeOrganizationComputation.
            makePersonalComputation.

            makeIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeIllegalOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: illegalOrganizationComputation = 
                ( { rcvr => allWorldRegions examples privacy computations. privacyDomain =>> organization } doPersonalComputation ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples.  ::  privacy =  () }'
              Parent: foyer.

            [makeUserDimension].
            makeRoleDimension.
            makePrivacyDomainDimension.

            makeCompany.
            makeExampleComputations.

            test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: organizationComputation = 
                ( { rcvr => allWorldRegions examples privacy computations. privacyDomain =>> organization } doOrganizationComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: doOrganizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: personalComputation = 
                ( { rcvr => allWorldRegions examples privacy computations. privacyDomain =>> personal } doPersonalComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: doPersonalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePrivacyDomainDimension = ( |
             abstractDomain.
            | 

            abstractDomain:     addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractDomain =  () }'.

                                addFacetFromExpression: '{ rcvr => foyer. worldRegion => allWorldRegions examples  ::  privacyDomain =  () }'.

            publicDomain:       addFacetFromExpression: '{ rcvr => privacyDomain. role =>> visitor ::  public =  () }'
                                                Parent: abstractDomain.

            organizationDomain: addFacetFromExpression: '{ rcvr => privacyDomain. role =>> employee ::  organization =  () }'
                                                Parent: publicDomain.

            personalDomain:     addFacetFromExpression: '{ rcvr => privacyDomain. role =>> hr ::  personal =  () }'
                                                Parent: organizationDomain).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: publicComputation = 
                ( { rcvr => allWorldRegions examples privacy computations. privacyDomain =>> public } doPublicComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: doPublicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeRoleDimension = ( |
             abstractRole.
             employee.
             visitor.
            | 

            abstractRole: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{worldRegion => allWorldRegions examples  ::  role =  () }'.

            visitor: addFacetFromExpression: '{ rcvr => role.  ::  visitor =  () }'
                                     Parent: abstractRole.

            employee: addFacetFromExpression: '{ rcvr => role.  ::  employee =  () }'
                                      Parent: visitor. "This is a bit odd in general, based on access privileges"

            addFacetFromExpression: '{ rcvr => role.  ::  hr =  () }'
                            Parent: employee).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserDimension = ( |
             abstractUser.
            | 

            abstractUser: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractUser =  () }'.

            addFacetFromExpression: '{ rcvr => foyer. worldRegion => allWorldRegions examples  ::  allUsers =  () }'.

            addFacetFromExpression: '{ rcvr => allUsers.  ::  ericaEmployee =  () }'
              Parent: abstractUser.

            addFacetFromExpression: '{ rcvr => allUsers.  ::  henryHR =  () }'
              Parent: abstractUser.

            addFacetFromExpression: '{ rcvr => allUsers.  ::  peterPublic =  () }'
              Parent: abstractUser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         organizationDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         personalDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         publicDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         test = ( |
            | 
            testAccessToDomainsByVisitor.
            testAccessToDomainsByEmployee.
            testAccessToDomainsByHR.

            testAccessToDataByVisitor.
            testAccessToDataByEmployee.
            [harold toto testAccessToDataByHR].

            testPublicComputation.
            testOrganizationComputation.
            testPersonalComputation.

            testIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByEmployee = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain => { rcvr => privacyDomain. role =>> employee } organization } name '
            Expect: 'The ACME Company'.

              test: ' ({ rcvr => allWorldRegions examples privacy acme. privacyDomain => { rcvr => privacyDomain. role =>> employee }  organization } employees at: 0) name '
            Expect: 'Ann').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByVisitor = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  name '
            Expect: 'The ACME Company'.

              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  employees size '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByEmployee = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> employee }  public '
            Expect: publicDomain.

              test: ' { rcvr => privacyDomain. role =>> employee }  organization '
            Expect: organizationDomain.

                           test: ' { rcvr => privacyDomain. role =>> employee }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByHR = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> hr }  public '
            Expect: publicDomain.

              test: ' { rcvr => privacyDomain. role =>> hr }  organization '
            Expect: organizationDomain.

                           test: ' { rcvr => privacyDomain. role =>> hr }  personal '
            Expect: personalDomain).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByVisitor = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> visitor }  public '
            Expect: publicDomain.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  organization '
            ExpectNotUnderstood: 'organization'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testIllegalOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> visitor}  illegalOrganizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> employee} illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr}       illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> visitor}  organizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> employee} organizationComputation '
            Expect: 'Ann'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr}       organizationComputation '
            Expect: 'Ann').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPersonalComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> visitor}  personalComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> employee} personalComputation '
            ExpectNotUnderstood: 'personal'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr}       personalComputation '
            Expect: 99999).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV1' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPublicComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> visitor}  publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> employee} publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr}       publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         privacyV2 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyV2.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         abstractDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         admin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asRootDo: korzBlock = ( |
            | 
            asUser: 'root' Do: korzBlock.

            "Obsolete:
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user =>> root.
                     role => { rcvr => user root. user =>> root } defaultRole.
                     privacyDomain => { rcvr => { rcvr => user root. user =>> root } defaultRole . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultDomain
                   } value'
            "
            "context goes back to default after call to defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } halt defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultRole halt

                     privacyDomain => { rcvr => { rcvr => user root. user =>> root } defaultRole . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultDomain
                     privacyDomain => { rcvr => user root. user =>> root. role => { rcvr => user root. user =>> root } defaultRole } [ defaultRole defaultDomain ] value

            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Do: korzBlock = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user =>> ', id, '.
                     role => { rcvr => user ', id, '. user =>> ', id, ' } defaultRole.
                     privacyDomain => { rcvr => { rcvr => user ', id, '. user =>> ', id, ' } defaultRole . user =>> ', id, '. role => { rcvr => user ', id, '. user =>> ', id, ' } defaultRole } defaultDomain
                   } value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression Expect: selfValue = ( |
             r.
            | 

            r:  asUser: id Do: '[ ', korzExpression, ' ]'.
            [r value = selfValue] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression ExpectNotUnderstood: selector = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         emily.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         harriet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeCompany = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  acme =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public       :: name = (\'The ACME Company\') }
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization :: employees <- protoOrderedCollection copy }

            '.

            [
            evaluateStringAsEvaluatorContents: '
                ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allUsers emily add: allUsers harriet '
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making context-setting methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeContextSettingMethods = ( |
            | 
            addSlotsFromExpression: '
                { worldRegion => allWorldRegions examples :: asUser: u Do: { block => abstractBlock } = ( { rcvr => block. user => u } value ) }
                { worldRegion => allWorldRegions examples :: inRole: r Do: { block => abstractBlock } = ( { rcvr => block. role => r } value ) }
                { worldRegion => allWorldRegions examples :: withPrivacyDomain: d Do: { block => abstractBlock } = ( { rcvr => block. privacyDomain => d } value ) }

                { worldRegion => allWorldRegions examples :: logInAs: u Do: { b => abstractBlock } = 
                      ( asUser: u Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] )
                }

                { worldRegion => allWorldRegions examples :: userWithName: { userName => abstractString }  = 
                      (            userName = \'root\' ifTrue: [user root]
                          False: [ userName = \'emily\' ifTrue: [user emily]
                          False: [ userName = \'harriet\' ifTrue: [user harriet]
                          False: [ userName = \'victor\' ifTrue: [user victor]
                          False: [ userName = \'emily\' ifTrue: [user emily]]]]].
                       )
                 }

                 { worldRegion => allWorldRegions examples :: logInAs: { userName => abstractString } Do: { b => abstractBlock } =
                      (
                        logInAs: (userWithName: userName) Do: b
                      )
                 }

                 { worldRegion => allWorldRegions examples :: failingLogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( "| u |
                        u:"         userName = \'root\' ifTrue: [user root]
                          False: [ userName = \'emily\' ifTrue: [halt. user emily]
                          False: [ userName = \'harriet\' ifTrue: [user harriet]
                          False: [ userName = \'victor\' ifTrue: [user victor]
                          False: [ userName = \'emily\' ifTrue: [user emily]]]]].
                        halt.
                        logInAs: u Do: b
                      )
                 }

                 { worldRegion => allWorldRegions examples :: testLogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( | u |
                        u:  user root.
                      )
                 }


            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultDomainSlotsInRoles = ( |
            | 
            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => {rcvr => role. user =>> root} administrator ::  defaultDomain =  ( privacyDomain universal) } |).
                (| { rcvr => {rcvr => role. user =>> root} employee      ::  defaultDomain =  ( privacyDomain organization) } |).
                (| { rcvr => {rcvr => role. user =>> root} hr            ::  defaultDomain =  ( privacyDomain personal) } |).
                (| { rcvr => {rcvr => role. user =>> root} visitor       ::  defaultDomain =  ( privacyDomain public) } |)
            ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultRoleSlotsInUsers = ( |
            | 
            addSlotsFromExpression: '
                { rcvr => user emily   ::  defaultRole =  ( role employee) }
                { rcvr => user harriet ::  defaultRole =  ( role hr) }
                { rcvr => user victor  ::  defaultRole =  ( role visitor) }
                { rcvr => user root    ::  defaultRole =  ( role administrator) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployeeWithId: id Name: n Salary: s = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy employees :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy employees ', id, ' :: name = \'', n, '\' }
              { rcvr => allWorldRegions examples privacy employees ', id, '. privacyDomain =>> personal :: salary = ', s asString, ' }
            '.

            evaluateStringAsEvaluatorContents: '
                ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allWorldRegions examples privacy employees ', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployees = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  employees =  () }'.

            emily:   makeEmployeeWithId: 'emily'   Name: 'Emily' Salary: 99999.
            harriet: makeEmployeeWithId: 'harriet' Name: 'Harriet' Salary: 88888).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  computations =  () }'.

            makePublicComputation.
            makeOrganizationComputation.
            makePersonalComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeInterpreterTests = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  interpreterTestMethods =  () }'.

            addSlotsFromExpression: '
                { rcvr => allWorldRegions examples privacy interpreterTestMethods :: 
                  testUseOfIncomingContextInContextExpressions = ( {rcvr => foyer. role =>> employee} true ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  oldComputations =  () }'.

            makeOldPublicComputation.
            makeOldOrganizationComputation.
            makeOldPersonalComputation.

            makeOldIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldIllegalOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: illegalOrganizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doPersonalComputation ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: organizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doOrganizationComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doOrganizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: personalComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> personal } doPersonalComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPersonalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: publicComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> public } doPublicComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPublicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples.  ::  privacy =  () }'
              Parent: foyer.

            makeUserDimension.
            makeRoleDimension.
            makePrivacyDomainDimension.

            makeDefaultRoleSlotsInUsers.
            makeDefaultDomainSlotsInRoles.

            setDefaultCoordinateOfDimension: 'role' To: (primitiveAsUser: 'root' Do: '[role administrator]').

            makeCompany.
            makeEmployees.
            makeExampleComputations.
            makeOldExampleComputations.
            makeContextSettingMethods.

            setDefaultCoordinateOfDimension: 'role' To: evaluateStringAsEvaluatorContents: 'role visitor'.
            setDefaultCoordinateOfDimension: 'privacyDomain' To: evaluateStringAsEvaluatorContents: 'privacyDomain public'.

            makeInterpreterTests.

            test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: organizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: personalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePrivacyDomainDimension = ( |
             abstractDomain.
            | 

            abstractDomain:     addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractDomain =  () }'.

                                addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  privacyDomain =  () }'.

            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => privacyDomain.  :: 
                     public       = (| parent* = allWorldRegions examples privacy abstractDomain |) } |).

                (| { rcvr => privacyDomain. role => { user =>> root. rcvr => role } employee  :: 
                     organization = (| parent* = { rcvr => privacyDomain. role =>> administrator } public |) } |).

                (| { rcvr => privacyDomain. role => { user =>> root. rcvr => role } hr        :: 
                     personal     = (| parent* = { rcvr => privacyDomain. role =>> administrator } organization |) } |).

                (| { rcvr => privacyDomain. role => { user =>> root. rcvr => role } administrator :: 
                     universal    = (| parent* = { rcvr => privacyDomain. role =>> administrator } personal |) } |).
            ]'.


            [harold. publicDomain:       addFacetFromExpression: '{ rcvr => privacyDomain. role =>> visitor ::  public =  () }'
                                                Parent: abstractDomain.

            organizationDomain: addFacetFromExpression: '{ rcvr => privacyDomain. role =>> employee ::  organization =  () }'
                                                Parent: publicDomain.

            personalDomain:     addFacetFromExpression: '{ rcvr => privacyDomain. role =>> hr ::  personal =  () }'
                                                Parent: organizationDomain
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: publicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeRoleDimension = ( |
             abstractRole.
             employee.
             visitor.
            | 

            abstractRole: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  role =  () }'.

            "visitor role is unrestricted"
            visitor:  addFacetFromExpression: '{ rcvr => role.  ::  visitor =  () }'
                                      Parent: abstractRole.

            [harold employee: addFacetFromExpression: '{ rcvr => role. user => allUsers admin ::  employee =  () }'
                                      Parent: visitor]. 

            primitiveAsUser: 'root' Do: '[ 
                "employee role is available to employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user =>> root    ::  employee = (| parent* = role visitor |) } |). "Parentage is a bit odd in general, based on access privileges"
                (| { rcvr => role. user =>> emily   ::  employee = role employee } |).
                (| { rcvr => role. user =>> harriet ::  employee = role employee } |).

                "hr role is available to HR employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user =>> root    ::  hr = (| parent* = role employee |) } |). "Parentage is a bit odd in general, based on access privileges"
                (| { rcvr => role. user =>> harriet ::  hr = role hr } |).

                (| { rcvr => role. user =>> root    ::  administrator = (| parent* = role hr |) } |). "Parentage is a bit odd in general, based on access privileges"

            ]'.



            [harold. employee: addFacetFromExpression: '{ rcvr => role. user => allUsers harriet ::  employee =  () }'
                                      Parent: visitor. "This is a bit odd in general, based on access privileges"
            addFacetFromExpression: '{ rcvr => role.  ::  hr =  () }'
                            Parent: employee]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserDimension = ( |
             abstractUser.
            | 

            abstractUser: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractUser =  () }'.

            addFacetFromExpression: '{ rcvr => foyer. worldRegion => allWorldRegions examples  ::  user =  () }'.

            makeUserWithId: 'emily'   Name: 'Emily'.
            makeUserWithId: 'harriet' Name: 'Harriet'.

            makeUserWithId: 'victor'  Name: 'Victor'.

            makeUserWithId: 'root'    Name: 'root').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserWithId: id Name: n = ( |
            | 
            addFacetFromExpression: '{ rcvr => user :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => user ', id, ' :: name = \'', n, '\' }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         primitiveAsUser: id Do: korzBlock = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. user =>> ', id, ' } value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         test = ( |
            | 
            testUseOfIncomingContextInContextExpressions.

            testAccessToDomainsByVisitor.
            testAccessToDomainsByEmployee.
            testAccessToDomainsByHR.

            testAccessToDataByVisitor.
            testAccessToDataByEmployee.
            [harold toto testAccessToDataByHR].

            testPublicComputation.
            testOrganizationComputation.
            testPersonalComputation.

            testIllegalAccessAttempts.

            testOldPublicComputation.
            testOldOrganizationComputation.
            testOldPersonalComputation.

            testOldIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByEmployee = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user =>> root } employee } organization } name '
            Expect: 'The ACME Company'.

              test: ' ({ rcvr => allWorldRegions examples privacy acme. privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user =>> root } employee }  organization } employees at: 0) name '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByVisitor = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  name '
            Expect: 'The ACME Company'.

              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  employees size '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByEmployee = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>> root } employee }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>> root } employee}  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>> root } employee }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByHR = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>> root } hr }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>> root } hr }  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>> root } hr }  personal '
            Expect: asRootDo: '[ privacyDomain personal ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByVisitor = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> visitor }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  organization '
            ExpectNotUnderstood: 'organization'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testIllegalAccessAttempts = ( |
            | 
            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr} personalComputation '
            ExpectNotUnderstood: 'hr'.

            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. privacyDomain =>> personal} personalComputation '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldIllegalOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  illegalOrganizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  organizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} organizationComputation '
            Expect: 'Emily'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       organizationComputation '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPersonalComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  personalComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} personalComputation '
            ExpectNotUnderstood: 'personal'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       personalComputation '
            Expect: 99999).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPublicComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOrganizationComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPersonalComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPublicComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: testing\x7fCategory: korz interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUseOfIncomingContextInContextExpressions = ( |
            | 
              test: ' { rcvr =>  allWorldRegions examples privacy interpreterTestMethods. 
                        user =>> root} testUseOfIncomingContextInContextExpressions '
            Expect: getWellKnownFacet: 'true').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV2' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         victor.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: private'
        
         privacyV3 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyV3.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         abstractDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         admin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asRootDo: korzBlock = ( |
            | 
            asUser: 'root' Do: korzBlock.

            "Obsolete:
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user => allWorldRegions examples privacy acme userManager user root.
                     role => { rcvr => allWorldRegions examples privacy acme userManager user root. user => allWorldRegions examples privacy acme userManager user root } defaultRole.
                     privacyDomain => { rcvr => { rcvr => allWorldRegions examples privacy acme userManager user root. 
                                                  user => allWorldRegions examples privacy acme userManager user root } defaultRole . 
                                        user => allWorldRegions examples privacy acme userManager user root. 
                                        role => { rcvr => allWorldRegions examples privacy acme userManager user root. 
                                                  user => allWorldRegions examples privacy acme userManager user root } defaultRole } defaultDomain
                   } value'
            "
            "context goes back to default after call to defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } halt defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultRole halt

                     privacyDomain => { rcvr => { rcvr => user root. user =>> root } defaultRole . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultDomain
                     privacyDomain => { rcvr => user root. user =>> root. role => { rcvr => user root. user =>> root } defaultRole } [ defaultRole defaultDomain ] value

            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Do: korzBlock = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user => allWorldRegions examples privacy acme userManager user ', id, '.
                     role => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                               user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole.
                     privacyDomain => { rcvr => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                                                  user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole . 
                                        user => allWorldRegions examples privacy acme userManager user ', id, '. 
                                        role => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                                                  user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole } defaultDomain
                   } value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression Expect: selfValue = ( |
             r.
            | 

            r:  asUser: id Do: '[ ', korzExpression, ' ]'.
            [r value = selfValue] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression ExpectNotUnderstood: selector = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         emily.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         harriet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeCompany = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public       :: name = (\'The ACME Company\') }
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization :: employees <- protoOrderedCollection copy }

            '.

            [
            evaluateStringAsEvaluatorContents: '
                ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allUsers emily add: allUsers harriet '
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making context-setting methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeContextSettingMethods = ( |
            | 
            addSlotsFromExpression: '
                { worldRegion => allWorldRegions examples :: asUser: u Do: { block => abstractBlock } = ( { rcvr => block. user => u } value ) }
                { worldRegion => allWorldRegions examples :: inRole: r Do: { block => abstractBlock } = ( { rcvr => block. role => r } value ) }
                { worldRegion => allWorldRegions examples :: withPrivacyDomain: d Do: { block => abstractBlock } = ( { rcvr => block. privacyDomain => d } value ) }

                { worldRegion => allWorldRegions examples :: logInAs: u Do: { b => abstractBlock } = 
                      ( asUser: u Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] )
                }

                { worldRegion => allWorldRegions examples :: logInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: b )
                }



                 { worldRegion => allWorldRegions examples :: failingLogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( "| u |
                        u:"         userName = \'root\' ifTrue: [user root]
                          False: [ userName = \'emily\' ifTrue: [halt. user emily]
                          False: [ userName = \'harriet\' ifTrue: [user harriet]
                          False: [ userName = \'victor\' ifTrue: [user victor]
                          False: [ userName = \'emily\' ifTrue: [user emily]]]]].
                        halt.
                        logInAs: u Do: b
                      )
                 }

                 { worldRegion => allWorldRegions examples :: testLogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( | u |
                        u:  user root.
                      )
                 }


            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultDomainSlotsInRoles = ( |
            | 
            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => {rcvr => role. user => allWorldRegions examples privacy acme userManager user root} administrator ::  defaultDomain =  ( privacyDomain universal) } |).
                (| { rcvr => {rcvr => role. user => allWorldRegions examples privacy acme userManager user root} employee      ::  defaultDomain =  ( privacyDomain organization) } |).
                (| { rcvr => {rcvr => role. user => allWorldRegions examples privacy acme userManager user root} hr            ::  defaultDomain =  ( privacyDomain personal) } |).
                (| { rcvr => {rcvr => role. user => allWorldRegions examples privacy acme userManager user root} visitor       ::  defaultDomain =  ( privacyDomain public) } |)
            ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultRoleSlotsInUsers = ( |
            | 
            addSlotsFromExpression: '
                { rcvr => allWorldRegions examples privacy acme userManager user emily   ::  defaultRole =  ( role employee) }
                { rcvr => allWorldRegions examples privacy acme userManager user harriet ::  defaultRole =  ( role hr) }
                { rcvr => allWorldRegions examples privacy acme userManager user victor  ::  defaultRole =  ( role visitor) }
                { rcvr => allWorldRegions examples privacy acme userManager user root    ::  defaultRole =  ( role administrator) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployeeWithId: id Name: n Salary: s = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy employees :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy employees ', id, ' :: name = \'', n, '\' }
              { rcvr => allWorldRegions examples privacy employees ', id, '. privacyDomain =>> personal :: salary = ', s asString, ' }
            '.

            evaluateStringAsEvaluatorContents: '
                ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allWorldRegions examples privacy employees ', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployees = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  employees =  () }'.

            emily:   makeEmployeeWithId: 'emily'   Name: 'Emily' Salary: 99999.
            harriet: makeEmployeeWithId: 'harriet' Name: 'Harriet' Salary: 88888).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  computations =  () }'.

            makePublicComputation.
            makeOrganizationComputation.
            makePersonalComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeInterpreterTests = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  interpreterTestMethods =  () }'.

            addSlotsFromExpression: '
                { rcvr => allWorldRegions examples privacy interpreterTestMethods :: 
                  testUseOfIncomingContextInContextExpressions = ( {rcvr => foyer. role =>> employee} true ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  oldComputations =  () }'.

            makeOldPublicComputation.
            makeOldOrganizationComputation.
            makeOldPersonalComputation.

            makeOldIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldIllegalOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: illegalOrganizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doPersonalComputation ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: organizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doOrganizationComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doOrganizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: personalComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> personal } doPersonalComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPersonalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: publicComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> public } doPublicComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPublicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples.  ::  privacy =  () }'
                            Parent: foyer.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  acme =  () }'.

            makeUserDimension.
            makeRoleDimension.
            makePrivacyDomainDimension.

            makeDefaultRoleSlotsInUsers.
            makeDefaultDomainSlotsInRoles.

            setDefaultCoordinateOfDimension: 'role'
                                         To:  primitiveAsUser: 'root' 
                                                           Do: '[role administrator]'.

            makeCompany.
            makeEmployees.
            makeExampleComputations.
            makeOldExampleComputations.
            makeContextSettingMethods.

            setDefaultCoordinateOfDimension: 'role' 
                                         To:  evaluateStringAsEvaluatorContents: 'role visitor'.
            setDefaultCoordinateOfDimension: 'privacyDomain' 
                                         To:  evaluateStringAsEvaluatorContents: 'privacyDomain public'.

            makeInterpreterTests.

            protectUserSlot.

            test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: organizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: personalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePrivacyDomainDimension = ( |
             abstractDomain.
            | 

            abstractDomain:     addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractDomain =  () }'.

                                addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  privacyDomain =  () }'.

            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => privacyDomain.  :: 
                     public       = (| parent* = allWorldRegions examples privacy abstractDomain |) } |).

                (| { rcvr => privacyDomain. role => { user => allWorldRegions examples privacy acme userManager user root. rcvr => role } employee  :: 
                     organization = (| parent* = { rcvr => privacyDomain. role =>> administrator } public |) } |).

                (| { rcvr => privacyDomain. role => { user => allWorldRegions examples privacy acme userManager user root. rcvr => role } hr        :: 
                     personal     = (| parent* = { rcvr => privacyDomain. role =>> administrator } organization |) } |).

                (| { rcvr => privacyDomain. role => { user => allWorldRegions examples privacy acme userManager user root. rcvr => role } administrator :: 
                     universal    = (| parent* = { rcvr => privacyDomain. role =>> administrator } personal |) } |).
            ]'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: publicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeRoleDimension = ( |
             abstractRole.
             employee.
             visitor.
            | 

            abstractRole: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  role =  () }'.

            "visitor role is unrestricted"
            visitor:  addFacetFromExpression: '{ rcvr => role.  ::  visitor =  () }'
                                      Parent: abstractRole.

            primitiveAsUser: 'root' Do: '[ 
                "employee role is available to employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  employee = (| parent* = role visitor |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"
            ]'.

            "This cannot be in the same block as above, because the above must execute to put role employee in the static context"
            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user emily   ::  
                       employee =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } |).

                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet   ::  
                       employee =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } |).

            ]'.

            "I had to make 'role employee' a method because of the new static semantics for slot initializers. Doesn't work: would need root user when executing" 
            primitiveAsUser: 'root' Do: '[ 

                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet ::  employee = (role employee) } |).

                "hr role is available to HR employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  hr = (| parent* = (role employee) |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet ::  hr = (role hr) } |).

                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  administrator = (| parent* = role hr |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"

            ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserDimension = ( |
             abstractUser.
            | 

            abstractUser: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractUser =  () }'.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme. ::  userManager =  () }'.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme userManager. ::  user =  () }'.

            makeUserWithId: 'emily'   Name: 'Emily'.
            makeUserWithId: 'harriet' Name: 'Harriet'.

            makeUserWithId: 'victor'  Name: 'Victor'.

            makeUserWithId: 'root'    Name: 'root'.

            addSlotsFromExpression: '
                 { rcvr => allWorldRegions examples privacy acme userManager :: primitiveLogInAs: { userName => abstractString } Do: { b => abstractBlock } =
                      (
                        | userCapability = \'to be replaced\' |
                        logInAs: ({ capability => userCapability } userWithName: userName) Do: b
                      )
                 }
            '.


            addSlotsFromExpression: '
                { rcvr => allWorldRegions examples privacy acme userManager :: userWithName: { userName => abstractString }  = 
                      (            userName = \'root\'    ifTrue: [user root]
                          False: [ userName = \'emily\'   ifTrue: [user emily]
                          False: [ userName = \'harriet\' ifTrue: [user harriet]
                          False: [ userName = \'victor\'  ifTrue: [user victor]]]].
                       )
                 }

            "     { rcvr => allWorldRegions examples privacy acme userManager :: primitiveLogInAs: { userName => abstractString } Do: { b => abstractBlock } =
                      (
                        logInAs: (userWithName: userName) Do: b
                      )
                 }
            "
             ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserWithId: id Name: n = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme userManager user :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme userManager user ', id, ' :: name = \'', n, '\' }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         primitiveAsUser: id Do: korzBlock = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. user => allWorldRegions examples privacy acme userManager user ', id, ' } value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         protectUserSlot = ( |
             capabilityFormal.
             logInAsSlot.
             userCapability.
             userManager.
             userSlot.
            | 

            "Guard user slot with new capability"

            userManager: evaluateStringAsEvaluatorContents: 'allWorldRegions examples privacy acme userManager'.
            userSlot: userManager localSlots findFirst: [ | :e | e selector = 'user'] 
                                             IfPresent: [ | :e | e ]
                                              IfAbsent: [error: 'Shoulld not get here'].

            userCapability: evaluateStringAsEvaluatorContents: '()'.

            capabilityFormal: korz formal copyForSlot: userSlot.
            capabilityFormal formalName: 'capability'.
            capabilityFormal dispatchOnlyOn: userCapability.

            userSlot addSlotFormal: capabilityFormal.


            "Give logInAs the capability to access user facets"

            logInAsSlot: userManager localSlots findFirst: [ | :e | e selector = 'primitiveLogInAs:Do:']
                                                IfPresent: [ | :e | e ]
                                                 IfAbsent: [error: 'Shoulld not get here'].

            logInAsSlot setInitializationOfLocalSlotNamed: 'userCapability' To: userCapability).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         test = ( |
            | 
            testUsingLoginMethods.

            testUseOfIncomingContextInContextExpressions.

            [ tbd
            testAccessToDomainsByVisitor.
            testAccessToDomainsByEmployee.
            testAccessToDomainsByHR.

            testAccessToDataByVisitor.
            testAccessToDataByEmployee.
            [harold toto testAccessToDataByHR].

            testPublicComputation.
            testOrganizationComputation.
            testPersonalComputation.

            testIllegalAccessAttempts.

            testOldPublicComputation.
            testOldOrganizationComputation.
            testOldPersonalComputation.

            testOldIllegalOrganizationComputation
            ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByEmployee = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. 
                        privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } organization } name '
            Expect: 'The ACME Company'.

              test: ' ({ rcvr => allWorldRegions examples privacy acme. 
                         privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  organization }
                       employees first) name '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByVisitor = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  name '
            Expect: 'The ACME Company'.

              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  employees size '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByEmployee = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee}  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByHR = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>allWorldRegions examples privacy acme userManager user root } hr }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr }  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr }  personal '
            Expect: asRootDo: '[ privacyDomain personal ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByVisitor = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> visitor }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  organization '
            ExpectNotUnderstood: 'organization'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testIllegalAccessAttempts = ( |
            | 
            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr} personalComputation '
            ExpectNotUnderstood: 'hr'.

            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. privacyDomain =>> personal} personalComputation '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldIllegalOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  illegalOrganizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  organizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} organizationComputation '
            Expect: 'Emily'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       organizationComputation '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPersonalComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  personalComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} personalComputation '
            ExpectNotUnderstood: 'personal'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       personalComputation '
            Expect: 99999).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPublicComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOrganizationComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPersonalComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPublicComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fCategory: korz interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUseOfIncomingContextInContextExpressions = ( |
            | 
              test: ' logInAs: \'root\' Do: [
                          { rcvr =>  allWorldRegions examples privacy interpreterTestMethods. } testUseOfIncomingContextInContextExpressions 
                        ]'
            Expect: getWellKnownFacet: 'true').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUsingLoginMethods = ( |
            | 
              test: 'logInAs: \'root\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'emily\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'harriet\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'victor\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            ExpectNotUnderstood: 'employees'.

            harold "remove
              test: '{rcvr => allWorldRegions examples privacy} logInAs: \'root\' Do: [(acme employees first) name]'
            Expect: 'Emily'
            ButNotUnderstood: 'acme'.").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV3' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         victor.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         privacyV4 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyV4.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         abstractDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         admin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asRootDo: korzBlock = ( |
            | 
            asUser: 'root' Do: korzBlock.

            "Obsolete:
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user => allWorldRegions examples privacy acme userManager user root.
                     role => { rcvr => allWorldRegions examples privacy acme userManager user root. user => allWorldRegions examples privacy acme userManager user root } defaultRole.
                     privacyDomain => { rcvr => { rcvr => allWorldRegions examples privacy acme userManager user root. 
                                                  user => allWorldRegions examples privacy acme userManager user root } defaultRole . 
                                        user => allWorldRegions examples privacy acme userManager user root. 
                                        role => { rcvr => allWorldRegions examples privacy acme userManager user root. 
                                                  user => allWorldRegions examples privacy acme userManager user root } defaultRole } defaultDomain
                   } value'
            "
            "context goes back to default after call to defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } halt defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultRole halt

                     privacyDomain => { rcvr => { rcvr => user root. user =>> root } defaultRole . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultDomain
                     privacyDomain => { rcvr => user root. user =>> root. role => { rcvr => user root. user =>> root } defaultRole } [ defaultRole defaultDomain ] value

            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Do: korzBlock = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user => allWorldRegions examples privacy acme userManager user ', id, '.
                     role => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                               user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole.
                     privacyDomain => { rcvr => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                                                  user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole . 
                                        user => allWorldRegions examples privacy acme userManager user ', id, '. 
                                        role => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                                                  user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole } defaultDomain
                   } value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression Expect: selfValue = ( |
             r.
            | 

            r:  asUser: id Do: '[ ', korzExpression, ' ]'.
            [r value = selfValue] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression ExpectNotUnderstood: selector = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         emily.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         evaluateInRootContext: korzExpression = ( |
             context.
             root.
            | 
            root: primitiveAsUser: 'root' Do: '[ |:user|
                { rcvr => allWorldRegions examples privacy acme userManager. user => user} getUserObjectFor: \'root\'
            ]'.

            context: korz baseContext copy.
            context implicitArgumentAt: 'user' Put: root.

            evaluateStringAsEvaluatorContents: korzExpression
                                           In: context).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         harriet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeCompany = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public       :: name = (\'The ACME Company\') }
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization :: employees <- protoOrderedCollection copy }

            '.

            [
            evaluateStringAsEvaluatorContents: '
                ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allUsers emily add: allUsers harriet '
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making context-setting methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeContextSettingMethods = ( |
            | 
            [david aug].
            addSlotsFromExpression: '
                { worldRegion => allWorldRegions examples :: inRole: r Do: { block => abstractBlock } = ( { rcvr => block. role => r } value ) }
                { worldRegion => allWorldRegions examples :: withPrivacyDomain: d Do: { block => abstractBlock } = ( { rcvr => block. privacyDomain => d } value ) }

                harold. "This should work when the context-accessing bug is fixed"
                { worldRegion => allWorldRegions examples. :: logInAsNEW: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: 
                            [ |:user| inRole: user defaultRole Do: [ withPrivacyDomain: user defaultRole defaultDomain Do: b ]] 
                  )
                }

                harold. "This should work when the context-accessing bug is fixed"
                { worldRegion => allWorldRegions examples :: cORRECTlogInAsOLD: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: 
                          [ inRole: user defaultRole Do: [ withPrivacyDomain: user defaultRole defaultDomain Do: b ]] )
                }

                { worldRegion => allWorldRegions examples :: logInAs: { userName => abstractString } Do: { b => abstractBlock } = "OLD"
                      ( | u |
                        u: allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [ allWorldRegions examples privacy acme userManager getUserObjectFor: userName].
                       allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] 
                      )
                }



                "Temporary work-around for bug preventing access to context attributes in some cases. When fixed, replace with above."
               { worldRegion => allWorldRegions examples :: cORRECTlogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( | u |
                        u: allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [ allWorldRegions examples privacy acme userManager getUserObjectFor: userName].
                       allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] 
                      )
                }



               "{ worldRegion => allWorldRegions examples :: asUser: u Do: { block => abstractBlock } = ( { rcvr => block. user => u } value ) }"

                "{ worldRegion => allWorldRegions examples :: logInAs: u Do: { b => abstractBlock } = 
                      ( asUser: u Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] )
                }"

                "{ worldRegion => allWorldRegions examples :: testLogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( | u |
                        u:  user root.
                      )
                 }"


            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultDomainSlotsInRoles = ( |
            | 
            evaluateInRootContext: '
                (| { rcvr => role administrator ::  defaultDomain =  ( privacyDomain universal) }
                   { rcvr => role employee      ::  defaultDomain =  ( privacyDomain organization) }
                   { rcvr => role hr            ::  defaultDomain =  ( privacyDomain personal) }
                   { rcvr => role visitor       ::  defaultDomain =  ( privacyDomain public) }
                |)
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultRoleSlotsInUsers = ( |
            | 
            evaluateInRootContext: ' 
                (| { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'emily\'   ::  defaultRole =  ( role employee) }
                   { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'harriet\' ::  defaultRole =  ( role hr) }
                   { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'victor\'  ::  defaultRole =  ( role visitor) }
                   { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\'    ::  defaultRole =  ( role administrator) }
                |)
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployeeWithId: id Name: n Salary: s = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy employees :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy employees ', id, ' :: name = \'', n, '\' }
              { rcvr => allWorldRegions examples privacy employees ', id, '. privacyDomain =>> personal :: salary = ', s asString, ' }
            '.

            evaluateStringAsEvaluatorContents: '
                ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allWorldRegions examples privacy employees ', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployees = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  employees =  () }'.

            emily:   makeEmployeeWithId: 'emily'   Name: 'Emily' Salary: 99999.
            harriet: makeEmployeeWithId: 'harriet' Name: 'Harriet' Salary: 88888).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  computations =  () }'.

            makePublicComputation.
            makeOrganizationComputation.
            makePersonalComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeInterpreterTests = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  interpreterTestMethods =  () }'.

            addSlotsFromExpression: '
                { rcvr => allWorldRegions examples privacy interpreterTestMethods :: 
                  testUseOfIncomingContextInContextExpressions = ( {rcvr => foyer. role =>> employee} true ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  oldComputations =  () }'.

            makeOldPublicComputation.
            makeOldOrganizationComputation.
            makeOldPersonalComputation.

            makeOldIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldIllegalOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: illegalOrganizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doPersonalComputation ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: organizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doOrganizationComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doOrganizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: personalComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> personal } doPersonalComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPersonalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: publicComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> public } doPublicComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPublicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples.  ::  privacy =  () }'
                            Parent: foyer.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  acme =  () }'.

            makeUserAndRoleDimensions.
            makePrivacyDomainDimension.

            makeDefaultRoleSlotsInUsers.
            makeDefaultDomainSlotsInRoles.

            setDefaultCoordinateOfDimension: 'role'
                                         To:  primitiveAsUser: 'root' 
                                                           Do: '[|:user| { rcvr => allWorldRegions examples role. user => user } administrator]'.

            makeCompany.
            makeEmployees.
            makeExampleComputations.
            makeOldExampleComputations.
            makeContextSettingMethods.

            setDefaultCoordinateOfDimension: 'role' 
                                         To:  evaluateStringAsEvaluatorContents: 'role visitor'.
            setDefaultCoordinateOfDimension: 'privacyDomain' 
                                         To:  evaluateStringAsEvaluatorContents: 'privacyDomain public'.

            makeInterpreterTests.

            [protectUserSlot].

            test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: organizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: personalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePrivacyDomainDimension = ( |
             abstractDomain.
            | 

            abstractDomain:     addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractDomain =  () }'.

                                addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  privacyDomain =  () }'.

            evaluateStringAsEvaluatorContents: '
                (| { rcvr => privacyDomain.  :: 
                     public       = (| parent* = allWorldRegions examples privacy abstractDomain |) } |).
            '.

            "changed role =>> below because role becomes bound by outer guard"
            evaluateInRootContext: '
                (| { rcvr => privacyDomain. role => { user => (allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\'). rcvr => role } employee  :: 
                     organization = (| parent* = { rcvr => privacyDomain. role => allWorldRegions examples role administrator } public |) } |).
            '.

            "changed role =>> below because role becomes bound by outer guard"
            evaluateInRootContext: '
                (| { rcvr => privacyDomain. role => { user => (allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\'). rcvr => role } hr        :: 
                     personal     = (| parent* = { rcvr => privacyDomain. role => allWorldRegions examples role administrator } organization |) } |).
            '.

            "changed role =>> below because role becomes bound by outer guard"
            evaluateInRootContext: '
                (| { rcvr => privacyDomain. role => { user => allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\'. rcvr => role } administrator :: 
                     universal    = (| parent* = { rcvr => privacyDomain. role => allWorldRegions examples role administrator } personal |) } |).
            '.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: publicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserAndRoleDimensions = ( |
            | 
            "These two dimensions must be made together because they require access to user objects, which are controlled by a hidden capability objects"

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractUser =  () }'.
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme. ::  userManager =  () }'.
            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  role =  () }'.

            "visitor role is unrestricted"
            addFacetFromExpression: '{ rcvr => role.  ::  visitor =  (| parent* = allWorldRegions examples privacy abstractRole|) }'.


            "Moved userCapability to slotGuard -- dmu"
            addSlotsFromExpression: '
                { static. userCapability => () :: createUsers = (|
                    userFacet  = (| { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability ::  user =  () } |).

                    "Dont seem to be able to nest, because cannot sert rcvr properly in guard of name slot
                      emilyFacet = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: 
                                     emily =  (| { rcvr => rcvr :: name = \'Emily\' } |)  } |)."
                    emilyFacet   = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: emily = () } |).
                    emilyName    = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user emily :: name = \'Emily\' } |).

                    harrietFacet = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: harriet = () } |).
                    harrietName  = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user harriet :: name = \'Harriet\' } |).

                    victorFacet  = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: victor = () } |).
                    victorName   = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user victor :: name = \'Victor\' } |).

                    rootFacet    = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: root = () } |).
                    rootName     = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root :: name = \'root\' } |).


                    loginAsMethod =       (| { rcvr => allWorldRegions examples privacy acme userManager  :: primitiveLogInAs: { userName => abstractString } Do: { b => abstractBlock } =
                                                (
                                                 | userCapability = userCapability | "added by dmu"
                                                "logInAs: ({ capability => userCapability } userWithName: userName) Do: b"
                                                b value: { capability => userCapability } userWithName: userName
                                                )
                                             } |).

                    userWithNameMethod =  (| { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability :: userWithName: { userName => abstractString }  = 
                                                (            userName = \'root\'    ifTrue: [user root]
                                                    False: [ userName = \'emily\'   ifTrue: [user emily]
                                                    False: [ userName = \'harriet\' ifTrue: [user harriet]
                                                    False: [ userName = \'victor\'  ifTrue: [user victor]]]].
                                                )
                                             } |).
                    getUserObjectMethod = (| { rcvr => allWorldRegions examples privacy acme userManager. 
                                               user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root :: 
                                             getUserObjectFor: { userName => abstractString }  = 
                                                (
                                                  | userCapability = userCapability | "added by dmu"
                                                  { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } userWithName: userName
                                                )
                                             } |).


                    employeeRole = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root ::  
                           employee = (| parent* = role visitor |) } |). 
                    employeeRoleForEmily = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user emily ::  
                           employee = { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root } employee } |). 
                    employeeRoleForHarriet = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user harriet ::  
                           employee = { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root } employee } |). 

                    hrRole = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root ::  
                           hr = (| parent* = role employee |) } |). 
                    hrRoleForHarriet = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user harriet ::  
                           hr = { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root } hr } |). 

                    adminRole = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root ::  
                           administrator = (| parent* = role hr |) } |). 


                |) }

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserWithId: id Name: n = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme userManager user :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme userManager user ', id, ' :: name = \'', n, '\' }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         primitiveAsUser: id Do: korzBlock = ( |
            | 
            evaluateStringAsEvaluatorContents: 
              ' allWorldRegions examples privacy acme userManager primitiveLogInAs: \'', id, '\' Do: ', korzBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         test = ( |
            | 
            testUsingLoginMethods.

            testUseOfIncomingContextInContextExpressions.

            [ tbd
            testAccessToDomainsByVisitor.
            testAccessToDomainsByEmployee.
            testAccessToDomainsByHR.

            testAccessToDataByVisitor.
            testAccessToDataByEmployee.
            [harold toto testAccessToDataByHR].

            testPublicComputation.
            testOrganizationComputation.
            testPersonalComputation.

            testIllegalAccessAttempts.

            testOldPublicComputation.
            testOldOrganizationComputation.
            testOldPersonalComputation.

            testOldIllegalOrganizationComputation
            ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByEmployee = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. 
                        privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } organization } name '
            Expect: 'The ACME Company'.

              test: ' ({ rcvr => allWorldRegions examples privacy acme. 
                         privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  organization }
                       employees first) name '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByVisitor = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  name '
            Expect: 'The ACME Company'.

              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  employees size '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByEmployee = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee}  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByHR = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>allWorldRegions examples privacy acme userManager user root } hr }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr }  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr }  personal '
            Expect: asRootDo: '[ privacyDomain personal ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByVisitor = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> visitor }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  organization '
            ExpectNotUnderstood: 'organization'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testIllegalAccessAttempts = ( |
            | 
            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr} personalComputation '
            ExpectNotUnderstood: 'hr'.

            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. privacyDomain =>> personal} personalComputation '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldIllegalOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  illegalOrganizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  organizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} organizationComputation '
            Expect: 'Emily'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       organizationComputation '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPersonalComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  personalComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} personalComputation '
            ExpectNotUnderstood: 'personal'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       personalComputation '
            Expect: 99999).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPublicComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOrganizationComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPersonalComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPublicComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fCategory: korz interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUseOfIncomingContextInContextExpressions = ( |
            | 
              test: ' logInAs: \'root\' Do: [
                          { rcvr =>  allWorldRegions examples privacy interpreterTestMethods. } testUseOfIncomingContextInContextExpressions 
                        ]'
            Expect: getWellKnownFacet: 'true').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUsingLoginMethods = ( |
            | 
            halt.

              test: 'logInAs: \'root\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'emily\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'harriet\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'victor\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            ExpectNotUnderstood: 'employees'.

            harold "remove
              test: '{rcvr => allWorldRegions examples privacy} logInAs: \'root\' Do: [(acme employees first) name]'
            Expect: 'Emily'
            ButNotUnderstood: 'acme'.").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         victor.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         zOLDmakeRoleDimension = ( |
             abstractRole.
             employee.
             visitor.
            | 

            abstractRole: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  role =  () }'.

            "visitor role is unrestricted"
            visitor:  addFacetFromExpression: '{ rcvr => role.  ::  visitor =  () }'
                                      Parent: abstractRole.

            primitiveAsUser: 'root' Do: '[ 
                "employee role is available to employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  employee = (| parent* = role visitor |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"
            ]'.

            "I had to make 'role employee' a method because of the new static semantics for slot initializers. Doesn't work: would need root user when executing" 

            "This cannot be in the same block as above, because the above must execute to put role employee in the static context"
            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user emily   ::  
                       employee =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } |).

                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet   ::  
                       employee =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } |).

            ]'.


            primitiveAsUser: 'root' Do: '[ 
                "hr role is available to HR employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  
                      hr = (| parent* =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"
            ]'.

            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet ::
                     hr = { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr } |).
            ]'.

            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  
                     administrator = (| parent* = { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"

            ]'.

            halt: 'www').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV4' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         zOLDprotectUserSlot = ( |
             capabilityFormal.
             logInAsSlot.
             userCapability.
             userManager.
             userSlot.
            | 

            "Guard user slot with new capability"

            userManager: evaluateStringAsEvaluatorContents: 'allWorldRegions examples privacy acme userManager'.
            userSlot: userManager localSlots findFirst: [ | :e | e selector = 'user'] 
                                             IfPresent: [ | :e | e ]
                                              IfAbsent: [error: 'Shoulld not get here'].

            userCapability: evaluateStringAsEvaluatorContents: '()'.

            capabilityFormal: korz formal copyForSlot: userSlot.
            capabilityFormal formalName: 'capability'.
            capabilityFormal dispatchOnlyOn: userCapability.

            userSlot addSlotFormal: capabilityFormal.


            "Give logInAs the capability to access user facets"

            logInAsSlot: userManager localSlots findFirst: [ | :e | e selector = 'primitiveLogInAs:Do:']
                                                IfPresent: [ | :e | e ]
                                                 IfAbsent: [error: 'Shoulld not get here'].

            logInAsSlot setInitializationOfLocalSlotNamed: 'userCapability' To: userCapability).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         privacyV5 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacyV5.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         abstractDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         admin.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: zOLD utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asRootDo: korzBlock = ( |
            | 
            asUser: 'root' Do: korzBlock.

            "Obsolete:
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user => allWorldRegions examples privacy acme userManager user root.
                     role => { rcvr => allWorldRegions examples privacy acme userManager user root. user => allWorldRegions examples privacy acme userManager user root } defaultRole.
                     privacyDomain => { rcvr => { rcvr => allWorldRegions examples privacy acme userManager user root. 
                                                  user => allWorldRegions examples privacy acme userManager user root } defaultRole . 
                                        user => allWorldRegions examples privacy acme userManager user root. 
                                        role => { rcvr => allWorldRegions examples privacy acme userManager user root. 
                                                  user => allWorldRegions examples privacy acme userManager user root } defaultRole } defaultDomain
                   } value'
            "
            "context goes back to default after call to defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } halt defaultRole
            privacyDomain => { rcvr => user root . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultRole halt

                     privacyDomain => { rcvr => { rcvr => user root. user =>> root } defaultRole . user =>> root. role => { rcvr => user root. user =>> root } defaultRole } defaultDomain
                     privacyDomain => { rcvr => user root. user =>> root. role => { rcvr => user root. user =>> root } defaultRole } [ defaultRole defaultDomain ] value

            ").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: zOLD utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Do: korzBlock = ( |
            | 
            korz operations evaluateStringAsEvaluatorContents: 
                 ' { rcvr => ', korzBlock, '. 
                     user => allWorldRegions examples privacy acme userManager user ', id, '.
                     role => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                               user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole.
                     privacyDomain => { rcvr => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                                                  user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole . 
                                        user => allWorldRegions examples privacy acme userManager user ', id, '. 
                                        role => { rcvr => allWorldRegions examples privacy acme userManager user ', id, '. 
                                                  user => allWorldRegions examples privacy acme userManager user ', id, ' } defaultRole } defaultDomain
                   } value').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: zOLD utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression Expect: selfValue = ( |
             r.
            | 

            r:  asUser: id Do: '[ ', korzExpression, ' ]'.
            [r value = selfValue] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: zOLD utility methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asUser: id Test: korzExpression ExpectNotUnderstood: selector = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - development\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         developerAssumeRole: r = ( |
            | 
            developmentContext implicitArgumentAt: 'role' Put: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - development\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         developmentContext <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         emily <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - development\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInDevelopmentContext: korzExpression = ( |
            | 
            evaluateStringAsEvaluatorContents: korzExpression
                                           In: developmentContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - testing/runtime\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         evaluateInRootContext: korzExpression = ( |
             context.
             root.
            | 

            root: primitiveAsRootDo: '[
                allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\'
            ]'.

            context: korz baseContext copy.
            context implicitArgumentAt: 'user' Put: root.

            evaluateStringAsEvaluatorContents: korzExpression
                                           In: context).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         harriet <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - development\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         logInDeveloper: id = ( |
             developer.
            | 

            developer: primitiveAsRootDo: '[
                allWorldRegions examples privacy acme userManager getUserObjectFor: \'', id, '\'
            ]'.

            developmentContext: korz baseContext copy.
            developmentContext implicitArgumentAt: 'user' Put: developer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - development\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         logOutDeveloper = ( |
            | 
            developmentContext: korz baseContext copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeCompany = ( |
            | 
            evaluateInDevelopmentContext: '(|
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public       :: name = (\'The ACME Company\') }
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization :: employees <- protoOrderedCollection copy }

            |)'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making context-setting methods\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeContextSettingMethods = ( |
            | 
            [david aug].
            addSlotsFromExpression: '
                { worldRegion => allWorldRegions examples :: inRole: r Do: { block => abstractBlock } = ( { rcvr => block. role => r } value ) }
                { worldRegion => allWorldRegions examples :: withPrivacyDomain: d Do: { block => abstractBlock } = ( { rcvr => block. privacyDomain => d } value ) }

                harold. "This should work when the context-accessing bug is fixed - need to eliminate rcvr from default..."
                { worldRegion => allWorldRegions examples. :: logInAsNEW: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: 
                            [ inRole: defaultRole Do: [ withPrivacyDomain: defaultDomain Do: b ]] 
                  )
                }

                { worldRegion => allWorldRegions examples :: logInAs: { userName => abstractString } Do: { b => abstractBlock } = "OLD"
                      ( | u |
                        u: allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [ allWorldRegions examples privacy acme userManager getUserObjectFor: userName].
                       allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] 
                      )
                }


                "OLD ones"
                harold. "This should work when the context-accessing bug is fixed"
                { worldRegion => allWorldRegions examples :: cORRECTlogInAsOLD: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: 
                          [ inRole: user defaultRole Do: [ withPrivacyDomain: user defaultRole defaultDomain Do: b ]] )
                }



                "Temporary work-around for bug preventing access to context attributes in some cases. When fixed, replace with above."
               { worldRegion => allWorldRegions examples :: cORRECTlogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( | u |
                        u: allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [ allWorldRegions examples privacy acme userManager getUserObjectFor: userName].
                       allWorldRegions examples privacy acme userManager primitiveLogInAs: userName Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] 
                      )
                }



               "{ worldRegion => allWorldRegions examples :: asUser: u Do: { block => abstractBlock } = ( { rcvr => block. user => u } value ) }"

                "{ worldRegion => allWorldRegions examples :: logInAs: u Do: { b => abstractBlock } = 
                      ( asUser: u Do: [ inRole: u defaultRole Do: [ withPrivacyDomain: u defaultRole defaultDomain Do: b ]] )
                }"

                "{ worldRegion => allWorldRegions examples :: testLogInAs: { userName => abstractString } Do: { b => abstractBlock } = 
                      ( | u |
                        u:  user root.
                      )
                 }"


            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultDomainSlotsInRoles = ( |
            | 
            evaluateInDevelopmentContext: '
                (| { rcvr => role administrator ::  defaultDomain =  ( privacyDomain universal) }
                   { rcvr => role employee      ::  defaultDomain =  ( privacyDomain organization) }
                   { rcvr => role hr            ::  defaultDomain =  ( privacyDomain personal) }
                   { rcvr => role visitor       ::  defaultDomain =  ( privacyDomain public) }
                |)
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeDefaultRoleSlotsInUsers = ( |
            | 
            evaluateInDevelopmentContext: ' 
                (| { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'emily\'   ::  defaultRole =  ( role employee) }
                   { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'harriet\' ::  defaultRole =  ( role hr) }
                   { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'victor\'  ::  defaultRole =  ( role visitor) }
                   { rcvr => allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\'    ::  defaultRole =  ( role administrator) }
                |)
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployeeWithId: id Name: n Salary: s = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy employees :: ', id, ' =  () }'.

            evaluateInDevelopmentContext: '(|
              { rcvr => allWorldRegions examples privacy employees ', id, ' :: name = \'', n, '\' }
              { rcvr => allWorldRegions examples privacy employees ', id, '. privacyDomain =>> personal :: salary = ', s asString, ' }
            |)'.

            evaluateInDevelopmentContext: '
              ({ rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees) add: allWorldRegions examples privacy employees ', id).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployees = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  employees =  () }'.

            emily:   makeEmployeeWithId: 'emily'   Name: 'Emily' Salary: 99999.
            harriet: makeEmployeeWithId: 'harriet' Name: 'Harriet' Salary: 88888.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  computations =  () }'.

            makePublicComputation.
            makeOrganizationComputation.
            makePersonalComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeInterpreterTests = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  interpreterTestMethods =  () }'.

            addSlotsFromExpression: '
                { rcvr => allWorldRegions examples privacy interpreterTestMethods :: 
                  testUseOfIncomingContextInContextExpressions = ( {rcvr => foyer. role =>> employee} true ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  oldComputations =  () }'.

            makeOldPublicComputation.
            makeOldOrganizationComputation.
            makeOldPersonalComputation.

            makeOldIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldIllegalOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: illegalOrganizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doPersonalComputation ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: organizationComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> organization } doOrganizationComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doOrganizationComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: personalComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> personal } doPersonalComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPersonalComputation = 
                ( (allWorldRegions examples privacy acme employees at: 0) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOldPublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: publicComputation = 
                ( { rcvr => allWorldRegions examples privacy oldComputations. privacyDomain =>> public } doPublicComputation ) }
            '.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy oldComputations :: doPublicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         makeOnlyMe = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples.  ::  privacy =  () }'
                            Parent: foyer.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  acme =  () }'.

            makeUserAndRoleDimensions.
            testPrimitiveLogin.

            logInDeveloper: 'root'.
            harold "extract method".

            makePrivacyDomainDimension.

            makeDefaultRoleSlotsInUsers.
            makeDefaultDomainSlotsInRoles.

            [harold. setDefaultCoordinateOfDimension: 'role'
                                         To:  primitiveAsUser: 'root' 
                                                           Do: '[|:user| { rcvr => allWorldRegions examples role. user => user } administrator]'].

            developerAssumeRole: evaluateInDevelopmentContext: 'role administrator'.

            makeCompany.
            makeEmployees.

            makeExampleComputations.

            [makeOldExampleComputations].
            makeContextSettingMethods.

            logOutDeveloper.


            setDefaultCoordinateOfDimension: 'role' 
                                         To:  evaluateStringAsEvaluatorContents: 'role visitor'.
            setDefaultCoordinateOfDimension: 'privacyDomain' 
                                         To:  evaluateStringAsEvaluatorContents: 'privacyDomain public'.

            makeInterpreterTests.

            [protectUserSlot].

            test.

            removeDefaultCoordinateOfDimension: 'role'.
            removeDefaultCoordinateOfDimension: 'privacyDomain').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: organizationComputation = 
                ( (allWorldRegions examples privacy acme employees first) name)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePersonalComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: personalComputation = 
                ( (allWorldRegions examples privacy acme employees first) salary)
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePrivacyDomainDimension = ( |
             abstractDomain.
            | 

            abstractDomain:     addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractDomain =  () }'.

                                addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  privacyDomain =  () }'.

            evaluateStringAsEvaluatorContents: '
                (| { rcvr => privacyDomain.  :: 
                     public       = (| parent* = allWorldRegions examples privacy abstractDomain |) } |).
            '.

            "The following must be done in separate 'evaluateInDevelopmentContext:' messages because the RHSs of the parent* initializaitons are evaluated statically"

            "Note: 'public' is accessible because it is evaluated in a context set by the guard, which includes: rcvr => privacyDomain"
            evaluateInDevelopmentContext: '
                (| { rcvr => privacyDomain. role =>> employee      :: organization = (| parent* = public |) } |).
            '.

            "Note: 'organization' is accessible because it is evaluated in a context set by the guard: rcvr => privacyDomain. role =>> hr"
            evaluateInDevelopmentContext: '
                (| { rcvr => privacyDomain. role =>> hr            :: personal     = (| parent* = organization |) } |).
            '.

            evaluateInDevelopmentContext: '
                (| { rcvr => privacyDomain. role =>> administrator :: universal    = (| parent* = personal |) } |).
            '.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making exanple computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makePublicComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: publicComputation = 
                ( allWorldRegions examples privacy acme name )
              }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserAndRoleDimensions = ( |
            | 
            "These two dimensions must be made together because they require access to user objects, which are controlled by a hidden capability objects"

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractUser =  () }'.
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme. ::  userManager =  () }'.
            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  role =  () }'.

            "visitor role is unrestricted"
            addFacetFromExpression: '{ rcvr => role.  ::  visitor =  (| parent* = allWorldRegions examples privacy abstractRole|) }'.


            "Moved userCapability to slotGuard -- dmu"
            addSlotsFromExpression: '
                { static. userCapability => () :: createUsers = (|
                    userFacet  = (| { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability ::  user =  () } |).

                    "Dont seem to be able to nest, because cannot sert rcvr properly in guard of name slot
                      emilyFacet = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: 
                                     emily =  (| { rcvr => rcvr :: name = \'Emily\' } |)  } |)."
                    emilyFacet   = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: emily = () } |).
                    emilyName    = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user emily :: name = \'Emily\' } |).

                    harrietFacet = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: harriet = () } |).
                    harrietName  = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user harriet :: name = \'Harriet\' } |).

                    victorFacet  = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: victor = () } |).
                    victorName   = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user victor :: name = \'Victor\' } |).

                    rootFacet    = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user :: root = () } |).
                    rootName     = (| { rcvr => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root :: name = \'root\' } |).


                    oldloginAsMethod =       (| { rcvr => allWorldRegions examples privacy acme userManager  :: primitiveLogInAsOLD: { userName => abstractString } Do: { b => abstractBlock } =
                                                (
                                                 | userCapability = userCapability | "added by dmu"
                                                "logInAs: ({ capability => userCapability } userWithName: userName) Do: b"
                                                b value: { capability => userCapability } userWithName: userName
                                                )
                                             } |).

                    loginAsMethod =       (| { rcvr => allWorldRegions examples privacy acme userManager  :: primitiveLogInAs: { userName => abstractString } Do: { b => abstractBlock } =
                                                (
                                                 | userCapability = userCapability | "added by dmu"
                                                 {rcvr => b. user => { capability => userCapability } userWithName: userName} value
                                                "logInAs: ({ capability => userCapability } userWithName: userName) Do: b"
                                                "b value: { capability => userCapability } userWithName: userName"
                                                )
                                             } |).


                    userWithNameMethod =  (| { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability :: userWithName: { userName => abstractString }  = 
                                                (            userName = \'root\'    ifTrue: [user root]
                                                    False: [ userName = \'emily\'   ifTrue: [user emily]
                                                    False: [ userName = \'harriet\' ifTrue: [user harriet]
                                                    False: [ userName = \'victor\'  ifTrue: [user victor]]]].
                                                )
                                             } |).

                    "For IDE (or worldbuilder) to set the development context that applies to slot definitions"
                    "Possibly guard this with a development or developer dimension"
                    getUserObjectMethod = (| { rcvr => allWorldRegions examples privacy acme userManager. 
                                               user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root :: 
                                             getUserObjectFor: { userName => abstractString }  = 
                                                (
                                                  | userCapability = userCapability | "added by dmu"
                                                  { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } userWithName: userName
                                                )
                                             } |).


                    employeeRole = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root ::  
                           employee = (| parent* = role visitor |) } |). 
                    employeeRoleForEmily = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user emily ::  
                           employee = { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root } employee } |). 
                    employeeRoleForHarriet = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user harriet ::  
                           employee = { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root } employee } |). 

                    hrRole = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root ::  
                           hr = (| parent* = role employee |) } |). 
                    hrRoleForHarriet = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user harriet ::  
                           hr = { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root } hr } |). 

                    adminRole = 
                        (| { rcvr => role. user => { rcvr => allWorldRegions examples privacy acme userManager. capability => userCapability } user root ::  
                           administrator = (| parent* = role hr |) } |). 


                |) }

            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making facets and slots\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeUserWithId: id Name: n = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy acme userManager user :: ', id, ' =  () }'.

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme userManager user ', id, ' :: name = \'', n, '\' }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - internal\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         primitiveAsRootDo: korzBlock = ( |
            | 
            primitiveAsUser: 'root' Do: korzBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: utility methods\x7fCategory: utility methods - internal\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         primitiveAsUser: id Do: korzBlock = ( |
            | 
            evaluateStringAsEvaluatorContents: 
              ' allWorldRegions examples privacy acme userManager primitiveLogInAs: \'', id, '\' Do: ', korzBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         test = ( |
            | 
            testPrimitiveLogin.
            testEvaluateInRootContext.

            testUsingLoginMethods.

            testUseOfIncomingContextInContextExpressions.

            [ tbd
            testAccessToDomainsByVisitor.
            testAccessToDomainsByEmployee.
            testAccessToDomainsByHR.

            testAccessToDataByVisitor.
            testAccessToDataByEmployee.
            [harold toto testAccessToDataByHR].

            testPublicComputation.
            testOrganizationComputation.
            testPersonalComputation.

            testIllegalAccessAttempts.

            testOldPublicComputation.
            testOldOrganizationComputation.
            testOldPersonalComputation.

            testOldIllegalOrganizationComputation
            ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByEmployee = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. 
                        privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } organization } name '
            Expect: 'The ACME Company'.

              test: ' ({ rcvr => allWorldRegions examples privacy acme. 
                         privacyDomain => { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  organization }
                       employees first) name '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByVisitor = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  name '
            Expect: 'The ACME Company'.

              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  employees size '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByEmployee = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee}  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByHR = ( |
            | 
              test: ' { rcvr => privacyDomain. role => { rcvr => role. user =>allWorldRegions examples privacy acme userManager user root } hr }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

              test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr }  organization '
            Expect: asRootDo: '[ privacyDomain organization ]'.

                           test: ' { rcvr => privacyDomain. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr }  personal '
            Expect: asRootDo: '[ privacyDomain personal ]').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing basic access\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDomainsByVisitor = ( |
            | 
              test: ' { rcvr => privacyDomain. role =>> visitor }  public '
            Expect: asRootDo: '[ privacyDomain public ]'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  organization '
            ExpectNotUnderstood: 'organization'.

                           test: ' { rcvr => privacyDomain. role =>> visitor }  personal '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testEvaluateInRootContext = ( |
            | 
            evaluateInRootContext: '
              (| { role => role administrator :: foo = 45} |).
            '.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [{ role =>> administrator } foo]'
            Expect: 45).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testIllegalAccessAttempts = ( |
            | 
            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. role =>> hr} personalComputation '
            ExpectNotUnderstood: 'hr'.

            asUser: 'emily'
              Test: ' {rcvr => allWorldRegions examples privacy computations. privacyDomain =>> personal} personalComputation '
            ExpectNotUnderstood: 'personal').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldIllegalOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } visitor}  illegalOrganizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } employee} illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user =>> root } hr}       illegalOrganizationComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldOrganizationComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  organizationComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} organizationComputation '
            Expect: 'Emily'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       organizationComputation '
            Expect: 'Emily').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPersonalComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  personalComputation '
            ExpectNotUnderstood: 'organization'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} personalComputation '
            ExpectNotUnderstood: 'personal'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       personalComputation '
            Expect: 99999).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing old example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOldPublicComputation = ( |
            | 
              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } visitor}  publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee} publicComputation '
            Expect: 'The ACME Company'.

              test: ' {rcvr => allWorldRegions examples privacy oldComputations. role => { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr}       publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testOrganizationComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            Expect: 'Emily'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations organizationComputation '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPersonalComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            Expect: 99999.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations personalComputation '
            ExpectNotUnderstood: 'salary').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPrimitiveLogin = ( |
            | 
            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [role administrator]'
            ExpectFacetNamed: 'allWorldRegions examples role administrator'.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'harriet\' Do: [role hr]'
            ExpectFacetNamed: 'allWorldRegions examples role hr'.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'harriet\' Do: [role administrator]'
            ExpectNotUnderstood: 'administrator'.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'harriet\' Do: [user]'
            ExpectFacetNamed: 'allWorldRegions examples privacy acme userManager user harriet'
            ButNotUnderstood: 'user'.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [ 
              { role => role administrator } foo.
            ]'
            ExpectNotUnderstood: 'foo'.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'harriet\' Do: [ 
              { role => role administrator } foo.
            ]'
            ExpectNotUnderstood: 'administrator'.

            failingtest: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: [ 
              (| { role => role administrator :: foo } |).
            ]'
            Expect: '???'. "Not understood: administrator, because user context is not avaialable when evaluating slot guard"

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'root\' Do: 
              [allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\']'
            ExpectFacetNamed: 'allWorldRegions examples privacy acme userManager user root'.

            test: 'allWorldRegions examples privacy acme userManager primitiveLogInAs: \'harriet\' Do: 
              [allWorldRegions examples privacy acme userManager getUserObjectFor: \'root\']'
            ExpectNotUnderstood: 'getUserObjectFor:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: testing example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testPublicComputation = ( |
            | 
            asUser: 'root'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'harriet'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'emily'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company'.

            asUser: 'victor'
              Test: ' allWorldRegions examples privacy computations publicComputation '
            Expect: 'The ACME Company').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fCategory: korz interpreter tests\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUseOfIncomingContextInContextExpressions = ( |
            | 
              test: ' logInAs: \'root\' Do: [
                          { rcvr =>  allWorldRegions examples privacy interpreterTestMethods. } testUseOfIncomingContextInContextExpressions 
                        ]'
            Expect: getWellKnownFacet: 'true').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testUsingLoginMethods = ( |
            | 
              test: 'logInAs: \'root\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'emily\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'harriet\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            Expect: 'Emily'.

              test: 'logInAs: \'victor\' Do: [(allWorldRegions examples privacy acme employees first) name]'
            ExpectNotUnderstood: 'employees'.

            harold "remove
              test: '{rcvr => allWorldRegions examples privacy} logInAs: \'root\' Do: [(acme employees first) name]'
            Expect: 'Emily'
            ButNotUnderstood: 'acme'.").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: well-known facets\x7fCategory: users\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         victor.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         zOLDmakeRoleDimension = ( |
             abstractRole.
             employee.
             visitor.
            | 

            abstractRole: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ worldRegion => allWorldRegions examples  ::  role =  () }'.

            "visitor role is unrestricted"
            visitor:  addFacetFromExpression: '{ rcvr => role.  ::  visitor =  () }'
                                      Parent: abstractRole.

            primitiveAsUser: 'root' Do: '[ 
                "employee role is available to employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  employee = (| parent* = role visitor |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"
            ]'.

            "I had to make 'role employee' a method because of the new static semantics for slot initializers. Doesn't work: would need root user when executing" 

            "This cannot be in the same block as above, because the above must execute to put role employee in the static context"
            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user emily   ::  
                       employee =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } |).

                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet   ::  
                       employee =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee } |).

            ]'.


            primitiveAsUser: 'root' Do: '[ 
                "hr role is available to HR employees and admin. Multiple slots because we do not have disjunction in guards"
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  
                      hr = (| parent* =  { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } employee |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"
            ]'.

            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user harriet ::
                     hr = { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr } |).
            ]'.

            primitiveAsUser: 'root' Do: '[ 
                (| { rcvr => role. user => allWorldRegions examples privacy acme userManager user root    ::  
                     administrator = (| parent* = { rcvr => role. user => allWorldRegions examples privacy acme userManager user root } hr |) } |). 
                          "Parentage is a bit odd in general, based on access privileges"

            ]'.

            halt: 'www').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacyV5' -> () From: ( | {
         'Category: making dimensions\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         zOLDprotectUserSlot = ( |
             capabilityFormal.
             logInAsSlot.
             userCapability.
             userManager.
             userSlot.
            | 

            "Guard user slot with new capability"

            userManager: evaluateStringAsEvaluatorContents: 'allWorldRegions examples privacy acme userManager'.
            userSlot: userManager localSlots findFirst: [ | :e | e selector = 'user'] 
                                             IfPresent: [ | :e | e ]
                                              IfAbsent: [error: 'Shoulld not get here'].

            userCapability: evaluateStringAsEvaluatorContents: '()'.

            capabilityFormal: korz formal copyForSlot: userSlot.
            capabilityFormal formalName: 'capability'.
            capabilityFormal dispatchOnlyOn: userCapability.

            userSlot addSlotFormal: capabilityFormal.


            "Give logInAs the capability to access user facets"

            logInAsSlot: userManager localSlots findFirst: [ | :e | e selector = 'primitiveLogInAs:Do:']
                                                IfPresent: [ | :e | e ]
                                                 IfAbsent: [error: 'Shoulld not get here'].

            logInAsSlot setInitializationOfLocalSlotNamed: 'userCapability' To: userCapability).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         korzPrivacy = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzPrivacy.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzPrivacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzPrivacy postFileIn
