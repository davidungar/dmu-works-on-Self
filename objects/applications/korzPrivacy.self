 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         asSelfObject = ( |
            | 
            harold. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         privacy = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker privacy.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         abstractDomain.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         make = ( |
            | core make. makeOnlyMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeCompany = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  acme =  () }'.

            setDefaultCoordinateOfDimension: 'role' To: (evaluateStringAsEvaluatorContents: 'role hr' Receiver: foyer).

            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public       :: name = (\'The ACME Company\') }
              { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization :: employees <- protoOrderedCollection copy }

            '.

            makeEmployees.

            setDefaultCoordinateOfDimension: 'role' To: (evaluateStringAsEvaluatorContents: 'role visitor' Receiver: foyer)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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
                { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> organization } employees add: allWorldRegions examples privacy employees ', id 
            Receiver: foyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeEmployees = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  employees =  () }'.
            makeEmployeeWithId: 'ann' Name: 'Ann' Salary: 99999.
            makeEmployeeWithId: 'ben' Name: 'Ben' Salary: 88888).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeExampleComputations = ( |
            | 
            addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  computations =  () }'.

            makePublicComputation.
            makeOrganizationComputation.
            makePersonalComputation.

            makeIllegalOrganizationComputation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: making example computations\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeIllegalOrganizationComputation = ( |
            | 
            addSlotsFromExpression: '
              { rcvr => allWorldRegions examples privacy computations :: illegalOrganizationComputation = 
                ( { rcvr => allWorldRegions examples privacy computations. privacyDomain =>> organization } doPersonalComputation ) }
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         makeRoleDimension = ( |
             abstractRole.
             employee.
             visitor.
            | 

            abstractRole: addFacetFromExpression: '{ rcvr => allWorldRegions examples privacy  ::  abstractRole =  () }'.

            addFacetFromExpression: '{ rcvr => foyer. worldRegion => allWorldRegions examples  ::  role =  () }'.

            visitor: addFacetFromExpression: '{ rcvr => role.  ::  visitor =  () }'
                                     Parent: abstractRole.

            employee: addFacetFromExpression: '{ rcvr => role.  ::  employee =  () }'
                                      Parent: visitor. "This is a bit odd in general, based on access privileges"

            addFacetFromExpression: '{ rcvr => role.  ::  hr =  () }'
                            Parent: employee).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         organizationDomain <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'ModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'core' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         personalDomain <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korzPrivacy InitialContents: InitializeToExpression: (nil)'
        
         publicDomain <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByEmployee = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain => { rcvr => privacyDomain. role =>> employee } organization } name '
            Expect: 'The ACME Company'.

              test: ' ({ rcvr => allWorldRegions examples privacy acme. privacyDomain => { rcvr => privacyDomain. role =>> employee }  organization } employees at: 0) name '
            Expect: 'Ann').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         testAccessToDataByVisitor = ( |
            | 
              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  name '
            Expect: 'The ACME Company'.

              test: ' { rcvr => allWorldRegions examples privacy acme. privacyDomain =>> public }  employees size '
            ExpectNotUnderstood: 'employees').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'privacy' -> () From: ( | {
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
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot'
        
         runFailingTests = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzPrivacy InitialContents: FollowSlot\x7fVisibility: public'
        
         test: korzExpressionStringOrBlock ExpectNotUnderstood: selector = ( |
            | 
            runFailingTests ifTrue: [ test: korzExpressionStringOrBlock Expect: '???' ]
                            False:  self).
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
        
         directory <- 'applications'.
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
