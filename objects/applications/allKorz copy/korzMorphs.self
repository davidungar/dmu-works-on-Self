 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         objectTitleFontSpec = ( |
            | fontSpec copyName: 'times' Size: titleFontSize Style: 'bold').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         subcategoryTitleFontSpec = ( |
            | fontSpec copyName: 'times' Size: titleFontSize - 2 Style: 'italic').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalLeafModel' -> 'parent' -> () From: ( | {
         'Category: contents label\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         contentsLabelFontSpec = ( |
            | 
            fontSpec copyName: 'times' 
                         Size: outlinerPreferences mediumFontSize 
                        Style: 'italic').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalModel' -> 'parent' -> () From: ( | {
         'Category: dropping\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         justDroppedInto: w Event: evt = ( |
            | 
              "Widen the border if dropped onto the world"
            w isWorldMorph ||  [w isKorzSimplificationMorph]  ifFalse: [^ shedOuterSkin: evt].
            willInsertMyselfWhenDropped ifTrue: [^ turnIntoObjectForWorld: w Event: evt].
            growOuterSkin: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (14)\x7fVisibility: private'
        
         titleFontSize <- 14.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'generalModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         titleFontSpec = ( |
            | fontSpec copyName: 'times' Size: titleFontSize Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         asList = ( |
            | 
            (list copyRemoveAll addAll: korzParentFormals) addAll: korzParentFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorph = ( |
            | 
            korz ide facetModel newOutlinerFor: self InWorld: process this birthEvent sourceHand world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorphOld = ( |
             b.
             lbl.
             n.
             r.
            | 
            n: asMirror name.
            lbl: labelMorph copy label: n.
            r: ((korz ide facetMorph copy color: korz ide facetMorphColor) radius: 20) addMorph: lbl.
            r myFacet: self.
            [lbl position: r bounds center x negate @ lbl position y.].
            lbl position: lbl position - ((lbl bounds center x half + r radius) @ lbl bounds height negate half).
            b: leafPointerButton copy.
            b buttonActionObject target: r.
            b colorAll: korz ide facetMorphColor.
            b position: b position - b bounds center - (2@2).
            r addMorph: b.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         comment = 'comment in korz facet parent unimplemented'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         fakeParentFacetSlotsDo: blk = ( |
            | 
            korzParentFacets asVector do: [|:facet. :i| 
              blk value:  korz ide facetParentFakeSlot copyChild: self Parent: facet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         fakeParentFormalSlotsDo: blk = ( |
            | 
            (korz ide consolidatedFormalsParentSlot copyForAllFormalsIn: self) do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         fakeSlots = ( |
             r.
            | 
            r: list copyRemoveAll.
            fakeSlotsDo: [|:s| r addLast: s].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         fakeSlotsDo: block = ( |
            | 
            fakeParentFacetSlotsDo: block.
            fakeParentFormalSlotsDo: block.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isShowableAsMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         moduleSummaryString = 'no moduleSummaryString in korz facet parent'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
             r.
            | 
            r: list copyRemoveAll.
            korzParentFacets  isEmpty ifFalse: [ r add: korz ide facetParentFakeSlot].
            korzParentFormals isEmpty ifFalse: [ r add: korz ide consolidatedFormalsParentSlot].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            korz ide facetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            childFacets isEmpty ifTrue: [^korz facets foyer nameSize: 20].
            childFacets size = 1  ifTrue: [childFacets first ifNil: [^ 'What?!?!? ', objectID printString ]. ^ childFacets first nameSize: 20].
            ( (childFacets findFirst: [|:f| f isWellKnown] IfPresent: [|:f| f] IfAbsent: [childFacets first])
             nameSize: 20), ', etc.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            korz ide formalInSlotModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         ide = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractFakeSlot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide abstractFakeSlot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         childFacet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide abstractFakeSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         evalStringAssignable = ( |
            | slot evalStringAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         holder = ( |
            | childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isAnActivationSlot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isFacetParent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            key).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'fakeSlot' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         areActivationSlotsShown = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: enumerators\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         browse = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browse' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide browse.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browse' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         allFacets = ( |
            | 
            ((browse descendantsOf: korz facet parent) asList copyFilteredBy: [|:fm| fm isComplete])
              copyMappedBy: [|:fm| fm reflectee]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browse' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         childrenOfFacet: f = ( |
            | 
            allFacets asList copyFilteredBy: [|:ff| ff korzParentFacets includes: f]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browse' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: enumerators\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         browseWellKnown = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browseWellKnown' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide browseWellKnown.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browseWellKnown' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         childrenOfFacet: f = ( |
            | 
            (resend.childrenOfFacet: f) asList copyFilteredBy: [|:ff| ff isWellKnown]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browseWellKnown' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'browse' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categoryReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals categoryReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide categoryReferrent.

CopyDowns:
globals categoryReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         facet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide categoryReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForMirror: m CategoryList: l = ( |
            | 
            ((copy mirror: m) categoryList: l)
              categoriesString: traits cachedSlotAnnotation convertCategoryListToString: l).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror: x = ( |
            | facet: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'categoryReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'categoryReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: slots and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         acceptContents: str Editor: ed Event: evt = ( |
             rr.
            | 
            rr: newResultReporterForEditingContentsIn: ed Event: evt.
            korz operations evaluateStringAsNewMethodContents: str
                                                      OldSlot: slot
                                               ReportErrorsTo: rr.
            finishChangingContents: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing whole thing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         acceptEditWholeThing: str Editor: ed Event: evt = ( |
             newSlot.
             rr.
            | 
            rr: newResultReporterForEditingContentsIn: ed Event: evt.
            newSlot: korz operations evaluateStringAsSlotDeclaration: str
                                                             OldSlot: slot
                                                      ReportErrorsTo: rr.
            finishChangingWholeThing: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: building the header\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addInSituButtonToHeader = ( |
            | 
            addSpacerWhereInSituButtonWouldGo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: building the header\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addSpacerWhereInSituButtonWouldGo = ( |
            | 
            safelyDo: [
              myOutliner header addMorphLast:
                spacerMorph copyH: methodIcon width Color: myOutliner color.
             ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: locals\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildLocals = ( |
            | 
            "no locals on regular slots--yet.
            would need to get them to update"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: building the header\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildSlotTitle = ( |
            | 
            myOutliner titleEditor: (korz ide selectorAndFormalsMorph copyFor: mirror ImplicitFacet: enclosingFacet) colorAll: myOutliner color.
            myOutliner titleEditor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonDescriptions = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () ToBe: bootstrap addSlotsTo: (
             globals generalSlotModel parent buttonDescriptions _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotModel parent buttonDescriptions.

CopyDowns:
globals generalSlotModel parent buttonDescriptions. _Clone

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: Get Self object\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         getSelfObject = ( |
            | 
            target model getSelfObject: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: programming environment\x7fCategory: makeing creator\x7fCategory: Make creator\x7fComment: Make me be the creator of my contents and
deal with the ancilliary info. -- dmu 6/1\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         makeCreator = ( |
            | 
            target model slot setKorzCreatorSlotHint.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: Remove slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeSlot = ( |
            | 
            target model removeSlot: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: programming environment\x7fCategory: makeing creator\x7fCategory: Unmake Creator\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         unmakeCreator = ( |
            | 
            target model slot resetKorzCreatorSlotHint. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
             bs.
            | 
            bs: ('edit' & 'getSelfObject' & 'removeSlot' & nil) asList.
            slot isWorthAskingAboutCreator ifTrue:  [
              bs addLast: slot isCreator ifFalse: 'makeCreator' True: 'unmakeCreator'.
              bs addLast: nil.
            ].
            bs, resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         enclosingFacet = bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getSelfObject: evt = ( |
            | 
            evt sourceHand attach: selfObjectModel outlinerFor: mirror asMirror InWorld: evt sourceHand world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzFacetModel = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorph = ( |
            | korz ide korzLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         methodString = ( |
            | 
            methodTextWithSlots asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            korz ide korzMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithSlots = ( |
            | 
            (methodText copyForMethod: method) formatMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithoutSlots = ( |
             m.
            | 
            m: methodText copyForMethod: method.
            m formatMethodBodyWithoutSlots.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         newOutlinerFor: x InWorld: y = ( |
             r.
            | 
            r: resend.newOutlinerFor: x InWorld: y.
            [xxx].
            [y reifiedObjects includesKey: x] assert.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            korz ide facetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            hasMethod not && [slot exists && [slot value isNil]]
              ifTrue: [^ 'slot ', slot objectID printString, ' exists but has nil value'].
            resend.oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: appearance\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         preferredColor = ( |
            | 
            korz ide slotMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pseudoCategories = ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeSlot: evt = ( |
            | 
            slot vaporize.
            myOutliner animatedDelete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: appearance\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: korz ide slotMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         shouldWrapMeWhenGrowingSkin = ( |
            | 
            [xxx]."must be false" false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fComment: Slots shown at foyer level in me,
filtering out assignment slots if so prefered.
-- Ungar, 2/4/95\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         shownSlotsInMe = ( |
            | 
            "The isFake part is to ensure that indexable slots in Klein maps are shown
              -- dmu 3/04"
            [slotsInMe asList copyFilteredBy: [|:s|  s isFake ||  [ s isAssignment not ] ]].
            vector "no shown slots; they appear in the header").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            korz ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            korz ide slotReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotsInMirror = ( |
            | 
            mirror formalsInSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | korz ide slotSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         unprotectedFinishChangingContents: rr = ( |
            | 
            rr result ifNil: [ ^ self ].
            rr editor owner owner clearPanel.
            rebindMyOutlinerToResultIn: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing whole thing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         unprotectedFinishChangingWholeThing: rr = ( |
            | 
            rr result ifNil: [ ^ self ].
            myOutliner doneEditingWholeThing.
            rebindMyOutlinerToResultIn: rr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateMyOutlinerAfterRemovingMySlot = ( |
            | 
            myOutliner animatedDelete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: formals in facets\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         consolidatedFormalsModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide slotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide consolidatedFormalsModel.

CopyDowns:
globals korz ide slotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide consolidatedFormalsModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: facet = ( |
            | 
            myOutliner delete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         enclosingFacet = ( |
            | referrent childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         outlinerForSprouting: evt IfNone: nb = ( |
            | 
            error: 'moved to sprout:WithArrow:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerForSproutingFacet = ( |
            | korz ide facetModel outlinerFor: slot contents InWorld: myOutliner world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerForSproutingSlot = ( |
            | 
            korz ide slotModel outlinerFor: slot InWorld: myOutliner world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            korz ide consolidatedFormalsOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         preferredColor = ( |
            | korz ide formalMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         rebindMyOutlinerToResultIn: rr = ( |
            | 
            myOutliner enclosingOutlinerIfPresent: [|:o| o safelyDo: [myOutliner delete. o update]]
                                         IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         shouldSproutSlot: evt = ( |
            | 
            evt isShiftDownForLeftShiftHack).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | 
            referrent ifNil: [^ nil].
            referrent slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         sprout: evt = ( |
            | 
            case
              if:  ( shouldSproutSlot: evt )   Then: [  sprout: 'slot'  WithArrow: evt  ]
              If:  [ hasMethod not         ]   Then: [  sprout: 'facet' WithArrow: evt  ]
                                               Else: [  toggleExpandState:         evt  ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateArrow = ( |
             isFacet.
             o.
            | 
            isFacet: myOutliner expander target joineeOrNil model isKorzFacetModel.
            o: isFacet && [slot isData]
              ifTrue: [ outlinerForSproutingFacet ]
               False: [ outlinerForSproutingSlot  ].
            myOutliner expander target joineeOrNil = o ifTrue: [^ self].
            myOutliner expander target tailMorph collapse.
            sprout: (isFacet ifTrue: 'facet' False: 'slot') WithArrow: process this birthEvent.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> 'parent' -> () From: ( | {
         'Category: changing anything\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateMyOutlinerAfterRemovingMySlot = ( |
            | 
            myOutliner enclosingOutlinerIfPresent: [|:o| o safelyDo: [o update]]
                                         IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'model' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals pluggableLeafOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotOutliner.

CopyDowns:
globals pluggableLeafOutliner. copyRemoveAllMorphs 
SlotsToOmit: model parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> () From: ( | {
         'Category: Pluggable Outliner State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (korz ide slotModel)\x7fVisibility: private'
        
         model <- bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         labelMorph = ( |
            | korz ide korzLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzIDESlotOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'pluggableLeafOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         updateTitle = ( |
            | 
            titleEditor update.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide slotOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         consolidatedFormalsOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'model' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals korz ide slotOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide consolidatedFormalsOutliner.

CopyDowns:
globals korz ide slotOutliner. copyRemoveAllMorphs 
SlotsToOmit: model parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( | {
         'Category: Pluggable Outliner State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (korz ide consolidatedFormalsModel)\x7fVisibility: private'
        
         model <- bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsModel' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide consolidatedFormalsOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'Category: type tests\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'consolidatedFormalsOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         sproutWithArrow: evt = ( |
            | 
            [sprout: 0 WithArrow: evt. ]. "browsing"
            error: 'This functionality was moved to the model side.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'Category: sprouting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateArrow = ( |
             mt.
             o.
            | 
            expander target isRetracted ifTrue: [^ self].
            expander target joineeOrNil ifNil:  [^ self].
            model updateArrow.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         yankOutliner: event = ( |
             o.
            | 
            o: model outlinerForSproutingSlot.
            delete.
            event sourceHand attach: o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         prototype = ( |
            | korz ide consolidatedFormalsOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         consolidatedFormalsParentSlot = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide abstractFakeSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide consolidatedFormalsParentSlot.

CopyDowns:
globals korz ide abstractFakeSlot. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         consolidatedFormals <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide consolidatedFormalsParentSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         = slotOrConsolidatedFormalsParentSlot = ( |
            | 
            asKorzSlot = slotOrConsolidatedFormalsParentSlot asKorzSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         annotation = ( |
             lastCatPart.
            | 

            true ifTrue: [^ slotAnnotation copyForCategory: 'Slots'].

            lastCatPart:  formal isNil ifTrue: 'Fix this in korz ide formalParentFakeSlot annotation' 
                                        False: [formal mySlot selector].
            slotAnnotation copyForCategories: ('Slots' & lastCatPart) asList.
            [qqq "above doesn't work"].
            false ifTrue: [slotAnnotation copyForCategory: lastCatPart]
                   False: slotAnnotation copyForCategory: 'Slots').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzSlot = ( |
            | slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         ast = ( |
            | slot ast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         compare: slotOrConsolidatedFormalsParentSlot IfLess: lt Equal: eq Greater: gt = ( |
            | 
            asKorzSlot compare: slotOrConsolidatedFormalsParentSlot asKorzSlot IfLess: lt Equal: eq Greater: gt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy consolidatedFormals: consolidatedFormals copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAllFormalsIn: facet = ( |
            | 
            [david].
            ((
            facet parentFormalsBySlotFilteredBy: [|:f| true "f isNotPositional"])
              copyMappedBy: [|:formals. :slot|
                (copy childFacet: facet) consolidatedFormals: formals
              ]
            ) asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | copy removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         couldBeMatchedBy: aFormal = ( |
            | slot couldBeMatchedBy: aFormal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         counterfactualizedFormals = ( |
            | slot counterfactualizedFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         dimensionNames = ( |
            | slot dimensionNames).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         exists = ( |
            | 
            existsInChildFacetOfFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         existsInChildFacetOfFormals = ( |
            | 
            consolidatedFormals isEmpty ifTrue: [^ false].
            childFacet ifNil: [^ false].
            consolidatedFormals findFirst: [|:f| (childFacet hasParentFormal: f) not]
                    IfPresent: false
                     IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         explicitFormals = ( |
            | slot explicitFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formalNamesString = ( |
             concat.
             fs.
             implicitNames.
             ir <- ''.
             pr <- ''.
             r.
             sr <- ''.
            | 
            fs: set copyRemoveAll addAll: consolidatedFormals.
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
                   [f mySlot isData ] assert.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsInSlot = ( |
            | slot formalsInSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         holder = ( |
            | childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         implicitFormals = ( |
            | slot implicitFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isAnActivationSlot = ( |
            | 
            consolidatedFormals anySatisfy: 
                [ | :f1 |  f1 mySlot isAnActivationSlot. ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isAssignable = ( |
            | 
            slot isAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isAssignment = ( |
            | 
            slot isAssignment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isMethod = ( |
            | 
            slot isMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiverTheOnlyFormal = ( |
            | 
            consolidatedFormals size = 1 ifFalse: [^ false].
            consolidatedFormals first isReceiver).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | 
            selector, 
            (isReceiverTheOnlyFormal ifTrue: ''  False: [' (', formalNamesString, ')'])).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         nameForPositionalFormalAt: i = ( |
            | slot nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         objectModelProto = ( |
            | 
            korz ide slotModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         oneLinerContentsString = ( |
            | 
            (slotIfFail: [^ 'No slot?']) oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fCategory: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         receiver = ( |
            | 
            slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: copying and resetting\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            consolidatedFormals removeAll. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         selector = ( |
            | (slotIfFail: [^ 'slot failed in selector']) selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = ( |
            | 
            slotIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotIfFail: fb = ( |
             slots.
            | 
            slots: self slots.
            case if: ( slots size = 0 )  Then:  [ fb value: 'no slots?' ]
                 If: [ slots size = 1 ]  Then:  [ slots first ]
                                         Else:  [ fb value: 'multiple slots?']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            korz ide consolidatedFormalsModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         slots = ( |
            | 
            korz slots slotsFromFormals: consolidatedFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         valueIfFail: fb = ( |
            | 
            exists ifTrue: [slot] False: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'consolidatedFormalsParentSlot' -> 'parent' -> () From: ( | {
         'Category: forward to slot\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         vaporize = ( |
            | slot vaporize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ korz ide facetModel getUndispatchedFacetEvent: event] )
                   label: 'Get Undispatched slots' )
            ToGroup: 'applications'.

            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ korz ide facetModel getFoyerFacetEvent: event] )
                   label: 'Get Foyer slots' )
            ToGroup: 'applications'.

            [
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ korz tests ide copyRun] )
                   label: 'Test Korz IDE' )
            ToGroup: 'applications'.
            ].

            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ korz ide simplificationMorph copyIntoHand: event sourceHand] )
                   label: 'Get Simplification Morph' )
            ToGroup: 'applications'.

            [
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ event sourceHand attach:  
                                    korz ide facetModel newOutlinerFor: (korz worldMaker demos d2_add_assertions makeAndGet: 'stack1') 
                                                               InWorld: event sourceHand world] )
                   label: 'Get a new stack1' )
            ToGroup: 'applications'.
            ].

            [
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ event sourceHand attach:  
                                    korz ide facetModel newOutlinerFor: (korz worldMaker demos d2_add_assertions makeAndGet: 'stack2') 
                                                               InWorld: event sourceHand world] )
                   label: 'Get a new stack2' )
            ToGroup: 'applications'.
            ].

            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [ event sourceHand attach: korz ide demoMenu copy addDemoButtons] )
                   label: 'Get a new demo menu' )
            ToGroup: 'applications'.


            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent categoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent categoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'categoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetChildrenMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals childrenMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetChildrenMorph.

CopyDowns:
globals childrenMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetChildrenMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         action = ( |
            | 
            browseAndFilter childrenOfFacet: mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         browse = ( |
            | korz ide browse).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         browseWellKnown = ( |
            | korz ide browseWellKnown).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         morphTypeName = 'korzIDEFacetChildrenMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         objectAt: index = ( |
            | 
            korz ide facetModel outlinerFor: (result at: index) InWorld: world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'childrenMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetChildrenMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide facetChildrenMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetEnumerationMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'mirror' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             bootstrap remove: 'result' From:
             globals mirrorEnumerationMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetEnumerationMorph.

CopyDowns:
globals mirrorEnumerationMorph. copyRemoveAllMorphs 
SlotsToOmit: mirror parent prototype result.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetEnumerationMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFacets: facets Event: evt = ( |
            | 
            (copy result: facets asVector) expand: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         morphTypeName = 'korzIDEFacetEnumerationMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         objectAt: index = ( |
            | 
            korz ide facetModel outlinerFor: (result at: index) InWorld: world).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'mirrorEnumerationMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         titleString = ( |
            | 
            'Enumeration of ', result size printString, ' facets').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide facetEnumerationMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetEnumerationMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         result <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         facetOrFacetCategoryModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetOrFacetCategoryModel.

CopyDowns:
globals generalCategoryModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetOrFacetCategoryModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isKorzFacetModel = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         shownSlotsInMe = ( |
             r.
            | 
            r: resend.shownSlotsInMe.
            korz ide areActivationSlotsShown ifFalse: [r: r copyFilteredBy: [|:s| s isAnActivationSlot not]].
            myOutliner enclosingKorzSimplificationMorphIfPresent: [|:m| r copyFilteredBy: [|:s| m includeSlot: s]] IfAbsent: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            korz ide consolidatedFormalsModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide facetOrFacetCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetModel.

CopyDowns:
globals korz ide facetOrFacetCategoryModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addChild: evt = ( |
             f.
             n.
            | 
            n: userQueryMorph askString: 'Name of new facet?' DefaultAnswer: 'bankAccount' Event: evt.
                 (korz facets includesWellKnownFacetNamed: n) not 
            || [ userQueryMorph askYesNo: n, ' already exists. Zap it?' Event: evt]  ifTrue: [
              korz facets addWellKnownFacetNamed: n.
            ].
            f: korz facets facetNamed: n.
            f addKorzParentFacet: facet.
            evt sourceHand attach:  korz ide facetModel outlinerFor: f InWorld: evt sourceHand world.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
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

            ed: korz ide korzEvaluatorEditor copyString: '' Style: evaluatorStyle.
            [david fonts].
            ed text fontSpec: fontSpec copyName: 'Courier' Size: outlinerPreferences mediumFontSize.
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         allModelsBeForFacet: newFacet = ( |
            | 
            myOutliner allMorphsDo: [|:m| m isPluggableOutliner && [m model isKorzModel] ifTrue: [ m model beForFacet: newFacet]].
            myOutliner safelyDo: [myOutliner update].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | referrent: newFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         buttonDescriptions = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () ToBe: bootstrap addSlotsTo: (
             globals generalCategoryModel parent buttonDescriptions _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetModel parent buttonDescriptions.

CopyDowns:
globals generalCategoryModel parent buttonDescriptions. _Clone

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: adding\x7fCategory: Add child\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addChild = ( |
            | 
            target model addChild: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Children\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         children = ( |
            | target model children: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Copied-Down Children\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         copiedDownChildren = ( |
            | target model copiedDownChildren: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Copy-Down Parent(s)\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         copyDownParents = ( |
            | 
            target model copyDownParents: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Find Slot...\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         findSlot = ( |
            | target model findSlot: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Get Self object\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         getSelfObject = ( |
            | target model getSelfObject: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Find Missing Slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         missingSlots = ( |
            | 
            target model missingSlots: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetModel parent buttonDescriptions parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: References\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         references = ( |
            | target model references: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: power operations\x7fCategory: Remake the World\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         remakeTheWorld = ( |
            | 
            0 userQueryMorph show: 'remaking the world' While: [target model remakeTheWorld] Event: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Show Traits Family\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         showTraitsFamily = ( |
            | target model showTraitsFamily: event).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         buttonsToPutInMenu = ( |
            | 
            (referrent == korz facets foyer ifTrue: [('remakeTheWorld' & nil) asVector] False: vector),
            ('addChild'  &  nil & 'children' & 'getSelfObject' &  nil) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categoriesUpdater = ( |
            | 
            korz ide facetCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categoryReferrentProto = ( |
            | korz ide categoryReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         children = ( |
            | 
            halt: 'used?'.
            evt sourceHand attach: (
              korz ide facetChildrenMorph copyMirror: mirror Event: evt).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         children: evt = ( |
            | 
            evt sourceHand attach: (
              korz ide facetChildrenMorph copyMirror: mirror Event: evt).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         evaluatorStyle = ( |
            | 
            evaluatorStyleProto copyModel: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         evaluatorStyleProto = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'evaluatorStyleProto' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalModel parent styleProto copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'evaluatorStyleProto' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetModel parent evaluatorStyleProto.

CopyDowns:
globals generalModel parent styleProto. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> 'evaluatorStyleProto' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'selfObjectModel' -> 'parent' -> 'evaluatorStyleProto' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facet = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getFoyerFacetEvent: evt = ( |
             o.
            | 
            o: newOutlinerFor: korz facets foyer InWorld: evt sourceHand world.
            evt sourceHand attach: o.
            o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getSelfObject: evt = ( |
            | 
            evt sourceHand attach: evt sourceHand world outlinerForMirror: receiver asMirror.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         getUndispatchedFacetEvent: evt = ( |
            | 
            evt sourceHand attach: newOutlinerFor: korz facets undispatched InWorld: evt sourceHand world.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         headerButtonContents = ( |
            | 
            [showParents: e. addEvaluator: e].
            (
            ('/\\' @ 'target model showParents:  event') &
            ('E'   @ 'target model addEvaluator: event') &
            dismissButtonContents
            ) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzFacetModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pseudoCategoriesUpdater = ( |
            | 
            korz ide facetPseudoCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         remakeTheWorld = ( |
             oldFoyer.
            | 
            oldFoyer: korz facets foyer.
            korz worldMaker makeVM.
            allModelsBeForFacet: korz facets foyer.
            myOutliner world reifiedObjects at: korz facets foyer Put: myOutliner.
            korz worldMaker makeNonVM.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: korz ide facetMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         showParents: evt = ( |
            | 
            mirror korzParentFacets do: [|:s|
              evt sourceHand attach:  
              korz ide facetModel outlinerFor: s
                                    InWorld: evt sourceHand world
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            korz ide facetSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            korz ide facetSliceReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotsInMeAndSubcategories = ( |
            | [xxx]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotsInMirror = ( |
            | 
            [david hack].
            referrent == korz facets undispatched ifFalse:  vector True: [
            korz slotHeap allPossibleUndispatched]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | 
            korz ide facetSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         titleString = ( |
            | 
            mirror ifNil: [^ 'mirror is nil in facetModel (', objectID printString, ')>>titleString'].
            mirror korzName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetMorphColor = ( |
            | 
            paint copyRed: 0.778103 Green: 0.828934 Blue: 0.835777).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetParentFakeSlot = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide abstractFakeSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetParentFakeSlot.

CopyDowns:
globals korz ide abstractFakeSlot. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetParentFakeSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         annotation = ( |
            | 
            slotAnnotation parse: 'Category: Parent Facets').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         copyChild: cf Parent: pf = ( |
            | 
            (copy childFacet: cf ) parentFacet: pf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         dimensionNames = ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         exists = ( |
            | 
            childFacet hasParentFacet: parentFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isFacetParent = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            parentFacet name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            korz ide facetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            value korzName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | 
            korz ide parentFacetOfFacetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         value = ( |
            | exists ifTrue: [parentFacet] False: [korz facet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         valueIfFail: fb = ( |
            | 
            exists ifTrue: [parentFacet] False: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetParentFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         parentFacet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetPseudoCatModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide facetOrFacetCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetPseudoCatModel.

CopyDowns:
globals korz ide facetOrFacetCategoryModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetPseudoCatModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | 
            referrent facet: newFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: menu\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            ('addSlot' & nil) asVector,
            resend.buttonsToPutInMenu).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categoriesUpdater = ( |
            | 
            korz ide pseudoCatModelCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isPseudoCategoryModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | categoryReferrent mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetOrFacetCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pseudoCategoriesUpdater = ( |
            | 
            korz ide pseudoCatModelPseudoCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: menu commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | referrent facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: contents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsInMirror = ( |
            | 
            fakeSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | 
            korz ide pseudoCatModelSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetPseudoCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent pseudoCategoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetPseudoCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent pseudoCategoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetPseudoCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         modelPrototype = ( |
            | 
            korz ide facetPseudoCatModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetPseudoCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'pseudoCategoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetSliceGroupModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSliceGroupModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> () From: ( |
             {} = 'Comment: I represent a group of slots in a slice.
May contain subgroups. -- dmu 5/1\x7fModuleInfo: Creator: globals korz ide facetSliceGroupModel.

CopyDowns:
globals generalSliceGroupModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSliceGroupModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         itemUpdaters = ( |
            | 
            [xxx]. resend.itemUpdaters).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            korz ide facetSliceGroupOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSliceGroupModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: korz ide facetMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         titleString = ( |
            | 
            referrent isNil ifTrue: [^''].
            referrent facet printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetSliceGroupOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'model' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals sliceGroupOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSliceGroupOutliner.

CopyDowns:
globals sliceGroupOutliner. copyRemoveAllMorphs 
SlotsToOmit: model parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'Category: Pluggable Outliner State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (korz ide facetSliceGroupModel)\x7fVisibility: private'
        
         model <- bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupModel' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSliceGroupOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'facetSliceGroupOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceGroupOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide facetSliceGroupOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         xxxItems.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetSliceReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSliceReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSliceReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForNone: holder = ( |
            | 
            copy facet: holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facet = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facet: f = ( |
            | holder: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetSlotsUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent slotsUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSlotsUpdater.

CopyDowns:
globals generalCategoryModel parent slotsUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetSlotsUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         modelPrototype = ( |
            | 
            [david hack].
            outlinerToUpdate model referrent == korz facets undispatched ifFalse: [resend.modelPrototype] True: [korz ide slotModel]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         modelPrototypeForThing: t = ( |
            | 
            [david hack].
            outlinerToUpdate model referrent == korz facets undispatched ifFalse: [resend.modelPrototypeForThing: t] True: [korz ide slotModel]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'slotsUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         facetsPushButton = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'mirror' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals objectPushButton copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () From: ( |
             {} = 'Comment: Do not korze me!!
Korze ui2Button instead.\x7fModuleInfo: Creator: globals korz ide facetsPushButton.

CopyDowns:
globals objectPushButton. copyRemoveAllMorphs 
SlotsToOmit: mirror parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         formal.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         implicitFacetOrNil.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide facetsPushButton parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         copyFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: aFontSpec = ( |
            | 
            copy initFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: aFontSpec).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facets = ( |
            | 
            nil == formal ifTrue: [^ vector].
            formal childFacets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         initFormal: aFormal ImplicitFacetOrNil: implicitFacetOrNil Style: aFontSpec = ( |
            | 
            (((formal: aFormal) style: aFontSpec) implicitFacetOrNil: implicitFacetOrNil) initialize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         initialize = ( |
            | 
            addMorph:  
              ((rowMorph copy beShrinkWrap color: color) borderWidth: 0) addMorphFirst:
                 (labelMorph copyLabel: name)
                              fontSpec: style.
            recolor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         labelMorph = ( |
            | korz ide korzLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         leftMouseDown: evt = ( |
            | 
            (evt sourceHand capabilitySet includes: capabilities pressButton) ifFalse: [ ^ self].
            isDown: true.
            evt sourceHand subscribeUntilAllUp: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | 
            facets isEmpty ifTrue: [korz facets foyer] False: [
              ownerFacetOutlinerIfPresent: [|:o| o model referrent]
              IfAbsent: [facets first]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         morphTypeName = 'korzIDEFacetsPushButton'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            implicitFacetOrNil isNotNil && [formal childFacets includes: implicitFacetOrNil] 
            ifTrue: '  '
             False: [formal oneLinerContentsString]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         ownerFacetOutlinerIfPresent: pb IfAbsent: ab = ( |
             m.
            | 
            m: self.
            [m isNil] whileFalse: [
              m isKorzMorph && [m isPluggableOutliner && [m model isKorzFacetModel  &&  [facets includes: m model referrent]]]
                ifTrue: [^ pb value: m].
              m: m owner.
            ].
            ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'objectPushButton' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sprout: evt = ( |
            | 
            evt isShiftDownForLeftShiftHack ifTrue: [sproutAll: evt] False: [sproutOne: evt]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sproutAll: evt = ( |
            | 
            evt sourceHand attach: (
              korz ide facetEnumerationMorph copyFacets: facets Event: evt).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sproutOne: evt = ( |
             o.
            | 
            o: korz ide facetModel outlinerFor: mirror InWorld: world.
            safelyDo: [
                ownerFacetOutlinerIfPresent: [|:oo. p. hp |
                  p: o globalPosition.
                  hp: p + (10@0) "h globalPosition".
                  o addActivity: 
                    (((positionAnimator copyTarget: oo Seconds: 0.1) from: p) to: hp)
                    andThen:
                    (((positionAnimator copyTarget: oo Seconds: 0.1) from: hp) to: p).
              ]
              IfAbsent: [evt sourceHand attach: o]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide facetsPushButton).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'facetsPushButton' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (outlinerPreferences fontSpec)'
        
         style <- outlinerPreferences fontSpec.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: slots and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formalInSlotModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide formalInSlotModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide formalInSlotModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         buttonIcon = ( |
            | equalsIcon).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         hasMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            referrent objectModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            referrent oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | 
            referrent slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            korz ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalInSlotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            korz ide slotReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         formalMorphColor = ( |
            | 
            facetMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         formalSliceReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide formalSliceReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide formalSliceReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForOne: aFormal = ( |
            | 
            (copy formal: aFormal ) items: vector copyAddFirst: aFormal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         formal = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         formal: x = ( |
            | holder: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | formal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'formalSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: editors\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         korzEvaluatorEditor = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals uglyTextEditorMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzEvaluatorEditor.

CopyDowns:
globals uglyTextEditorMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzEvaluatorEditor parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         doItEvent: evt ShouldPickUp: shouldPickUp = ( |
             context.
             ctx.
             parseTree.
             r.
             rr.
             slot.
            | 

            rr: target newResultReporterForEditingContentsIn: self Event: evt.
            ctx: korz dispatchContextForReceiver: target receiver.
            ctx: enclosingKorzSimplificationMorphIfPresent: [|:m| ctx copyAddAll: m contextForEvaluation] IfAbsent: [ctx].
            korz operations evaluateStringAsEvaluatorContents: text textInSelectionForExecution
                                                           In: ctx
                                               ReportErrorsTo: rr.
            rr result ifNil: [^ self].
            shouldPickUp ifTrue: [pickUp: rr result Event: evt].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         do_it_cmd: evt = ( |
            | 
            doItEvent: evt ShouldPickUp: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         get_it_cmd: evt = ( |
            | 
            doItEvent: evt ShouldPickUp: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzEvaluatorEditor'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'uglyTextEditorMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pickUp: aFacet Event: evt = ( |
             h.
             result.
            | 
            result: korz ide facetModel  outlinerFor: aFacet InWorld: world.
            h: evt sourceHand.
            safelyDo: [
                result = target myOutliner root
                  ifFalse: [h attach: result]
                     True: [ | p. hp |
                       p: result globalPosition.
                       hp: p + (10@0) "h globalPosition".
                       target myOutliner addActivity: 
                         (((positionAnimator copyTarget: result Seconds: 0.1) from: p) to: hp)
                         andThen:
                         (((positionAnimator copyTarget: result Seconds: 0.1) from: hp) to: p).
                ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         ui2_textField = ( |
            | 
            korz ide korz_textField).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzEvaluatorEditor' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide korzEvaluatorEditor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         korzLabelMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals labelMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzLabelMorph.

CopyDowns:
globals labelMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzLabelMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> 'parent' -> () From: ( | {
         'Category: geometry\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzLabelMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'labelMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLabelMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide korzLabelMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         korzMethodText = ( |
            | selfMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: editors\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         korz_textField = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals ui2_textField copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korz_textField.

CopyDowns:
globals ui2_textField. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korz_textField parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         enclosingKorzEvaluatorEditorIfNone: nb = ( |
             m.
            | 
            m: self.
            [ 
              m: m owner.
              m ifNil: [^ nb value].
              m morphTypeName = 'korzEvaluatorEditor' ifTrue: [^ m].
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         fontSpec: fs = ( |
            | 
            resend.fontSpec: fs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> 'parent' -> () From: ( | {
         'Category: execution commands\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         get_it_cmd: evt = ( |
            | 
            "here only for command-g"
            (enclosingKorzEvaluatorEditorIfNone: [^ self]) get_it_cmd: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korz_textField'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui2_textField' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korz_textField' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide korz_textField).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         oldProjectionMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals carpetMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide oldProjectionMorph.

CopyDowns:
globals carpetMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> () From: ( | {
         'Category: projectionMorph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (vector)'
        
         myRequiredFormals <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( |
             {} = 'Comment: todo

change must include slots to formals to
-- include coordinate or wildcard CHECK
-- specify which dims to omit from guards & code

add exclude formals\x7fModuleInfo: Creator: globals korz ide oldProjectionMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addAllMorphs: mList = ( |
            | 
            resend.addAllMorphs: mList.
            isPersistent: isPersistent  ||  [mList anySatisfy: [|:m| m isKorzMorph]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         addExtrasToMenu: m = ( |
            | 
            m addDivider.
            m addButtonTarget: self ScriptBlock: [target showJustDemo1] Label: 'Show just demo 1'.
            m addButtonTarget: self ScriptBlock: [target showJustDemo2] Label: 'Show just demo 2'.
            m addButtonTarget: self ScriptBlock: [target showJustDemo2CheckFast] Label: 'Show just demo 2 checkFast'.
            m addButtonTarget: self ScriptBlock: [target showAll      ] Label: 'Show all'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         addMorph: m = ( |
            | 
            resend.addMorph: m.
            m isKorzMorph ifTrue: [isPersistent: true]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         collapse: evt = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         contextForEvaluation = ( |
            | 
            korz context copyAddAllFormals: requiredFormals asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy requiredFormals: requiredFormals copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         enclosingOutlinerIfPresent: pb IfAbsent: ab = ( |
            | ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: showing slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         includeSlot: aKorzSlot = ( |
            | 
            "TBD: isActvationSlot: aKortzSlot ifTrue: [^ false]."
            aKorzSlot isFacetParent ifTrue: [^ true].
            requiredFormals isEmpty ifTrue: [^ true].
            slotIncludesARequiredFormal: aKorzSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: initialization\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         includesKorzMorph = ( |
            | 
            allMorphs anySatisfy: [|:m| 
                  (!== m)
              &&  [m isKorzMorph]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: initialization\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         initializeHand: h = ( |
            | 
            resend.initializeHand: h.
            color: paint named: 'blue').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         initializePrototype = ( |
            | 
            color: (paint named: 'black').
            setWidth: 3 Height: 3).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isExpanded = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzProjectionMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isOutliner = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzProjectionMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'carpetMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         popUpMenu: evt = ( |
             menu.
            | 
            menu: ui2Menu copy.
            menu addButtonTarget: self ScriptBlock: [target animatedDelete] Label: 'Dismiss'.
            isPersistent ifTrue: [
              menu addButtonTarget: self ScriptBlock: [target isPersistent: false] Label: 'Unpin Carpet'.
            ] False: [
              menu addButtonTarget: self ScriptBlock: [target isPersistent: true]  Label: 'Pin Carpet'.
            ].
            handToFollow ifNil: [
              menu addButtonTarget: self ScriptBlock: [target startFollowingHand: event sourceHand] Label: 'Start following'.
            ] IfNotNil: [
              menu addButtonTarget: self ScriptBlock: [target stopFollowing] Label: 'Stop following'.
            ].
            addExtrasToMenu: menu.
            defaultButtonHolder: menu initializeDefaultButtonHolder: defaultButtonHolder.
            menu colorAll: menu color.
            menu popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         removeMorph: m = ( |
            | 
            resend.removeMorph: m.
            m isKorzMorph ifTrue: [ isPersistent: includesKorzMorph ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         requiredFormals = ( |
            | myRequiredFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         requiredFormals: x = ( |
            | 
            myRequiredFormals: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showAll = ( |
            | 
             requiredFormals: vector.
            updateAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showJustDemo1 = ( |
            | 
            requiredFormals: vector copyAddFirst: (korz formal copy formalName: 'demo' ) dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo1'.
            updateAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showJustDemo2 = ( |
            | 
            requiredFormals: set copyRemoveAll.
            requiredFormals add: (korz formal copy formalName: 'demo'       ) dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo2'.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showJustDemo2CheckFast = ( |
            | 
            requiredFormals: set copyRemoveAll.
            requiredFormals add: (korz formal copy formalName: 'demo'       ) 
               dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo2'.
            requiredFormals add: (korz formal copy formalName: 'assertions' ) 
               dispatchOnlyOn: korz operations evaluateStringAsEvaluatorContents: '{demo=>demo2. rcvr=>demo2} checkFast'.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: showing slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotIncludesARequiredFormal: aKorzSlot = ( |
            | 
            requiredFormals anySatisfy: [|:f| aKorzSlot couldBeMatchedBy: f]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         titleString = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         updateAll = ( |
            | 
            updateDo: [|:m| m update].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         updateDo: blk = ( |
            | 
            morphs do: [|:m| m isOutliner ifTrue: [blk value: m]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         wantsMorph: m Event: evt = ( |
            | 
            m isKorzMorph || [resend.wantsMorph: m Event: evt]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldProjectionMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide oldProjectionMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         oldRestrictionMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals frameMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> () From: ( |
             {} = 'Comment: Unfinished!\x7fModuleInfo: Creator: globals korz ide oldRestrictionMorph.

CopyDowns:
globals frameMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide oldRestrictionMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzRestrictionMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'frameMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'oldRestrictionMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide oldRestrictionMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fCategory: facets and subparts\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFacetOfFacetModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide parentFacetOfFacetModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( |
             {} = 'Comment: in progress: specializing to this particular korze from
korz ide pseudoSlotModel\x7fModuleInfo: Creator: globals korz ide parentFacetOfFacetModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | 
            myOutliner delete.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildLocals = ( |
            | 
            "no locals on regular slots--yet.
            would need to get them to update"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            referrent objectModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | 
            referrent slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            korz ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            halt. korz ide slotSliceReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pseudoCatModelCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent categoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide pseudoCatModelCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent categoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide pseudoCatModelCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'categoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pseudoCatModelPseudoCategoriesUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent pseudoCategoriesUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide pseudoCatModelPseudoCategoriesUpdater.

CopyDowns:
globals generalCategoryModel parent pseudoCategoriesUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide pseudoCatModelPseudoCategoriesUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelPseudoCategoriesUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'pseudoCategoriesUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         pseudoCatModelSlotsUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent slotsUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide pseudoCatModelSlotsUpdater.

CopyDowns:
globals generalCategoryModel parent slotsUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide pseudoCatModelSlotsUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         modelPrototype = ( |
            | 
            error: 'should be using modelPrototypeForThing: t').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         modelPrototypeForThing: t = ( |
            | 
            t slotModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'slotsUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorAndFormalsMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals rowMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide selectorAndFormalsMorph.

CopyDowns:
globals rowMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Category: selectorAndFormals Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (korz slots counterfactualSlot)'
        
         counterfactualSlot <- bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Category: selectorAndFormals Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         implicitFacetOrNil.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (vector)'
        
         oldRequiredFormals <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide selectorAndFormalsMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addFormal: aFormal To: m = ( |
            | 
            [aFormal isOptional ifTrue: [m addMorphLast: labelMorphLabeled: optionalFormalPrefix].].
            m addMorphLast:
              labelMorphLabeled: 
                aFormal isPositional ifTrue: [counterfactualSlot nameForPositionalFormalAt: aFormal positionalIndex]
                                      False: [aFormal formalName].
            [aFormal isOptional ifTrue: [m addMorphLast:  labelMorphLabeled: optionalFormalSuffix].].

            aFormal childFacets isEmpty ifFalse: [
              m addMorphLast: labelMorphLabeled: dimensionCoordinateSeparator.
              m addMorphLast:  
                korz ide facetsPushButton copyFormal: aFormal 
                                  ImplicitFacetOrNil: implicitFacetOrNil
                                               Style: facetStyle.
            ].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addHzSpacerTo: m = ( |
            | 
            m addMorphLast: spacerMorph copyH: formalPrefixSpace Color: color).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addImplicitFormalsTo: m = ( |
             ifs.
             rfd.
            | 
            [david davidDemo].
            ifs: counterfactualSlot implicitFormals.
            wereReceiverCoordinatesPointingToSelfShown || [implicitFacetOrNil isNil] ifFalse: [
              ifs: ifs asSet copyFilteredBy: [|:f| f isReceiver not || [(f childFacets includes: implicitFacetOrNil) not]]
            ].

            rfd: dictionary copyRemoveAll.  oldRequiredFormals do: [|:f| rfd at: f formalName Put: f].
            ifs: ifs asSet copyFilteredBy: [|:f| 
              rfd if: f formalName IsPresentDo: [|:rf| (f couldBeMatchedBy: rf) not] IfAbsentDo: true
            ].

            ifs: ifs  asVector sort asList.
            ifs isEmpty ifTrue: [^self].
            m addMorphLast: labelMorphLabeled: implicitFormalsPrefix.
            [|:exit|
              addFormal: ifs first To: m.
              ifs removeFirst.
              ifs isEmpty ifTrue: exit.
              m addMorphLast: labelMorphLabeled: implicitFormalSeparator.
              addHzSpacerTo: m.
            ] loopExit.
            m addMorphLast: labelMorphLabeled: implicitFormalsSuffix.
            addHzSpacerTo: m.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         areReceiverCoordinatesPointingToSelfShown = ( |
            | enclosingKorzSimplificationMorphIfPresent: [|:pm| pm areReceiverCoordinatesPointingToSelfShown ] IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         build = ( |
             r.
             s.
             sel.
            | 
            beShrinkWrap.
            borderWidth: 0.
            rebuild.
            centerJustify.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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

            (selector copyStr: counterfactualSlot selector) keywords
              with: counterfactualSlot explicitFormals asVector sort asList 
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
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
            s: counterfactualSlot selector.
            sel: selector copyStr: s.

            case
              if:   [sel isUnary]
              Then: [r addMorphLast: labelMorphForTitle: '  ', s]
              If:   [sel isBinary]
              Then: [
                r addMorphLast: labelMorphForTitle: '  ', s.
                addFormal: counterfactualSlot explicitFormals first To: r.
              ]
              Else: [ | args |
                args: counterfactualSlot explicitFormals asVector sort asList.

                sel keywords with: args Do: [ | :kw. :arg. |
                  r addMorphLast: labelMorphForTitle: '  ', kw, ' '.
                  addFormal: arg To: r.
              ].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         buildTitle = ( |
             r.
             t.
             w.
            | 
            r: buildLinearTitle.

            (selector copyStr: counterfactualSlot selector) isKeyword ifFalse: [ ^ r ].

            w:  process this hand ifNil: [ desktop worlds first ] IfNotNil: [ |:h| h world ].
            "use w for layout"
            r position: maxSmallInt half @ 0.
            w safelyDo: [ w addMorph: r ].
            t: r baseBounds width <= maxTitleWidth ifTrue: [ r ] False: [ buildFoldedTitle ].
            t safelyDo: [ t delete "so it can be munged without sema" ].
            t).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy counterfactualSlot: korz slots counterfactualSlot copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFor: aKorzSlot ImplicitFacet: f = ( |
            | 
            (( copy
                slot: aKorzSlot) 
                implicitFacetOrNil: f)
                build).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         dimensionCoordinateSeparator = '=>'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         editMode = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         facetStyle = ( |
            | 
            "Hack: korze shorter font for facet than for keywords so that folded title looks good.
            Too hard to line up keywords with arguments. -- dmu 6/13"
            selfGeneralSlotModel undeclaredTitleFontSpec copySize: selfGeneralSlotModel undeclaredTitleFontSpec size - 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         formalPrefixSpace = 10.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         implicitFormalSeparator = '.'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         implicitFormalsPrefix = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         implicitFormalsSuffix = '  ::'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorphForTitle: str = ( |
            | 
            labelMorphLabeled: str Style: selfGeneralSlotModel publicTitleFontSpec).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorphLabeled: aString = ( |
            | 
            labelMorphLabeled: aString Style: selfGeneralSlotModel undeclaredTitleFontSpec).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelMorphLabeled: aString Style: aStyle = ( |
            | 
            (korz ide korzLabelMorph copyLabel: aString) fontSpec: aStyle).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         maxTitleWidth = 300.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = ( |
            | 'selectorAndFormalsMorph').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         optionalFormalPrefix = '['.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         optionalFormalSuffix = ']'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'rowMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         rebuild = ( |
            | 
            counterfactualSlot: counterfactualSlot copyFromSlot: slot.
            oldRequiredFormals: requiredFormals.
            wereReceiverCoordinatesPointingToSelfShown: areReceiverCoordinatesPointingToSelfShown.
            removeAllMorphs.
            addMorph: buildTitle.
            colorAll: color).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         requiredFormals = ( |
            | enclosingKorzSimplificationMorphIfPresent: [|:pm| pm requiredFormals copyMappedBy: [|:f| f copyCounterfactual]] IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         setHeightWithoutLayout: h = ( |
             bbnds.
            | 
            changed.
            bbnds: baseBounds.
            resizeRect: rectangle copyX: bbnds origin
                                      Y: bbnds right@(bbnds foyer + h).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         setStyleOf: aMorph = ( |
            | 
            aMorph fontSpec: style.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         update = ( |
            | 
            [davidDemo mustbe context sensitive].
                  counterfactualSlot isIndistinguishableFromSlot 
            && [( requiredFormals = oldRequiredFormals) 
            && [  areReceiverCoordinatesPointingToSelfShown = wereReceiverCoordinatesPointingToSelfShown]]  ifFalse: [rebuild].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         updateLabels = ( |
            | update).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide selectorAndFormalsMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Category: selectorAndFormals Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)'
        
         slot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'Category: selectorAndFormals Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (outlinerPreferences fontSpec)'
        
         style <- outlinerPreferences fontSpec.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'selectorAndFormalsMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (true)'
        
         wereReceiverCoordinatesPointingToSelfShown <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: others\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         simplificationMorph = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide simplificationMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fCategory: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (false)'
        
         areDimensionConstraintsShown <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (true)'
        
         areReceiverCoordinatesPointingToSelfShown <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fCategory: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (\'\')'
        
         constraintDetailsString <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fCategory: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (labelMorph copy)'
        
         constraintLabel <- labelMorph copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fCategory: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (\'\')'
        
         constraintLabelPrefix <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (vector)'
        
         context <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (vector)'
        
         excludedFormals <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: Simplification Morph State\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (vector)'
        
         myRequiredFormals <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( |
             {} = 'Comment: todo:
senders of projectionMOrph, isKorzProjectionMorph\x7fModuleInfo: Creator: globals korz ide simplificationMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         addExtrasToMenu: m = ( |
            | 
            m addDivider.
            m addButtonTarget: self ScriptBlock: [target supplyAssertionsDimension] Label: 'Add assertions => checkFast to IDE context'.
            m addButtonTarget: self ScriptBlock: [target toggleShowingReceiverCoordinatesPointingToSelf] 
                                          Label: (areReceiverCoordinatesPointingToSelfShown ifTrue: 'Hide' False: 'Show') , ' receiver coordinates pointing to self'.

            m addButtonTarget: self ScriptBlock: [target noviceEnv] Label: 'Novice Environment'.
            m addButtonTarget: self ScriptBlock: [target toggleIsShowingAssertionsSlots] 
                                          Label: (isShowingAssertionsSlots ifTrue: 'Hide' False: 'Show'), ' slots guarded by assertions'.
            m addButtonTarget: self ScriptBlock: [target expertEnv] Label: 'Expert Environment'.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: not filled\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         baseDrawOn: c = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         collapse: evt = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         computeLabelString = ( |
            | 
            areDimensionConstraintsShown
              ifTrue: [labelStringWithConstraints]
               False: [labelStringWithoutConstraints]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: Korz environment\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         contextForEvaluation = ( |
            | 
            korz context copyAddAllFormals: context asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (((( resend.copy 
            constraintLabel: makeConstraintLabel label: constraintLabel label) 
            requiredFormals: requiredFormals copy)
            excludedFormals: excludedFormals copy)
            context: context copy)
            showStackWithAssertionsAndPassInCheckFast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIntoHand: hand = ( |
            | 
            hand attach: copy wrap layoutChanged.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         defaultButtonHolder <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         enclosingOutlinerIfPresent: pb IfAbsent: ab = ( |
            | ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         expertEnv = ( |
            | 
            requiredFormals: set copyRemoveAll.
            excludedFormals: set copyRemoveAll.
            showAssertionsSlots.

            context: set copyRemoveAll.
            setLabelPrefix: 'Expert environment'  AreConstraintsShown: false  Details: ''.
            areReceiverCoordinatesPointingToSelfShown: true.
            updateAll.

            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         hideAssertionsSlots = ( |
            | 
            excludedFormals add: korz formal copy formalName: 'assertions'.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: Korz environment\x7fCategory: showing slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         includeSlot: aKorzSlot = ( |
            | 
            aKorzSlot isAnActivationSlot ifTrue: [^ false].
            aKorzSlot isFacetParent ifTrue: [^ true].
            (slotIncludesARequiredFormal: aKorzSlot) ifFalse: [^ false].
            (slotIncludesAnExcludedFormal: aKorzSlot) ifTrue:  [^ false].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: submorphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         includesKorzMorph = ( |
            | 
            allMorphs anySatisfy: [|:m| 
                  (!== m)
              &&  [m isKorzMorph]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         initialSize = ( |
            | 400@300).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         initializePrototype = ( |
            | 
            resend.initializePrototype.
            velcroFlag: false.
            constraintLabel: makeConstraintLabel.
            showOriginalObjectStack.
            colorAll: korz ide simplificationMorphColor.
            beFlexible.
            changed.
            layoutChanged.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isExpanded = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSimplificationMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isOutliner = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: not filled\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isRectangular = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isShowingAssertionsSlots = ( |
            | 
            (excludedFormals anySatisfy: [|:f| f formalName = 'assertions']) not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelStringWithConstraints = ( |
            | constraintLabelPrefix, ': ', constraintDetailsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         labelStringWithoutConstraints = ( |
            | 
            constraintLabelPrefix).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         makeConstraintLabel = ( |
            | 
            ( labelMorph copy label: 'uninitialized')
              fontSpec: globals fontSpec copyName: 'helvetica' Size: outlinerPreferences mediumFontSize * 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         makeInnerFrame = ( |
             innerFrame.
            | 
            innerFrame: frameMorph copy.
            innerFrame beFlexible.
            innerFrame frameStyle: frameMorph insetBezelStyle.
            innerFrame borderWidth: 6.
            [innerFrame velcroFlag: false.].
            innerFrame color: paint named: 'green'.
            innerFrame filled: true.
            innerFrame addMorph: constraintLabel.
            innerFrame).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         makeOuterFrame = ( |
             outerFrame.
            | 
            outerFrame: frameMorph copy.
            outerFrame beFlexible.
            outerFrame frameStyle: frameMorph bezelStyle.
            outerFrame borderWidth: 8.
            outerFrame color: paint named: 'red'.
            outerFrame filled: false.
            outerFrame baseMinWidth:  initialSize x.
            outerFrame baseMinHeight: initialSize y.
            outerFrame setWidth:  initialSize x Height: initialSize y.
            outerFrame position: 0@0.
            outerFrame).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         mapReferencesUsing: dict = ( |
            | 
            resend.mapReferencesUsing: dict.
            dict if: constraintLabel  IsPresentDo: [|:n| constraintLabel: n].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         middleMouseDown: e = ( |
            | popUpMenu: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzSimplificationMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         noviceEnv = ( |
            | 
            requiredFormals: set copyRemoveAll.
            excludedFormals: set copyRemoveAll.
            hideAssertionsSlots.

            context: set copyRemoveAll.
            context add: (korz formal copy formalName: 'assertions' ) 
                 dispatchOnlyOn: korz operations evaluateStringAsEvaluatorContents: 'checkFast'.
            setLabelPrefix: 'Novice environment'  AreConstraintsShown: true  Details: 'assertions => checkFast'.
            areReceiverCoordinatesPointingToSelfShown: false.

            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oldAddExtrasToMenu: m = ( |
            | 
            m addDivider.
            m addButtonTarget: self ScriptBlock: [target showBasicStack] Label: 'Show basic stack'.
            m addButtonTarget: self ScriptBlock: [target showStackWithAssertions] Label: 'Show stack with assertions'.

            m addDivider.
            m addButtonTarget: self ScriptBlock: [target toggleShowingDimensionConstraints] 
                                          Label: (areDimensionConstraintsShown ifTrue: 'Hide' False: 'Show') , ' dimension constraints'.
            m addButtonTarget: self ScriptBlock: [target toggleShowingReceiverCoordinatesPointingToSelf] 
                                          Label: (areReceiverCoordinatesPointingToSelfShown ifTrue: 'Hide' False: 'Show') , ' receiver coordinates pointing to self'.

            m addDivider.
            m addButtonTarget: self ScriptBlock: [target noviceEnv] Label: 'Novice Environment'.
            m addButtonTarget: self ScriptBlock: [target expertEnv] Label: 'Expert Environment'.

            m addDivider.
            m addButtonTarget: self ScriptBlock: [target showJustDemo1] Label: 'Show just demo 1'.
            m addButtonTarget: self ScriptBlock: [target showJustDemo2] Label: 'Show just demo 2'.
            m addButtonTarget: self ScriptBlock: [target showJustDemo2CheckFast] Label: 'Show just demo 2 checkFast'.
            m addButtonTarget: self ScriptBlock: [target showAll      ] Label: 'Show all'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         popUpMenu: evt = ( |
             menu.
            | 
            menu: ui2Menu copy.
            addExtrasToMenu: menu.
            defaultButtonHolder: menu initializeDefaultButtonHolder: defaultButtonHolder.
            menu colorAll: menu color.
            menu popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         requiredFormals = ( |
            | myRequiredFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         requiredFormals: x = ( |
            | 
            myRequiredFormals: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         setLabelPrefix: p AreConstraintsShown: acs Details: d = ( |
            | 
            constraintLabelPrefix: p.
            areDimensionConstraintsShown: acs.
            constraintDetailsString: d.
            updateLabel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showAll = ( |
            | 
            requiredFormals: vector.
            areReceiverCoordinatesPointingToSelfShown: true.

            setLabelPrefix: 'Showing everything'  AreConstraintsShown: false  Details: 'assertions not set'.

            updateAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showAssertionsSlots = ( |
            | 
            excludedFormals: excludedFormals copyFilteredBy: [|:f| f name != 'assertions']. updateAll. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showBasicStack = ( |
            | 
            requiredFormals: set copyRemoveAll.
            korz worldMaker demos isDemoDimensionUsed ifTrue: [
              requiredFormals add:
                (korz formal copy formalName: 'demo' )
                  dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo1'.
              requiredFormals add:
               (korz formal copy formalName: 'assertions' ) 
                 dispatchOnlyOn: korz operations evaluateStringAsEvaluatorContents: '{demo=>demo2. rcvr=>demo2} none'.
            ].

            areReceiverCoordinatesPointingToSelfShown: false.

            setLabelPrefix: 'Basic Stack'  AreConstraintsShown: true  Details: 'assertions => none'.

            updateAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showJustDemo1 = ( |
            | 
            requiredFormals: set copyRemoveAll.
            korz worldMaker demos isDemoDimensionUsed ifTrue: [
              requiredFormals add:
                (korz formal copy formalName: 'demo' )
                  dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo1'.
            ].
            areReceiverCoordinatesPointingToSelfShown: true.

            setLabelPrefix: 'Dimension demo set to demo1'  AreConstraintsShown: false  Details: 'assertions not set'.

            updateAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showJustDemo2 = ( |
            | 
            requiredFormals: set copyRemoveAll.

            korz worldMaker demos isDemoDimensionUsed ifTrue: [
              requiredFormals add:
                (korz formal copy formalName: 'demo')
                  dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo2'.
            ].
            areReceiverCoordinatesPointingToSelfShown: true.

            setLabelPrefix: 'Dimension demo set to demo2'  AreConstraintsShown: false  Details: 'assertions not set'.

            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showJustDemo2CheckFast = ( |
            | 
            requiredFormals: set copyRemoveAll.

            korz worldMaker demos isDemoDimensionUsed ifTrue: [
            requiredFormals add: (korz formal copy formalName: 'demo'       ) 
               dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo2'.

               requiredFormals add: (korz formal copy formalName: 'assertions' ) 
                 dispatchOnlyOn: korz operations evaluateStringAsEvaluatorContents: '{demo=>demo2. rcvr=>demo2} checkFast'.
            ].

            areReceiverCoordinatesPointingToSelfShown: true.

                 setLabelPrefix: 'Dimension demo set to demo2 and dimension assertions set to checkFast' 
            AreConstraintsShown: false  
                        Details: 'assertions => checkFast'.

            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showObjectStackWithAssertions = ( |
            | 
            requiredFormals: set copyRemoveAll.
            excludedFormals: set copyRemoveAll.
            context: set copyRemoveAll.
            setLabelPrefix: 'Object view of stack with assertions'  AreConstraintsShown: false  Details: ''.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showOriginalObjectStack = ( |
            | 
            requiredFormals: set copyRemoveAll.
            excludedFormals: set copyRemoveAll.
            context: set copyRemoveAll.
            excludedFormals add: korz formal copy formalName: 'assertions'.
            areReceiverCoordinatesPointingToSelfShown: false.
            setLabelPrefix: 'Object view of plain stack'  AreConstraintsShown: false  Details: ''.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: old configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showStackWithAssertions = ( |
            | 
            requiredFormals: set copyRemoveAll.

            korz worldMaker demos isDemoDimensionUsed ifTrue: [
             requiredFormals add: (korz formal copy formalName: 'demo') dispatchOnlyOn: korz facets getWellKnownFacetOrNil: 'demo2'.
            ].

            areReceiverCoordinatesPointingToSelfShown: true.

            setLabelPrefix: 'Stack with Assertions'  AreConstraintsShown: true  Details: 'assertions not set'.

            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         showStackWithAssertionsAndPassInCheckFast = ( |
            | 
            requiredFormals: set copyRemoveAll.
            excludedFormals: set copyRemoveAll.
            context: set copyRemoveAll.
            context add: (korz formal copy formalName: 'assertions' ) 
                 dispatchOnlyOn: korz operations evaluateStringAsEvaluatorContents: 'checkFast'.
            setLabelPrefix: 'Augmenting IDE context'  AreConstraintsShown: true  Details: '{ assertions => checkFast }'.
            areReceiverCoordinatesPointingToSelfShown: true.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: Korz environment\x7fCategory: showing slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotIncludesARequiredFormal: aKorzSlot = ( |
            | 
            requiredFormals isEmpty ifTrue: [^ true].
            requiredFormals anySatisfy: [|:f| aKorzSlot couldBeMatchedBy: f]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: Korz environment\x7fCategory: showing slots\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotIncludesAnExcludedFormal: aKorzSlot = ( |
            | 
            excludedFormals anySatisfy: [|:f| aKorzSlot couldBeMatchedBy: f]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: not filled\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         submorphVisible = ( |
            | 
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         supplyAssertionsDimension = ( |
            | 
            context add:
              (korz formal copy formalName: 'assertions' ) 
                dispatchOnlyOn: korz operations evaluateStringAsEvaluatorContents: 'checkFast'.
            showAssertionsSlots.
            setLabelPrefix: constraintLabelPrefix AreConstraintsShown: true Details: '{ assertions => checkFast }'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fCategory: fake outliner\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         titleString = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: configurations\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         toggleIsShowingAssertionsSlots = ( |
            | 
            isShowingAssertionsSlots ifTrue: [hideAssertionsSlots] False: [showAssertionsSlots]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: options\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         toggleShowingDimensionConstraints = ( |
            | 
            areDimensionConstraintsShown: areDimensionConstraintsShown not.
            updateAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fCategory: options\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         toggleShowingReceiverCoordinatesPointingToSelf = ( |
            | 
            areReceiverCoordinatesPointingToSelfShown: areReceiverCoordinatesPointingToSelfShown not.
            updateAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         updateAll = ( |
            | 
            updateLabel.
            updateDo: [|:m| m update].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         updateDo: blk = ( |
            | 
            morphs do: [|:m| m isOutliner ifTrue: [blk value: m]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: labelling\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateLabel = ( |
             lbl.
            | 
            lbl:  computeLabelString.
            lbl = constraintLabel label  ifFalse: [constraintLabel label: lbl].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: submorphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         wantsMorph: m Event: evt = ( |
             everythingBelongs = bootstrap stub -> 'globals' -> 'true' -> ().
            | 
            everythingBelongs || [m isKorzMorph]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> 'parent' -> () From: ( | {
         'Category: construction\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         wrap = ( |
             if.
             of.
            | 
            if: makeInnerFrame.
            of: (makeOuterFrame addMorph: (if addMorph: self)) colorAll: color.
            if color: if color copyAlpha: 0.5.
            of).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'simplificationMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide simplificationMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         simplificationMorphColor = ( |
            | 
            paint copyRed: 0.778103 Green: 0.828934 Blue: 0.835777).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: colors\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotMorphColor = ( |
            | 
            paint copyRed: 0.774194 Green: 0.821114 Blue: 0.790811).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForOne: anKorzSlot = ( |
            | 
            (copy slot: anKorzSlot ) formalsInSlot: anKorzSlot formalsInSlot asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         formalsInSlot = ( |
            | items).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         formalsInSlot: x = ( |
            | items: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slot: x = ( |
            | 
            holder: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotSliceGroupModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSliceGroupModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> () From: ( |
             {} = 'Comment: I represent a group of slots in a slice.
May contain subgroups. -- dmu 5/1\x7fModuleInfo: Creator: globals korz ide slotSliceGroupModel.

CopyDowns:
globals generalSliceGroupModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSliceGroupModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         beForFacet: newFacet = ( |
            | halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            korz ide slotSliceGroupOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSliceGroupModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiver = 'fix me in slotSliceGroupModel parent receiver'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: korz ide slotMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         titleString = ( |
            | 
            'An Korz slot').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotSliceGroupOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceGroupOutliner copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSliceGroupOutliner.

CopyDowns:
globals sliceGroupOutliner. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSliceGroupOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzSlotSliceGroupOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceGroupOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceGroupOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: referrents\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotSliceReferrent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceReferrent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSliceReferrent.

CopyDowns:
globals sliceReferrent. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSliceReferrent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForOne: aFormal = ( |
            | 
            (copy receiverFacet: aSlot receiverFacet ) slots: vector copyAddFirst: aSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'sliceReferrent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiverFacet = ( |
            | holder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         receiverFacet: x = ( |
            | 
            holder: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slots = ( |
            | items).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSliceReferrent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slots: x = ( |
            | items: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: updaters\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         slotSlotsUpdater = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel parent slotsUpdater copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSlotsUpdater.

CopyDowns:
globals generalCategoryModel parent slotsUpdater. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide slotSlotsUpdater parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         modelPrototypeForThing: t = ( |
            | 
            t slotModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> 'slotsUpdater' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         things = ( |
            | 
            [xxx xxxxxx].  resend.things).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorph = ( |
            | 
            (korz ide slotModel newOutlinerFor: self InWorld: process this birthEvent sourceHand world) 
            colorAll: korz ide slotMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categories = ( |
            | [xxx]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         categoriesString = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         category = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         exists = ( |
            | 
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         holder = ( |
             f.
             r.
            | 
            r: receiverFacet.
            r ifNotNil: [^ r].
            f: dispatchedImplicitFormals.
            "picks at random, not great"
            f size >= 1 ifTrue: [f first childFacets first] False: [korz facets undispatched]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isShowableAsMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            [xxx].
            selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            [xxx].
            selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
            | 
            list copyRemoveAll add: korz ide formalParentFakeSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         korzMorphs = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzMorphs.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
             resend.postFileIn.
            worldMorph addBackgroundMenuContributor: korz ide.
            korz ide simplificationMorph initializePrototype.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMorphs' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'korzDemoMenu
korzDebugger
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setDemoFonts = ( |
            | 
            largeFontSize:  20.
            mediumFontSize: 18.
            smallFontSize:  16.
            tinyFontSize:   14.

            generalModel titleFontSize: largeFontSize.

            "Some big fixed fonts: 8x13, 8x13bold, 8x16, 9x15 9x15bold, 10x20, 12x24"
            ui2_textField fontSpec: globals fontSpec copyName: '10x20' Size: 20.

            flushMenuCaches.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setGiantFonts = ( |
            | 
            largeFontSize:  28.
            mediumFontSize: 24.
            smallFontSize:  20.
            tinyFontSize:   18.


            generalModel titleFontSize: largeFontSize.

            "Some big fixed fonts: 8x13, 8x13bold, 8x16, 9x15 9x15bold, 10x20, 12x24"
            ui2_textField fontSpec: globals fontSpec copyName: '12x24' Size: 24.

            ui2Menu   defaultFontSpec: ui2Menu   defaultFontSpec copySize: 20.
            ui2Button defaultFontSpec: ui2Button defaultFontSpec copySize: 24.
            flushMenuCaches.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'outlinerPreferences' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setNormalFonts = ( |
            | 
            largeFontSize:  14.
            mediumFontSize: 12.
            smallFontSize:  10.
            tinyFontSize:    9.

            generalModel titleFontSize: largeFontSize.

            "Some small fixed fonts: 5x8, 6x9, 6x10, 6x12, 6x13, 6x13bold, 7x13, 7x13bold, 7x14"
            ui2_textField fontSpec: globals fontSpec copyName: '6x13' Size: 13.

            ui2Menu   defaultFontSpec: ui2Menu   defaultFontSpec copySize: 12.
            ui2Button defaultFontSpec: ui2Button defaultFontSpec copySize: 14.
            flushMenuCaches.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'pluggableOutliner' -> 'parent' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMorph = ( |
            | resend.isKorzMorph || [model isKorzModel]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfGeneralSlotModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         privateTitleFontSpec = ( |
            | 
            fontSpec copyName: 'times' copyMutable Size: outlinerPreferences mediumFontSize + 2 Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfGeneralSlotModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         publicTitleFontSpec = ( |
            | 
            fontSpec copyName: 'times' copyMutable Size: outlinerPreferences mediumFontSize + 2 Style: 'bold').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfGeneralSlotModel' -> 'parent' -> () From: ( | {
         'Category: title\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         undeclaredTitleFontSpec = ( |
            | 
            fontSpec copyName: 'helvetica' copyMutable Size: outlinerPreferences mediumFontSize Style: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'frameMorph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         collapse: evt = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'frameMorph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         isOutliner = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'frameMorph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         titleString = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'frameMorph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         update = ( |
            | updateDo: [|:x| x update]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'frameMorph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot'
        
         updateDo: blk = ( |
            | 
            morphs do: [|:m| m isOutliner  ifTrue: [blk value: m]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         enclosingKorzSimplificationMorphIfPresent: pb IfAbsent: ab = ( |
             m.
            | 
            m: self.
            [
              m isNil ifTrue: [^ ab value].
              m isKorzSimplificationMorph  ifTrue: [^ pb value: m].
              m: m owner
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMorph = ( |
            | 
            'korz' isPrefixOf: morphTypeName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzProjectionMorph = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSimplificationMorph = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Menu' -> 'defaultButtonHolderPrototype' -> () From: ( | {
         'ModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         defaultButtonIn: aMenu IfPresent: pb IfAbsent: ab = ( |
            | 
            aMenu morphs findFirst: [|:m|
               m isButton 
              && [ ( lastButtonLabel = m label )
                  || ((lastButtonLabel copyWithoutPrefix: 'Show ') = (m label copyWithoutPrefix: 'Hide '))
                  || [(lastButtonLabel copyWithoutPrefix: 'Hide ') = (m label copyWithoutPrefix: 'Show ')]]]
            IfPresent: pb
            IfAbsent:  ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'worldMorph' -> () From: ( | {
         'Category: event handling\x7fComment: If button down over the world, drag out a selection region\x7fModuleInfo: Module: korzMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         leftMouseDown: e = ( |
            | 
            (e isShiftDownForLeftShiftHack  ifTrue: [korz ide projectionMorph]  False: [carpetMorph])
             copyHand: e sourceHand.
            self).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'korzDemoMenu' From: 'applications/allKorz'
 bootstrap read: 'korzDebugger' From: 'applications/allKorz'



 '-- Side effects'

 globals modules korzMorphs postFileIn
