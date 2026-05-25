 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         dataSlotAt: name IfAbsent: absentBlock = ( |
            | 
            localSlots findFirst: [|:s| s isData && [s selector = name]] IfPresent: [|:s| s] IfAbsent: absentBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot'
        
         isOKToSend: x = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fComment: Need a string which will evaluate to a slot holding me.
If one exists, invoke presentBlcok with it as argument,
else invoke absentBlock with me as argument.\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: private'
        
         korzCreatorNameIfPresent: presentBlock IfAbsent: absentBlock = ( |
            | 
            korzCreatorPathIfPresent: [|:p| presentBlock value: p shortName] 
                       IfAbsent:  [      absentBlock value: self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         korzCreatorPathIfPresent: pb IfAbsent: ab = ( |
             cycleSet.
             length <- 0.
             lm.
             m.
             names.
            | 

            names: list copyRemoveAll.
            m: self.
            lm: korz facets undispatched.
            [ m == lm ]  whileFalse: [
              m ifNil: [^ ab value: 'self nil!'].
              m korzCreatorSlotIfPresent: [| :s. |
                names addFirst: s selector.
                m: s holder.
              ] IfAbsent: [ | :why |  ^ ab value: why ].
              length: length succ.
              length > 100 ifTrue: [ 
                cycleSet ifNil: [ cycleSet: set copyRemoveAll ].
                cycleSet if: m
                  IsPresentDo: [ ^ ab value: 'Creator annotations form a cycle including reflectee of ', 
                                              m objectID printString.
                ] IfAbsentPut: m AndDo: [].
                length > 1000000 ifTrue: [ ^ ab value: 'Creator annotations path back to lobby is absurdly long.'].
              ].
            ].

            " 
              don't like to use the empty path for the foyer,
              though it MIGHT work
            "
            names isEmpty ifTrue: [names addLast: 'undispatched'].
            pb value:  korz path copyWithAll: names).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         korzCreatorSlotIfPresent: pb IfAbsent: ab = ( |
             s.
            | 
            s: korzCreatorSlotHint.
            s isNil || [ !== s contents]  ifTrue: [
              ^ ab value: 
                korzCreatorSlotHint isNil
                   ifTrue: 'creator has never been set'
                    False: 'must be a clone'
            ].
            pb value: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fComment: best-efforts naming,
including the object\'s printString\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         korzName = ( |
            | 
            isProxyFacet && [korzSafeName = 'a korz object']
              ifTrue: [^ value printString].
            korzNameSize: maxSmallInt PrintString:
                isProxyFacet ifTrue: ['proxying: ', value printString] False: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: private'
        
         korzNameSize: s PrintString: ps = ( |
             n.
             suffix.
            | 
            n: korzSafeName.
            suffix: korzNameSuffix.
            (
             (
              case if: [ ps isEmpty]  Then: [ n ]
                   If: [n isPrefixOf: ps ] Then: [ "suppress redundant name" ps ]
                   Else: [ "show both"          n, '(', ps, ')' ]
             ) copyAtMostWithLeadingEllipsis: s - suffix size
            ), suffix).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot'
        
         korzNameSuffix = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fComment: Exploit annotation info to attempt to find prototype.
If found, invoke pb block with prototype mirror as argument.
Else, invoke ab block with reason string as argument.
-- dmu\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         korzPrototypeIfPresent: pb IfAbsent: ab = ( |
             cs.
             myProto.
             n1.
             n2.
            | 
            cs: korzCreatorSlotHint.
            cs ifNil: [^ ab value: 'no creator hint'].
            cs exists ifFalse: [^ ab value: 'no creator'].
            myProto: cs contents.
            "check for same set of slots"
            (mightBeACopyOf: myProto) ifTrue: [pb value: myProto] False: [ab value: 'not a copy']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fComment: only computes an objects place in the name space,
or what it was cloned from;
does NOT run any non-reflective code.
Can be used on broken objects.\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         korzSafeName = ( |
            | 
            korzCreatorPathIfPresent: [|:p. |
              p shortName
            ] IfAbsent: [
              suggestiveKorzNameIfPresent: [|:n| n ] IfAbsent: ['korz' prependAOrAn, ' object']]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fComment: Based on the reference manual\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupKey: sel = ( |
            | 
            (korz selfishSlotFinder copyForFacet: self Selector: sel) findSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         mightBeACopyOf: protoFacet = ( |
             f1.
             f2.
            | 
            isProxyFacet  =  protoFacet  ifFalse: [^ false].

            f1:            korzParentFormals asVector sortBy: (| element: a Precedes: b = ( (a slot selector, a name) < (b slot selector, b name)) |).
            f2: protoFacet korzParentFormals asVector sortBy: (| element: a Precedes: b = ( (a slot selector, a name) < (b slot selector, b name)) |).
            f1 size = f2 size  ifFalse: [^ false].
            f1 with: f2 Do: [|:ff1. :ff2|
              ff1 == ff2  ifFalse: [
                (ff1 slot mightBeResultOfCopyingHolderOf: ff2 slot) ifFalse: [^ false]
              ].
            ]
            .
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsAt: name = ( |
            | 
            localSlots copyFilteredBy: [|:s| s selector = name]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: private'
        
         suggestiveKorzNameIfPresent: presentBlock IfAbsent: absentBlock = ( |
            | 
            korzPrototypeIfPresent: [|:myProto|
              myProto korzCreatorNameIfPresent: [|:n|  ^ presentBlock value: n prependAOrAn]
                                      IfAbsent:  []
            ] IfAbsent: [].
            absentBlock value: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         isCreator = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         isWorthAskingAboutCreator = ( |
            | 
            isMethod not                                                  "methods are immutable, just duplicate them").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: naming\x7fModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         mightBeResultOfCopyingHolderOf: aSlot = ( |
            | 
            = aSlot ifTrue: [^ true].
            isData  &&  [aSlot isData]  ifFalse: [^ false].
            name = aSlot name ifFalse: [^ false].
            isConstant  &&  [aSlot isConstant  &&  [contents !== aSlot contents]]  ifTrue: [^ false].
            argumentFormal isNil != aSlot argumentFormal isNil ifTrue: [^ false].
            argumentFormal isNil  &&  [aSlot argumentFormal isNil]  ifTrue: [^ true].
            argumentFormal childFacets = aSlot argumentFormal childFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: FollowSlot'
        
         korzNames = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzNames.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzNames' -> () From: ( | {
         'ModuleInfo: Module: korzNames InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzNames postFileIn
