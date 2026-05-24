 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> () From: ( | {
         'Category: parts of the world\x7fCategory: examples\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         identityE = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker identityE.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot\x7fVisibility: public'
        
         addMySlots: expression = ( |
            | 
            addSlotsFromExpression: '{ experiment => ', experimentName, ' :: ', expression, '}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         eval: s = ( |
            | evaluateStringAsEvaluatorContents: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot\x7fVisibility: public'
        
         korzStyleBroken = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker identityE korzStyleBroken.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         experimentName = 'identityEK'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeAbstractObjects = ( |
            | 
            addMySlots: ' person = (). state = (). company = (). man = (). woman = ()').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeBottoms = ( |
            | 
            addMySlots: 'maybe = (| t* = true. f* = false|)'.
            addMySlots: 'manOrWoman = (| man* = man. woman* = woman|)').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeCompanies = ( |
            | 
            makeIBM.
            makeOracle.
            makeIntel.
            addMySlots: '{ kind => company :: anyCompany = (|i* = ibm. o* = oracle. a* = intel|) }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'Category: companies\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeIBM = ( |
            | 
            addMySlots: ' { kind => company :: ibm  = (| parent* = company|) }'.
            addMySlots: ' {  kind => man.  company => {kind => company} ibm. hasPhD => true.  state => {kind => state} ny ::  mark = () }'.
            addMySlots: ' {  kind => man.  company => {kind => company} ibm. hasPhD => true.  state => {kind => state} ca ::  dave = () }'.
            addMySlots: ' {  kind => man.  company => {kind => company} ibm. hasPhD => false. state => {kind => state} nc ::  sam  = () }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'Category: companies\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeIntel = ( |
            | 
            addMySlots: ' { kind => company :: intel  = (| parent* = company|) }'.
            addMySlots: ' { kind => woman. company => {kind => company} intel. hasPhD => false.  state => {kind => state} ca ::  jane = () }'.
            addMySlots: ' { kind => man.   company => {kind => company} intel. hasPhD => false.  state => {kind => state} ca ::  tim  = () }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.
            makeAbstractObjects.
            makeStates.
            makeCompanies.
            makeSalutationMethod.
            makeBottoms.
            tryIt.
            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'Category: companies\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeOracle = ( |
            | 
            addMySlots: ' { kind => company :: oracle  = (| parent* = company|) }'.
            addMySlots: ' {   kind => man.  company => {kind => company} oracle. hasPhD => true.   state => {kind => state} ca ::  mario = () }'.
            addMySlots: ' {   kind => man.  company => {kind => company} oracle. hasPhD => false.  state => {kind => state} ca ::  larry = () }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeSalutationMethod = ( |
            | 
            addMySlots: '{  kind => man. hasPhD => false. :: salutation = \'Mr.\' }'.
            addMySlots: '{ kind => woman. hasPhD => false. :: salutation = \'Ms.\' }'.
            addMySlots: '{ state => {kind => state} ca. :: salutation = \'Dude.\' }'.
            addMySlots: '{ hasPhD => true.  :: salutation = \'Dr.\' }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeStates = ( |
            | 
            addMySlots: '{kind => state :: ca = (|parent* = state|).  ny = (|parent* = state|).  nc = (|parent* = state|).}'.
            addMySlots: '{ kind => state  ::  any = (| ca* = ca. ny* = ny. nc* = nc |) }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'korzStyleBroken' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         tryIt = ( |
            | 
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any. company => {kind => company} ibm. } mark salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any. company => {kind => company} ibm } sam    salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any. company => {kind => company} ibm } save   salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any. company => {kind => company} oracle } larry   salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any}. company => {kind => company} oracle } mario   salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any. company => {kind => company} intel } jane   salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: '{ kind => manOrWoman.  hasPhD => maybe. state => {kind => state} any. company => {kind => company} intel } tim   salutation') asSelfObject, ' Mark' ) printLine).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeExperimentFacet = ( |
            | 
            addSlotsFromExpression: experimentName, ' = ()'.
            setDefaultCoordinateOfDimension: 'experiment' To: getWellKnownFacet: experimentName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            ooStyle makeOnlyMe.
            [korzStyleBroken makeOnlyMe.]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot\x7fVisibility: public'
        
         ooStyle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz worldMaker identityE ooStyle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         experimentName = 'identityEOO'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeAbstractObjects = ( |
            | 
            addMySlots: ' person = (). state = (). company = ()'.
            addMySlots: ' man = (|parent* = person|). woman = (|parent* = person|).').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeCompanies = ( |
            | 
            addMySlots: 'companies = ()'.
            makeIBM.
            makeOracle.
            makeIntel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'Category: companies\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeIBM = ( |
            | 
            addMySlots: '{ rcvr => companies :: ibm  = (| parent* = company|) }'.
            addMySlots: ' { rcvr => companies ibm ::  employees =() } '.
            addMySlots: ' { rcvr => companies ibm employees ::  mark = (|inheritsFrom* = man|). sam = (|inheritsFrom* = man|). dave = (|inheritsFrom* = man|). david = (dave) } '.
            addMySlots: ' { rcvr => companies ibm employees mark  :: state = states ny. hasPhD = true }'.
            addMySlots: ' { rcvr => companies ibm employees sam   :: state = states nc. hasPhD = true }'.
            addMySlots: ' { rcvr => companies ibm employees david :: state = states ca. hasPhD = true }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'Category: companies\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeIntel = ( |
            | 
            addMySlots: ' { rcvr => companies :: intel  = (| parent* = company|) }'.
            addMySlots: ' { rcvr => companies intel ::  employees =() } '.
            addMySlots: ' { rcvr => companies intel employees ::  jane = (| inheritsFrom* = woman|). tim = (| inheritsFrom* = man|).  } '.
            addMySlots: ' { rcvr => companies intel employees jane  :: state = states ca. hasPhD = false }'.
            addMySlots: ' { rcvr => companies intel employees tim   :: state = states ca. hasPhD = false }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeOnlyMe = ( |
            | 
            makeExperimentFacet.
            makeAbstractObjects.
            makeStates.
            makeCompanies.
            makeSalutationMethod.
            tryIt.
            removeDefaultCoordinateOfDimension: 'experiment').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'Category: companies\x7fModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeOracle = ( |
            | 
            addMySlots: ' { rcvr => companies :: oracle  = (| parent* = company|) }'.
            addMySlots: ' { rcvr => companies oracle ::  employees =() } '.
            addMySlots: ' { rcvr => companies oracle employees ::  mario = (|inheritsFrom* = man|). larry = (|inheritsFrom* = man|).  } '.
            addMySlots: ' { rcvr => companies oracle employees mario  :: state = states ca.  hasPhD = true }'.
            addMySlots: ' { rcvr => companies oracle employees larry  :: state = states ca.  hadPhD = false }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeSalutationMethod = ( |
            | 
            addMySlots: '{ rcvr => person :: salutation = ( state salutationFor: rcvr ) }'.
            addMySlots: '{ rcvr => state  :: salutationFor: person = ( person formalSalutation ) }'.
            addMySlots: '{ rcvr => person :: formalSalutation = ( hasPhD ifTrue: [\'Dr.\'] False: [mrOrMs] ) }'.
            addMySlots: '{ rcvr => man :: mrOrMs = \'Mr.\' }'.
            addMySlots: '{ rcvr => woman :: mrOrMs = \'Ms\' }'.
            addMySlots: '{ rcvr => states ca :: salutationFor: person = ( \'Dude\' ) }').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         makeStates = ( |
            | 
            addMySlots: 'states = ()'.
            addMySlots: '{rcvr => states :: ca = (|parent* = state|).  ny = (|parent* = state|).  nc = (|parent* = state|).}').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> 'ooStyle' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         tryIt = ( |
            | 
            ((eval: 'companies ibm    employees mark   salutation') asSelfObject, ' Mark' ) printLine.
            ((eval: 'companies intel  employees tim    salutation') asSelfObject, ' Tim'  ) printLine.
            ((eval: 'companies ibm    employees sam    salutation') asSelfObject, ' Sam'  ) printLine.
            ((eval: 'companies oracle employees mario  salutation') asSelfObject, ' Mario') printLine.
            ((eval: 'companies intel  employees jane   salutation') asSelfObject, ' Jane' ) printLine).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> 'identityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'worldMaker' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         korzIdentityE = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzIdentityE.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzIdentityE' -> () From: ( | {
         'ModuleInfo: Module: korzIdentityE InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzIdentityE postFileIn
