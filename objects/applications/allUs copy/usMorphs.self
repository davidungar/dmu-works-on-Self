 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usMorphs = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usMorphs.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
             resend.postFileIn.
            worldMorph addBackgroundMenuContributor: us ide).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         asList = ( |
            | 
            (list copyRemoveAll addAll: usParentFormals) addAll: usParentFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorph = ( |
            | 
            us ide facetModel newOutlinerFor: self InWorld: process this birthEvent sourceHand world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorphOld = ( |
             b.
             lbl.
             n.
             r.
            | 
            n: asMirror name.
            lbl: labelMorph copy label: n.
            r: ((us ide facetMorph copy color: us ide facetMorphColor) radius: 20) addMorph: lbl.
            r myFacet: self.
            [lbl position: r bounds center x negate @ lbl position y.].
            lbl position: lbl position - ((lbl bounds center x half + r radius) @ lbl bounds height negate half).
            b: leafPointerButton copy.
            b buttonActionObject target: r.
            b colorAll: us ide facetMorphColor.
            b position: b position - b bounds center - (2@2).
            r addMorph: b.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = 'comment in us facet parent unimplemented'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         fakeParentFacetSlotsDo: blk = ( |
            | 
            usParentFacets asVector do: [|:facet. :i| 
              blk value:  us ide facetParentFakeSlot copyChild: self Parent: facet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         fakeParentFormalSlotsDo: blk = ( |
            | 
            (us ide consolidatedFormalsParentSlot copyForAllFormalsIn: self) do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         fakeSlots = ( |
             r.
            | 
            r: list copyRemoveAll.
            fakeSlotsDo: [|:s| r addLast: s].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         fakeSlotsDo: block = ( |
            | 
            fakeParentFacetSlotsDo: block.
            fakeParentFormalSlotsDo: block.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isShowableAsMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         moduleSummaryString = 'no moduleSummaryString in us facet parent'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
             r.
            | 
            r: list copyRemoveAll.
            usParentFacets  isEmpty ifFalse: [ r add: us ide facetParentFakeSlot].
            usParentFormals isEmpty ifFalse: [ r add: us ide consolidatedFormalsParentSlot].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            us ide facetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            childFacets isEmpty ifTrue: [^us facets foyer nameSize: 20].
            childFacets size = 1  ifTrue: [^ childFacets first nameSize: 20].
            ( (childFacets findFirst: [|:f| f isWellKnown] IfPresent: [|:f| f] IfAbsent: [childFacets first])
             nameSize: 20), ', etc.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            us ide formalInSlotModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         ide = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractFakeSlot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide abstractFakeSlot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         childFacet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide abstractFakeSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         evalStringAssignable = ( |
            | slot evalStringAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         holder = ( |
            | childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            key).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'fakeSlot' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: enumerators\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         browse = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browse' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide browse.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browse' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         allFacets = ( |
            | 
            ((browse descendantsOf: us facet parent) asList copyFilteredBy: [|:fm| fm isComplete])
              copyMappedBy: [|:fm| fm reflectee]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browse' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         childrenOfFacet: f = ( |
            | 
            allFacets asList copyFilteredBy: [|:ff| ff usParentFacets includes: f]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browse' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: enumerators\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         browseWellKnown = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browseWellKnown' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide browseWellKnown.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browseWellKnown' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         childrenOfFacet: f = ( |
            | 
            (resend.childrenOfFacet: f) asList copyFilteredBy: [|:ff| ff isWellKnown]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browseWellKnown' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'browse' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoryReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals categoryReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide categoryReferrent.

CopyDowns:
globals categoryReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         facet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide categoryReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForMirror: m CategoryList: l = ( |
            | 
            ((copy mirror: m) categoryList: l)
              categoriesString: traits cachedSlotAnnotation convertCategoryListToString: l).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror: x = ( |
            | facet: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'categoryReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: slots and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         acceptContents: str Editor: ed Event: evt = ( |
             rr.
            | 
            rr: newResultReporterForEditingContentsIn: ed Event: evt.
            us operations evaluateStringAsNewMethodContents: str
                                                    OldSlot: slot
                                             ReportErrorsTo: rr.
            finishChangingContents: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing whole thing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         acceptEditWholeThing: str Editor: ed Event: evt = ( |
             newSlot.
             rr.
            | 
            rr: newResultReporterForEditingContentsIn: ed Event: evt.
            newSlot: us operations evaluateStringAsSlotDeclaration: str
                                                           OldSlot: slot
                                                    ReportErrorsTo: rr.
            finishChangingWholeThing: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: building the header\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addInSituButtonToHeader = ( |
            | 
            addSpacerWhereInSituButtonWouldGo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: building the header\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addSpacerWhereInSituButtonWouldGo = ( |
            | 
            safelyDo: [
              myOutliner header addMorphLast:
                spacerMorph copyH: methodIcon width Color: myOutliner color.
             ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: locals\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildLocals = ( |
            | 
            "no locals on regular slots--yet.
            would need to get them to update"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: building the header\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildSlotTitle = ( |
            | 
            (us ide selectorAndFormalsMorph copyFor: mirror ImplicitFacet: enclosingFacet) colorAll: myOutliner color).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonDescriptions = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () ToBe: bootstrap addSlotsTo: (
             globals generalSlotModel parent buttonDescriptions _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotModel parent buttonDescriptions.

CopyDowns:
globals generalSlotModel parent buttonDescriptions. _Clone

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: Get Self object\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         getSelfObject = ( |
            | 
            target model getSelfObject: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: Remove slot\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeSlot = ( |
            | 
            target model removeSlot: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonIcon = ( |
            | 
              "must test for assignable before assignment,
               otherwise fake slots break"
            case
             if: [ slot isMethod ]         Then: [ methodIcon ]
             If: [ slot isAssignable not ] Then: [ equalsIcon ]
             If: [ slot isAssignment ]     Then: [ leftArrowIcon ]
             If: [ slot isAssignable ]     Then: [ colonIcon ]
             Else: [ morph ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            ('edit' & 'getSelfObject' & 'removeSlot' & nil) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         enclosingFacet = bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getSelfObject: evt = ( |
            | 
            evt sourceHand attach: selfObjectModel outlinerFor: mirror asMirror InWorld: evt sourceHand world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsFacetModel = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorph = ( |
            | us ide usLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodString = ( |
            | 
            methodTextWithSlots asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            us ide usMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithSlots = ( |
            | 
            (methodText copyForMethod: method) formatMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithoutSlots = ( |
             m.
            | 
            m: methodText copyForMethod: method.
            m formatMethodBodyWithoutSlots.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         newOutlinerFor: x InWorld: y = ( |
             r.
            | 
            r: resend.newOutlinerFor: x InWorld: y.
            [xxx].
            [y reifiedObjects includesKey: x] assert.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            us ide facetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            us ide slotOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: appearance\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         preferredColor = ( |
            | 
            us ide slotMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCategories = ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         rebindMyOutlinerToResultIn: rr = ( |
            | 
            myOutliner safelyDo: [
              referrent: rr result. 
              myOutliner cachedContentsString: nil.
              myOutliner world reifiedObjects at: slot Put: myOutliner.
              myOutliner initialize.
              growOuterSkin: rr event.
              myOutliner update
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeSlot: evt = ( |
            | 
            slot vaporize.
            myOutliner animatedDelete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: appearance\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide slotMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         shouldWrapMeWhenGrowingSkin = ( |
            | 
            [xxx]."must be false" false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fComment: Slots shown at foyer level in me,
filtering out assignment slots if so prefered.
-- Ungar, 2/4/95\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         shownSlotsInMe = ( |
            | 
            "The isFake part is to ensure that indexable slots in Klein maps are shown
              -- dmu 3/04"
            [slotsInMe asList copyFilteredBy: [|:s|  s isFake ||  [ s isAssignment not ] ]].
            vector "no shown slots; they appear in the header").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide slotReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsInMirror = ( |
            | mirror formals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | us ide slotSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         unprotectedFinishChangingContents: rr = ( |
            | 
            rr result ifNil: [ ^ self ].
            rr editor owner owner clearPanel.
            rebindMyOutlinerToResultIn: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing whole thing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         unprotectedFinishChangingWholeThing: rr = ( |
            | 
            rr result ifNil: [ ^ self ].
            myOutliner doneEditingWholeThing.
            rebindMyOutlinerToResultIn: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateMyOutlinerAfterRemovingMySlot = ( |
            | 
            myOutliner animatedDelete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: formals in facets\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         consolidatedFormalsModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ide slotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide consolidatedFormalsModel.

CopyDowns:
globals us ide slotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide consolidatedFormalsModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: facet = ( |
            | 
            myOutliner delete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            ('edit' & 'getSelfObject' & 'removeSlot' & nil) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         enclosingFacet = ( |
            | referrent childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         ifCannotSprout: cannotBlock Event: evt = ( |
            | 
            slot exists ifFalse: [|m|
              m: 'Sorry, but that slot does not exist (any more).'.
              (message copy receiver: userQuery 
                            Selector: 'report:'
                                With: m
              ) forkForBirthEvent: evt.
            ^ cannotBlock value: m.
            ].
            myOutliner isInWorld ifFalse: [|m|
              m: 'Sorry, but I am not in any world.'.
              (message copy receiver: userQuery 
                            Selector: 'report:'
                                With: m
              ) forkForBirthEvent: evt.
            ^ cannotBlock value: m.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         outlinerForSprouting: evt IfNone: nb = ( |
            | 
            error: 'moved to sprout:WithArrow:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerForSproutingFacet = ( |
            | us ide facetModel outlinerFor: slot contents InWorld: myOutliner world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerForSproutingSlot = ( |
            | 
            us ide slotModel outlinerFor: slot InWorld: myOutliner world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            us ide consolidatedFormalsOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         preferredColor = ( |
            | us ide formalMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         rebindMyOutlinerToResultIn: rr = ( |
            | 
            myOutliner enclosingOutlinerIfPresent: [|:o| o safelyDo: [myOutliner delete. o update]]
                                         IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         shouldSproutSlot: evt = ( |
            | 
            evt isShiftDownForLeftShiftHack).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | 
            referrent ifNil: [^ nil].
            referrent slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         sprout: evt = ( |
            | 
            case
              if:  ( shouldSproutSlot: evt )   Then: [  sprout: 'slot'  WithArrow: evt  ]
              If:  [ hasMethod not         ]   Then: [  sprout: 'facet' WithArrow: evt  ]
                                               Else: [  toggleExpandState:         evt  ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         sprout: slotOrFacet WithArrow: evt = ( |
             o.
            | 
            ifCannotSprout: [^ self] Event: evt.
            o: case if: ( slotOrFacet = 'slot'  )  Then:  [ outlinerForSproutingSlot  ]
                    If: [ slotOrFacet = 'facet' ]  Then:  [ outlinerForSproutingFacet ]
                                                   Else:   raiseError.
            safelyDo: [
                o = myOutliner root 
                  ifTrue: [ | p. hp |
                       p: o globalPosition.
                       hp: p + (10@0) "h globalPosition".
                       myOutliner addActivity: 
                         (((positionAnimator copyTarget: o Seconds: 0.1) from: p) to: hp)
                         andThen:
                         (((positionAnimator copyTarget: o Seconds: 0.1) from: hp) to: p).
                       ^ o
                ].
            ].

            expandSproutee ifTrue: [o model expand: evt].
            o isInWorld ifTrue: [world moveToFront: o].
            myOutliner expander target pointTo: o InSameViewAsHand: evt sourceHand.
            o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateArrow = ( |
             isFacet.
             o.
            | 
            isFacet: myOutliner expander target joineeOrNil model isUsFacetModel.
            o: isFacet && [slot isMethod not]
              ifTrue: [ outlinerForSproutingFacet ]
               False: [ outlinerForSproutingSlot  ].
            myOutliner expander target joineeOrNil = o ifTrue: [^ self].
            myOutliner expander target tailMorph collapse.
            sprout: (isFacet ifTrue: 'facet' False: 'slot') WithArrow: process this birthEvent.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateMyOutlinerAfterRemovingMySlot = ( |
            | 
            myOutliner enclosingOutlinerIfPresent: [|:o| o safelyDo: [o update]]
                                         IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'model' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals pluggableLeafOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotOutliner.

CopyDowns:
globals pluggableLeafOutliner. copyRemoveAllMorphs 
SlotsToOmit: model parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> () From: ( | {
         'Category: Pluggable Outliner State\x7fModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (us ide slotModel)\x7fVisibility: private'
        
         model <- bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         labelMorph = ( |
            | us ide usLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'usIDESlotOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'pluggableLeafOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         updateTitle = ( |
            | 
            [qqq]. "need to update title if, for instance, slot name changes"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide slotOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         consolidatedFormalsOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'model' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals us ide slotOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide consolidatedFormalsOutliner.

CopyDowns:
globals us ide slotOutliner. copyRemoveAllMorphs 
SlotsToOmit: model parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( | {
         'Category: Pluggable Outliner State\x7fModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (us ide consolidatedFormalsModel)\x7fVisibility: private'
        
         model <- bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsModel' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide consolidatedFormalsOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'Category: type tests\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'consolidatedFormalsOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         sproutWithArrow: evt = ( |
            | 
            [sprout: 0 WithArrow: evt. ]. "browsing"
            error: 'This functionality was moved to the model side.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateArrow = ( |
             mt.
             o.
            | 
            expander target isRetracted ifTrue: [^ self].
            expander target joineeOrNil ifNil:  [^ self].
            model updateArrow.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         yankOutliner: event = ( |
             o.
            | 
            o: model outlinerForSproutingSlot.
            delete.
            event sourceHand attach: o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         prototype = ( |
            | us ide consolidatedFormalsOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         consolidatedFormalsParentSlot = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ide abstractFakeSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide consolidatedFormalsParentSlot.

CopyDowns:
globals us ide abstractFakeSlot. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         formals <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide consolidatedFormalsParentSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         annotation = ( |
             lastCatPart.
            | 

            true ifTrue: [^ slotAnnotation copyForCategory: 'Slots'].

            lastCatPart:  formal isNil ifTrue: 'Fix this in us ide formalParentFakeSlot annotation' 
                                        False: [formal mySlot selector].
            slotAnnotation copyForCategories: ('Slots' & lastCatPart) asList.
            [qqq "above doesn't work"].
            false ifTrue: [slotAnnotation copyForCategory: lastCatPart]
                   False: slotAnnotation copyForCategory: 'Slots').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy formals: formals copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAllFormalsIn: facet = ( |
             d.
            | 
            d: dictionary copyRemoveAll.
            facet usParentFormals do: [|:f|
              [david hack].
              xxx isNil || [xxx isEmpty || [f isNotPositional  && [f name = xxx]]]  ifTrue: [
                d if: f mySlot IsPresentDo: [|:x| x formals add: f]
                               IfAbsentPut: [copyRemoveAll childFacet: facet] 
                                     AndDo: [|:x| x formals add: f]
              ]
            ].
            d asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | copy removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         exists = ( |
            | 
            existsInChildFacetOfFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         existsInChildFacetOfFormals = ( |
            | 
            formals isEmpty ifTrue: [^ false].
            childFacet ifNil: [^ false].
            formals findFirst: [|:f| (childFacet hasParentFormal: f) not]
                    IfPresent: false
                     IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         explicitFormals = ( |
            | slot explicitFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formalNamesString = ( |
             concat.
             fs.
             implicitNames.
             ir <- ''.
             pr <- ''.
             r.
             sr <- ''.
            | 
            fs: set copyRemoveAll addAll: formals.
            fs findFirst: [|:f| f isReceiver]
               IfPresent: [|:f| sr: f formalName. fs remove: f]
                IfAbsent: [].

            concat: [|:a. :b|  a isEmpty ifTrue: [b] False: [ b isEmpty ifTrue: [a] False: [a, ', ', b]]].

            fs do: [|:f|
              case
              if:  ( f isImplicit )    Then:  [ 
                   ir: concat value: ir With: f formalName 
              ]
              If:  [ f isOptional   ]  Then:  [ 
                   [f isPositionalAt: 1   ] assert.
                   [f mySlot isMethod not ] assert.
                   sr: concat value: sr With: ':'
              ]
              If:  [ f isPositional ]  Then:  [|i|
                   i: f positionalIndex.
                   [f mySlot isMethod] assert.
                   pr: concat value: pr With: f mySlot nameForPositionalFormalAt: i
              ]
              Else: [ error: 'What kind of formal is this?']
            ].
            r: concat value: (concat value: ir With: sr) With: pr.
            r size.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         holder = ( |
            | childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         implicitFormals = ( |
            | slot implicitFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isAssignable = ( |
            | 
            slot isAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isAssignment = ( |
            | 
            slot isAssignment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isMethod = ( |
            | 
            slot isMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiverTheOnlyFormal = ( |
            | 
            formals size = 1 ifFalse: [^ false].
            formals first isReceiver).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | 
            selector, 
            (isReceiverTheOnlyFormal ifTrue: ''  False: [' (', formalNamesString, ')'])).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         nameForPositionalFormalAt: i = ( |
            | slot nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         objectModelProto = ( |
            | 
            us ide slotModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         oneLinerContentsString = ( |
            | 
            (slotIfFail: [^ 'No slot?']) oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         receiver = ( |
            | 
            slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            formals removeAll. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         selector = ( |
            | (slotIfFail: [^ 'slot failed in selector']) selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = ( |
            | 
            slotIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotIfFail: fb = ( |
             slots.
            | 
            slots: self slots.
            case if: ( slots size = 0 )  Then:  [ fb value: 'no slots?' ]
                 If: [ slots size = 1 ]  Then:  [ slots first ]
                                         Else:  [ fb value: 'multiple slots?']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            us ide consolidatedFormalsModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         slots = ( |
            | 
            us slots slotsFromFormals: formals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         valueIfFail: fb = ( |
            | 
            exists ifTrue: [slot] False: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         vaporize = ( |
            | slot vaporize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         xxx.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ us ide facetModel getFoyerFacetEvent: event] )
                   label: 'Get Foyer facet' )
            ToGroup: 'applications'.

            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ us tests ide copyRun] )
                   label: 'Test Us IDE' )
            ToGroup: 'applications'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent categoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent categoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'categoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetChildrenMorph = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals childrenMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetChildrenMorph.

CopyDowns:
globals childrenMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetChildrenMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         action = ( |
            | 
            browseAndFilter childrenOfFacet: mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         browse = ( |
            | us ide browse).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         browseWellKnown = ( |
            | us ide browseWellKnown).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         morphTypeName = 'usIDEFacetChildrenMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         objectAt: index = ( |
            | 
            us ide facetModel outlinerFor: (result at: index) InWorld: world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'childrenMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetChildrenMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide facetChildrenMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetEnumerationMorph = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'mirror' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             bootstrap remove: 'result' From:
             globals mirrorEnumerationMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetEnumerationMorph.

CopyDowns:
globals mirrorEnumerationMorph. copyRemoveAllMorphs 
SlotsToOmit: mirror parent prototype result.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetEnumerationMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFacets: facets Event: evt = ( |
            | 
            (copy result: facets asVector) expand: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         morphTypeName = 'usIDEFacetEnumerationMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         objectAt: index = ( |
            | 
            us ide facetModel outlinerFor: (result at: index) InWorld: world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'mirrorEnumerationMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         titleString = ( |
            | 
            'Enumeration of ', result size printString, ' facets').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide facetEnumerationMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         result <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         facetOrFacetCategoryModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetOrFacetCategoryModel.

CopyDowns:
globals generalCategoryModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetOrFacetCategoryModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            us ide consolidatedFormalsModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ide facetOrFacetCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetModel.

CopyDowns:
globals us ide facetOrFacetCategoryModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addChild: evt = ( |
             f.
             n.
            | 
            n: userQueryMorph askString: 'Name of new facet?' DefaultAnswer: 'bankAccount' Event: evt.
                 (us facets includesWellKnownFacetNamed: n) not 
            || [ userQueryMorph askYesNo: n, ' already exists. Zap it?' Event: evt]  ifTrue: [
              us facets addWellKnownFacetNamed: n.
            ].
            f: us facets facetNamed: n.
            f addUsParentFacet: facet.
            evt sourceHand attach:  us ide facetModel outlinerFor: f InWorld: evt sourceHand world.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addEvaluator: evt = ( |
             b1.
             b2.
             b3.
             ed.
             f.
             r.
             result.
            | 

            b1: newEvaluatorButtonLabel: 'Get it'
                                 Script: 'target get_it_cmd: event'
                         IsAsynchronous: true.
            b2: newEvaluatorButtonLabel: 'Do it'
                                 Script: 'target  do_it_cmd: event'
                         IsAsynchronous: true.
            b3: newEvaluatorButtonLabel: 'Close'
                                 Script: 'target delete'
                         IsAsynchronous: false.

            r: newEvaluatorButtonRow: (b1 & b2 & b3 ) asVector.

            ed: us ide usEvaluatorEditor copyString: '' Style: evaluatorStyle.
            ed receiver: receiver.
            ed target: self.
            "ed beFlexibleHorizontally. won't resize"
            ed beTypingFocusFor: evt sourceHand.

            ed frameStyle: ed flatStyle.
            b1 target: ed.
            b2 target: ed.
            ed borderWidth: 0.

            f: frameMorph copy.
            f addMorphFirst: ed.
            f addMorphLast:  r.
            f frameStyle: f insetBezelStyle.
            f borderWidth: 2.
            f beFlexibleHorizontally.
            f leftJustify.

            result: f.

            result colorAll: myOutliner color.
            myOutliner addMorphToBottom: result.
            b3 target: result.

            ed).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         allModelsBeForFacet: newFacet = ( |
            | 
            myOutliner allMorphsDo: [|:m| m isPluggableOutliner && [m model isUsModel] ifTrue: [ m model beForFacet: newFacet]].
            myOutliner safelyDo: [myOutliner update].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | referrent: newFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buttonDescriptions = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () ToBe: bootstrap addSlotsTo: (
             globals generalCategoryModel parent buttonDescriptions _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetModel parent buttonDescriptions.

CopyDowns:
globals generalCategoryModel parent buttonDescriptions. _Clone

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: adding\x7fCategory: Add child\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addChild = ( |
            | 
            target model addChild: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Children\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         children = ( |
            | target model children: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Copied-Down Children\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         copiedDownChildren = ( |
            | target model copiedDownChildren: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Copy-Down Parent(s)\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         copyDownParents = ( |
            | 
            target model copyDownParents: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Find Slot...\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         findSlot = ( |
            | target model findSlot: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Get Self object\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         getSelfObject = ( |
            | target model getSelfObject: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Find Missing Slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         missingSlots = ( |
            | 
            target model missingSlots: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetModel parent buttonDescriptions parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: References\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         references = ( |
            | target model references: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: power operations\x7fCategory: Remake the World\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         remakeTheWorld = ( |
            | 
            target model remakeTheWorld).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Show Traits Family\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         showTraitsFamily = ( |
            | target model showTraitsFamily: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buttonsToPutInMenu = ( |
            | 
            (referrent == us facets foyer ifTrue: [('remakeTheWorld' & nil) asVector] False: vector),
            ('addChild'  &  nil & 'children' & 'getSelfObject' &  nil) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoriesUpdater = ( |
            | 
            us ide facetCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoryReferrentProto = ( |
            | us ide categoryReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         children = ( |
            | 
            halt: 'used?'.
            evt sourceHand attach: (
              us ide facetChildrenMorph copyMirror: mirror Event: evt).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         children: evt = ( |
            | 
            evt sourceHand attach: (
              us ide facetChildrenMorph copyMirror: mirror Event: evt).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         doItEvent: evt Text: text ShouldPickUp: shouldPickUp ReportResultTo: rr = ( |
             r.
            | 
            us operations evaluateStringAsEvaluatorContents: text
                                                   Receiver: receiver
                                             ReportErrorsTo: rr.
            rr result ifNil: [^ self].
            shouldPickUp ifTrue: [pickUp: rr result Event: evt].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         evaluatorStyle = ( |
            | 
            evaluatorStyleProto copyModel: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         evaluatorStyleProto = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'evaluatorStyleProto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalModel parent styleProto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'evaluatorStyleProto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetModel parent evaluatorStyleProto.

CopyDowns:
globals generalModel parent styleProto. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> 'evaluatorStyleProto' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'selfObjectModel' -> 'parent' -> 'evaluatorStyleProto' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facet = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getSelfObject: evt = ( |
            | 
            evt sourceHand attach: evt sourceHand world outlinerForMirror: receiver asMirror.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getFoyerFacetEvent: evt = ( |
            | 
            evt sourceHand attach: newOutlinerFor: us facets foyer InWorld: evt sourceHand world.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         headerButtonContents = ( |
            | 
            [showParents: e. addEvaluator: e].
            (
            ('/\\' @ 'target model showParents:  event') &
            ('E'   @ 'target model addEvaluator: event') &
            dismissButtonContents
            ) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsFacetModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         newEvaluatorButtonLabel: l Script: s IsAsynchronous: isA = ( |
             b.
             n.
            | 
            b: ui2Button copy.
            b script: s.
            b isAsynchronous: isA.
            n: preferredFontSpec size - 2.
            b label: l  FontSpec:      (preferredFontSpec copySize: n)
                        FontColor:      preferredFontColor.
            b beFlexibleHorizontally.
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         newEvaluatorButtonRow: buts = ( |
             r.
            | 
            r: rowMorph    copy.
            r borderWidth: 0.
            buts reverseDo: [|:b| r addMorph: b].
            r moveToFront: buts first.
            r beShrinkWrapVertically.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pickUp: aFacet Event: evt = ( |
             h.
             result.
            | 
            result: us ide facetModel  outlinerFor: aFacet InWorld: world.
            h: evt sourceHand.
            safelyDo: [
                result = myOutliner root
                  ifFalse: [h attach: result]
                     True: [ | p. hp |
                       p: result globalPosition.
                       hp: p + (10@0) "h globalPosition".
                       myOutliner addActivity: 
                         (((positionAnimator copyTarget: result Seconds: 0.1) from: p) to: hp)
                         andThen:
                         (((positionAnimator copyTarget: result Seconds: 0.1) from: hp) to: p).
                ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCategoriesUpdater = ( |
            | 
            us ide facetPseudoCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         remakeTheWorld = ( |
             oldFoyer.
            | 
            oldFoyer: us facets foyer.
            us worldMaker makeVM.
            allModelsBeForFacet: us facets foyer.
            myOutliner world reifiedObjects at: us facets foyer Put: myOutliner.
            us worldMaker makeNonVM.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide facetMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         showParents: evt = ( |
            | 
            mirror usParentFacets do: [|:s|
              evt sourceHand attach:  
              us ide facetModel outlinerFor: s
                                    InWorld: evt sourceHand world
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide facetSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide facetSliceReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsInMeAndSubcategories = ( |
            | [xxx]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsInMirror = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | 
            us ide facetSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         titleString = ( |
            | 
            mirror ifNil: [^ 'mirror is nil in facetModel (', objectID printString, ')>>titleString'].
            mirror name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetMorphColor = ( |
            | 
            paint copyRed: 0.778103 Green: 0.828934 Blue: 0.835777).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetParentFakeSlot = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ide abstractFakeSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetParentFakeSlot.

CopyDowns:
globals us ide abstractFakeSlot. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetParentFakeSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         annotation = ( |
            | 
            slotAnnotation parse: 'Category: Parent Facets').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         copyChild: cf Parent: pf = ( |
            | 
            (copy childFacet: cf ) parentFacet: pf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         exists = ( |
            | 
            childFacet hasParentFacet: parentFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            parentFacet name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            us ide facetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | value printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            us ide parentFacetOfFacetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         value = ( |
            | exists ifTrue: [parentFacet] False: [us facet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         valueIfFail: fb = ( |
            | 
            exists ifTrue: [parentFacet] False: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetParentFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         parentFacet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetPseudoCatModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ide facetOrFacetCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetPseudoCatModel.

CopyDowns:
globals us ide facetOrFacetCategoryModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetPseudoCatModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | 
            referrent facet: newFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            ('addSlot' & nil) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoriesUpdater = ( |
            | 
            us ide pseudoCatModelCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isPseudoCategoryModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | categoryReferrent mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCategoriesUpdater = ( |
            | 
            us ide pseudoCatModelPseudoCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | referrent facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsInMirror = ( |
            | 
            fakeSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | 
            us ide pseudoCatModelSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetPseudoCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent pseudoCategoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetPseudoCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent pseudoCategoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetPseudoCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         modelPrototype = ( |
            | 
            us ide facetPseudoCatModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'pseudoCategoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetSliceGroupModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSliceGroupModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> () From: ( |
             {} = 'Comment: I represent a group of slots in a slice.
May contain subgroups. -- dmu 5/1\x7fModuleInfo: Creator: globals us ide facetSliceGroupModel.

CopyDowns:
globals generalSliceGroupModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSliceGroupModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         itemUpdaters = ( |
            | 
            [xxx]. halt. resend.itemUpdaters).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            us ide facetSliceGroupOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSliceGroupModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide facetMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         titleString = ( |
            | 
            referrent isNil ifTrue: [^''].
            referrent facet printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetSliceGroupOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'model' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals sliceGroupOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSliceGroupOutliner.

CopyDowns:
globals sliceGroupOutliner. copyRemoveAllMorphs 
SlotsToOmit: model parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'Category: Pluggable Outliner State\x7fModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (us ide facetSliceGroupModel)\x7fVisibility: private'
        
         model <- bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupModel' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSliceGroupOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'facetSliceGroupOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceGroupOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide facetSliceGroupOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         xxxItems.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetSliceReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSliceReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSliceReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForNone: holder = ( |
            | 
            copy facet: holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facet = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facet: f = ( |
            | holder: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetSlotsUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSlotsUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent slotsUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSlotsUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSlotsUpdater.

CopyDowns:
globals generalCategoryModel parent slotsUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSlotsUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSlotsUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSlotsUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'slotsUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetsPushButton = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'mirror' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals objectPushButton copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () From: ( |
             {} = 'Comment: Do not use me!!
Use ui2Button instead.\x7fModuleInfo: Creator: globals us ide facetsPushButton.

CopyDowns:
globals objectPushButton. copyRemoveAllMorphs 
SlotsToOmit: mirror parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         formal.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         implicitFacetOrNil.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetsPushButton parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         copyFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: aFontSpec = ( |
            | 
            copy initFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: aFontSpec).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facets = ( |
            | 
            nil == formal ifTrue: [^ vector].
            formal childFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         initFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: aFontSpec = ( |
            | 
            (((formal: aFormal) style: aFontSpec) implicitFacetOrNil: implicitFacetOrNil) initialize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         initialize = ( |
            | 
            addMorph:  
              ((rowMorph copy beShrinkWrap color: color) borderWidth: 0) addMorphFirst:
                 (labelMorph copyLabel: name)
                              fontSpec: style.
            recolor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         labelMorph = ( |
            | us ide usLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         leftMouseDown: evt = ( |
            | 
            (evt sourceHand capabilitySet includes: capabilities pressButton) ifFalse: [ ^ self].
            isDown: true.
            evt sourceHand subscribeUntilAllUp: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | 
            facets isEmpty ifTrue: [us facets foyer] False: [facets first]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         morphTypeName = 'usIDEFacetsPushButton'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            implicitFacetOrNil isNotNil && [formal childFacets includes: implicitFacetOrNil] 
            ifTrue: '  '
             False: [formal oneLinerContentsString]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'objectPushButton' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sprout: evt = ( |
            | 
            evt isShiftDownForLeftShiftHack ifTrue: [sproutAll: evt] False: [sproutOne: evt]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sproutAll: evt = ( |
            | 
            evt sourceHand attach: (
              us ide facetEnumerationMorph copyFacets: facets Event: evt).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sproutOne: evt = ( |
             o.
            | 
            o: us ide facetModel outlinerFor: mirror InWorld: world.
            safelyDo: [
                o = root 
                  ifFalse: [evt sourceHand attach: o]
                     True: [ | p. hp |
                       p: o globalPosition.
                       hp: p + (10@0) "h globalPosition".
                       addActivity: 
                         (((positionAnimator copyTarget: o Seconds: 0.1) from: p) to: hp)
                         andThen:
                         (((positionAnimator copyTarget: o Seconds: 0.1) from: hp) to: p).
                ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide facetsPushButton).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (outlinerPreferences fontSpec)'
        
         style <- outlinerPreferences fontSpec.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: slots and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formalInSlotModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalInSlotModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalInSlotModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buildLocals = ( |
            | 
            ["maybe should use a separate object to hold these:
            a slots outliner!"
            localHolder do: [|:slot|
                   slot isArgument not
                 && [ slot value isReflecteeAssignment not ]
                 ifTrue: [ myOutliner addItem: selfSlotModel newOutlinerFor: slot]].
            self
            ].
            [xxx].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buttonIcon = ( |
            | equalsIcon).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         hasMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            referrent objectModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            referrent oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | 
            referrent slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide slotReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formalMorphColor = ( |
            | 
            facetMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formalSliceReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalSliceReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalSliceReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForOne: aFormal = ( |
            | 
            (copy formal: aFormal ) items: vector copyAddFirst: aFormal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formal = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formal: x = ( |
            | holder: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | formal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFacetOfFacetModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide parentFacetOfFacetModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( |
             {} = 'Comment: in progress: specializing to this particular use from
us ide pseudoSlotModel\x7fModuleInfo: Creator: globals us ide parentFacetOfFacetModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | 
            myOutliner delete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildLocals = ( |
            | 
            "no locals on regular slots--yet.
            would need to get them to update"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            referrent objectModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | 
            referrent slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            halt. us ide slotSliceReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         projectionMorph = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals carpetMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide projectionMorph.

CopyDowns:
globals carpetMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide projectionMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         initializePrototype = ( |
            | 
            color: (paint named: 'black').
            setWidth: 3 Height: 3).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'usProjectionMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'carpetMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'projectionMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | us ide projectionMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCatModelCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent categoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide pseudoCatModelCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent categoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide pseudoCatModelCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'categoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCatModelPseudoCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent pseudoCategoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide pseudoCatModelPseudoCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent pseudoCategoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide pseudoCatModelPseudoCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'pseudoCategoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCatModelSlotsUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent slotsUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide pseudoCatModelSlotsUpdater.

CopyDowns:
globals generalCategoryModel parent slotsUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide pseudoCatModelSlotsUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         modelPrototype = ( |
            | 
            error: 'should be using modelPrototypeForThing: t').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         modelPrototypeForThing: t = ( |
            | 
            t slotModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'slotsUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         selectorAndFormalsMorph = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals rowMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide selectorAndFormalsMorph.

CopyDowns:
globals rowMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Comment: Hack: use shorter font for facet than for keywords so that folded title looks good.
Too hard to line up keywords with arguments. -- dmu 6/13\x7fModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (fontSpec copyName: \'helvetica\' Size: 12 Style: \'\')'
        
         facetStyle <- fontSpec copyName: 'helvetica' Size: 12 Style: ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         implicitFacetOrNil.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide selectorAndFormalsMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addFormal: aFormal To: m = ( |
            | 
            aFormal isOptional ifTrue: [m addMorphLast: labelMorphLabeled: optionalFormalPrefix].
            m addMorphLast:  labelMorphLabeled: aFormal isPositional ifTrue: [slot nameForPositionalFormalAt: aFormal positionalIndex] False: [aFormal formalName].
            aFormal isOptional ifTrue: [m addMorphLast:  labelMorphLabeled: optionalFormalSuffix].

            aFormal childFacets isEmpty ifFalse: [
              m addMorphLast:  us ide facetsPushButton copyFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: facetStyle.
            ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addHzSpacerTo: m = ( |
            | 
            m addMorphLast: spacerMorph copyH: formalPrefixSpace Color: color).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addImplicitFormalsTo: m = ( |
             ifs.
             showSelfEvenInTheSameOutliner = bootstrap stub -> 'globals' -> 'true' -> ().
            | 
            ifs: slot implicitFormals.
            showSelfEvenInTheSameOutliner || [implicitFacetOrNil isNil] ifFalse: [
              ifs: ifs asSet copyFilteredBy: [|:f| f isReceiver not || [(f childFacets includes: implicitFacetOrNil) not]]
            ].
            ifs: ifs  asVector sort asList.
            ifs isEmpty ifTrue: [^self].
            m addMorphLast: labelMorphLabeled: implicitFormalsPrefix.
            [|:exit|
              addFormal: ifs first To: m.
              ifs removeFirst.
              ifs isEmpty ifTrue: exit.
              addHzSpacerTo: m.
            ] loopExit.
            m addMorphLast: labelMorphLabeled: implicitFormalsSuffix.
            addHzSpacerTo: m.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         build = ( |
             r.
             s.
             sel.
            | 
            beShrinkWrap.
            borderWidth: 0.
            removeAllMorphs.
            addMorph: buildTitle.
            centerJustify.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildFoldedTitle = ( |
             argCol.
             fns.
             outerRow.
             rcvrCol.
             sel.
             selCol.
            | 
            "build big old title:"
            " a row: rcvrCol sp selCol sp argCol sp argObjCol"

            outerRow: rowMorph copy topJustify beShrinkWrap borderWidth: 0.

            selCol: columnMorph copy beShrinkWrapHorizontally beFlexibleVertically rightJustify borderWidth: 0.
            argCol: selCol copy leftJustify.

            addImplicitFormalsTo: outerRow.

            (selector copyStr: slot selector) keywords
              with: slot explicitFormals asVector sort asList 
                Do: [ | :kw. :f. kwr. ar. |
                  kwr: outerRow copyRemoveAllMorphs centerJustify beFlexibleVertically.
                  kwr addMorphLast: labelMorphForTitle: kw, ' '.
                  selCol addMorphLast: kwr.
                  ar: outerRow copyRemoveAllMorphs centerJustify.
                  addFormal: f To: ar.
                  argCol addMorphLast: ar.
            ].


            outerRow addMorphLast: selCol.
            outerRow addMorphLast: argCol.

            outerRow colorAll: color.

            outerRow).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildLinearTitle = ( |
             fns.
             r.
             s.
             sel.
            | 
            r: rowMorph copy.
            r beShrinkWrap.
            r color: color.
            r borderWidth: 0.
            r centerJustify.

            addImplicitFormalsTo: r.
            s: slot selector.
            sel: selector copyStr: s.


            case
              if:   [sel isUnary]
              Then: [r addMorphLast: labelMorphForTitle: '  ', s]
              If:   [sel isBinary]
              Then: [
                r addMorphLast: labelMorphForTitle: '  ', s.
                addFormal: slot explicitFormals first To: r.
              ]
              Else: [ | args |
                args: slot explicitFormals asVector sort asList.

                sel keywords with: args Do: [ | :kw. :arg. |
                  r addMorphLast: labelMorphForTitle: '  ', kw, ' '.
                  addFormal: arg To: r.
              ].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildTitle = ( |
             r.
             t.
             w.
            | 
            r: buildLinearTitle.

            (selector copyStr: slot selector) isKeyword ifFalse: [ ^ r ].

            w:  process this hand ifNil: [ desktop worlds first ] IfNotNil: [ |:h| h world ].
            "use w for layout"
            r position: maxSmallInt half @ 0.
            w safelyDo: [ w addMorph: r ].
            t: r baseBounds width <= maxTitleWidth ifTrue: [ r ] False: [ buildFoldedTitle ].
            t safelyDo: [ t delete "so it can be munged without sema" ].
            t).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFor: anUsSlot ImplicitFacet: f = ( |
            | 
            ((copy slot: anUsSlot) implicitFacetOrNil: f) build).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         formalPrefixSpace = 10.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         implicitFormalsPrefix = '('.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         implicitFormalsSuffix = ')'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorphForTitle: str = ( |
            | 
            labelMorphLabeled: str Style: style copyStyle: 'bold').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorphLabeled: aString = ( |
            | 
            labelMorphLabeled: aString Style: style).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorphLabeled: aString Style: aStyle = ( |
            | 
            (us ide usLabelMorph copyLabel: aString) fontSpec: aStyle).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         maxTitleWidth = 300.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = ( |
            | 'selectorAndFormalsMorph').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         optionalFormalPrefix = '['.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         optionalFormalSuffix = ']'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'rowMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         setHeightWithoutLayout: h = ( |
             bbnds.
            | 
            changed.
            bbnds: baseBounds.
            resizeRect: rectangle copyX: bbnds origin
                                      Y: bbnds right@(bbnds foyer + h).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         setStyleOf: aMorph = ( |
            | 
            aMorph fontSpec: style.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide selectorAndFormalsMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         slot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (outlinerPreferences fontSpec)'
        
         style <- outlinerPreferences fontSpec.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotMorphColor = ( |
            | 
            paint copyRed: 0.774194 Green: 0.821114 Blue: 0.790811).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForOne: anUsSlot = ( |
            | 
            (copy slot: anUsSlot ) formals: anUsSlot formals asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formals = ( |
            | items).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formals: x = ( |
            | items: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slot: x = ( |
            | 
            holder: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotSliceGroupModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSliceGroupModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> () From: ( |
             {} = 'Comment: I represent a group of slots in a slice.
May contain subgroups. -- dmu 5/1\x7fModuleInfo: Creator: globals us ide slotSliceGroupModel.

CopyDowns:
globals generalSliceGroupModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSliceGroupModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            us ide slotSliceGroupOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSliceGroupModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = 'fix me in slotSliceGroupModel parent receiver'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide slotMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         titleString = ( |
            | 
            'An Us slot').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotSliceGroupOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceGroupOutliner copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSliceGroupOutliner.

CopyDowns:
globals sliceGroupOutliner. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupOutliner' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSliceGroupOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'usSlotSliceGroupOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceGroupOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotSliceReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSliceReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSliceReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForOne: aFormal = ( |
            | 
            (copy receiverFacet: aSlot receiverFacet ) slots: vector copyAddFirst: aSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiverFacet = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiverFacet: x = ( |
            | 
            holder: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slots = ( |
            | items).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slots: x = ( |
            | items: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotSlotsUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent slotsUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSlotsUpdater.

CopyDowns:
globals generalCategoryModel parent slotsUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide slotSlotsUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         modelPrototypeForThing: t = ( |
            | 
            t slotModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'slotsUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         things = ( |
            | 
            [xxx xxxxxx].  resend.things).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: editors\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usEvaluatorEditor = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals uglyTextEditorMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide usEvaluatorEditor.

CopyDowns:
globals uglyTextEditorMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide usEvaluatorEditor parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         doItEvent: evt ShouldPickUp: shouldPickUp = ( |
             context.
             parseTree.
             r.
             rr.
             slot.
            | 

            rr: target newResultReporterForEditingContentsIn: self Event: evt.
            target doItEvent: evt Text: text textInSelectionForExecution ShouldPickUp: shouldPickUp ReportResultTo: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         do_it_cmd: evt = ( |
            | 
            doItEvent: evt ShouldPickUp: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         get_it_cmd: evt = ( |
            | 
            doItEvent: evt ShouldPickUp: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'usEvaluatorEditor'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'uglyTextEditorMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         ui2_textField = ( |
            | us ide us_textField).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usEvaluatorEditor' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide usEvaluatorEditor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usLabelMorph = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals labelMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide usLabelMorph.

CopyDowns:
globals labelMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide usLabelMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> 'parent' -> () From: ( | {
         'Category: geometry\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         baseBounds = ( |
             w.
            | 
            w: width.
            (myBox isNil || [myBox width != w]) ifTrue: [|e|
                "Plain Self justifies (vertically) text assuming as many descents as ascents."
                "Mess about a bit to fix this. - dmu 6/13"
                e: descent asFloat * 0.7.
                myBox: (position - (0 @ (ascent + e) ceil asInteger)) ## (w @ (ascent + descent + e) ceil asInteger).
            ].
            myBox).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'usLabelMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'labelMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usLabelMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide usLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usMethodText = ( |
            | selfMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: editors\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         us_textField = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2_textField copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide us_textField.

CopyDowns:
globals ui2_textField. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide us_textField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         enclosingUsEvaluatorEditorIfNone: nb = ( |
             m.
            | 
            m: self.
            [ 
              m: m owner.
              m ifNil: [^ nb value].
              m morphTypeName = 'usEvaluatorEditor' ifTrue: [^ m].
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         get_it_cmd: evt = ( |
            | 
            "here only for command-g"
            (enclosingUsEvaluatorEditorIfNone: [^ self]) get_it_cmd: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'us_textField'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2_textField' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'us_textField' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            us ide us_textField).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorph = ( |
            | 
            (us ide slotModel newOutlinerFor: self InWorld: process this birthEvent sourceHand world) colorAll: us ide slotMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categories = ( |
            | [xxx]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoriesString = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         category = 'category in us slot slot parent unimplemented'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         exists = ( |
            | 
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         holder = ( |
            | receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isShowableAsMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            [xxx].
            selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            [xxx].
            selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
            | 
            list copyRemoveAll add: us ide formalParentFakeSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: event handling\x7fComment: If button down over the world, drag out a selection region\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         leftMouseDown: e = ( |
            | 
            us ide projectionMorph copyHand: e sourceHand.
            self).
        } | ) 



 '-- Side effects'

 globals modules usMorphs postFileIn
