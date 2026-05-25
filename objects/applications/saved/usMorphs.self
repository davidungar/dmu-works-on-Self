 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usMorphs = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () ToBe: bootstrap addSlotsTo: (
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
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMorphs' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
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
            | resend.postFileIn).
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
            us ide facetModel newOutlinerFor: self).
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
            usParentFormals asVector do: [|:formal. :i| 
              blk value:  us ide formalParentFakeSlot copyFormal: formal In: self]).
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
            | 
            (list copyRemoveAll add: us ide facetParentFakeSlot) add: us ide formalParentFakeSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         ide = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
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
        
         holder = ( |
            | childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         longKey = ( |
            | key).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'fakeSlot' -> ().
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetModel.

CopyDowns:
globals generalCategoryModel. copyForSpecialization 
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
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoriesUpdater = ( |
            | 
            us ide facetCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoryReferrentProto = ( |
            | us ide categoryReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facet = ( |
            | referrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCategories = ( |
            | 
            [xxx]. resend.pseudoCategories).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCategoriesUpdater = ( |
            | 
            us ide facetPseudoCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide facetMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide facetSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide facetSliceReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsInMeAndSubcategories = ( |
            | [xxx]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsInMirror = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotsUpdater = ( |
            | 
            us ide facetSlotsUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         updateItemsDo: blk = ( |
            | 
            [xxx]. resend.updateItemsDo: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         xxx = ( |
            | [xxx]. "factor with sliceGroup side? Also for slot side?").
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetMorph = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals circleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetMorph.

CopyDowns:
globals circleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (us facet)'
        
         myFacet <- bootstrap stub -> 'globals' -> 'us' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buttonPress: aButton Event: aUI2Event = ( |
            | sproutParents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'facetMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'circleMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sproutParentFacets: pfs = ( |
             dh = 20.
             dv = 70.
             x.
            | 
            x: position x - (pfs size pred asFloat half * dh).
            pfs do: [|:aFacet. m| 
              m: aFacet asMorph.
              m isInWorld ifFalse: [ world addMorph: m ].
              world moveToFront: m.
              m moveToPosition: (x @ (bounds center y - dv)) "- m bounds size half".
              x: x + dh
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sproutParents = ( |
             pfs.
            | 
            pfs: myFacet usParentFacets.
            sproutParentFacets: pfs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetMorphColor = ( |
            | 
            slotMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetPseudoCatModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalCategoryModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetPseudoCatModel.

CopyDowns:
globals generalCategoryModel. copyForSpecialization 
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
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categoriesUpdater = ( |
            | 
            us ide pseudoCatModelCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment: x = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isPseudoCategoryModel = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         mirror = ( |
            | categoryReferrent mirror).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalCategoryModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'Category: updating\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         pseudoCategoriesUpdater = ( |
            | 
            us ide pseudoCatModelPseudoCategoriesUpdater).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | referrent facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetPseudoCatModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
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
            referrent facet printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         facetSliceGroupOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sliceGroupOutliner copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'facetSliceGroupOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide facetSliceGroupOutliner.

CopyDowns:
globals sliceGroupOutliner. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formalModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buildLocals = ( |
            | [xxx]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot method).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodString = ( |
            | slot usMethodString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            us ide usMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithoutSlots = ( |
             m.
            | 
            [xxx].
            m: methodText copyForMethod: slot.
            m formatMethodBodyWithoutSlots.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide slotMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide formalSliceReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | referrent slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: fake slots\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         formalParentFakeSlot = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals us ide abstractFakeSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalParentFakeSlot.

CopyDowns:
globals us ide abstractFakeSlot. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         formal.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide formalParentFakeSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         annotation = ( |
            | 
            slotAnnotation parse: 'Category: Roles').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         copyFormal: fo In: f = ( |
            | 
            (copy formal: fo) childFacet: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         exists = ( |
            | 
            childFacet hasParentFormal: formal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         isAssignable = ( |
            | 
            formal slot isAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         isAssignment = ( |
            | 
            formal slot isAssignment).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         isMethod = ( |
            | 
            formal slot isMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            formal nameAndSelector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            us ide slotModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            formal slot oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'abstractFakeSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | 
            formal slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiverFacet = ( |
            | 
            formal slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slot = ( |
            | formal slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         slotModelProto = ( |
            | us ide parentFormalOfFacetModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'formalParentFakeSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         valueIfFail: fb = ( |
            | 
            exists ifTrue: [formal slot] False: fb).
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodString = ( |
            | methodTextWithSlots asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            (us ide usMethodText copyForMethod: method) formatMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithSlots = ( |
            | 
            (methodText copyForMethod: method) formatMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            referrent objectModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFacetOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            slot oneLinerContentsString).
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFormalOfFacetModel = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalSlotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide parentFormalOfFacetModel.

CopyDowns:
globals generalSlotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( |
             {} = 'Comment: in progress: specializing to this particular use from
us ide pseudoSlotModel\x7fModuleInfo: Creator: globals us ide parentFormalOfFacetModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodString = ( |
            | methodTextWithSlots asString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            (us ide usMethodText copyForMethod: method) formatMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithSlots = ( |
            | 
            (methodText copyForMethod: method) formatMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         objectModelProto = ( |
            | 
            referrent objectModelProto).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
            | 
            slot oneLinerContentsString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | 
            referrent slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'parentFormalOfFacetModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide slotReferrent).
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
        
         addOutlinerForThing: t = ( |
            | 
            [xxx]. resend.addOutlinerForThing: t).
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'pseudoCatModelSlotsUpdater' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         updateMissingOutliner = ( |
            | 
            [xxx]. resend.updateMissingOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
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
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         buildLocals = ( |
            | [xxx]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            slot method).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodString = ( |
            | slot usMethodString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            us ide usMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         methodTextWithoutSlots = ( |
             m.
            | 
            [xxx].
            m: methodText copyForMethod: slot.
            m formatMethodBodyWithoutSlots.
            m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         newOutlinerFor: s InWorld: w = ( |
            | 
            halt. resend.newOutlinerFor: s InWorld: w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalSlotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         receiver = ( |
            | slot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setAppearanceOfOutliner = ( |
            | 
            resend.setAppearanceOfOutliner.
            myOutliner colorAll: us ide slotMorphColor.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceGroupModel = ( |
            | 
            us ide slotSliceGroupModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'slotModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         sliceReferrent = ( |
            | 
            us ide slotReferrent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         slotMorphColor = ( |
            | 
            paint copyRed: 0.778103 Green: 0.828934 Blue: 0.835777).
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
         'Category: models\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
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
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         comment = ( |
            | [xxx]. '').
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
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usMethodText = bootstrap define: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals abstractMethodText copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> () From: ( |
             {} = 'Comment: language-independent method text\x7fModuleInfo: Creator: globals us ide usMethodText.

CopyDowns:
globals abstractMethodText. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us ide usMethodText parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         addSlotList = ( |
             sl.
            | 
            sl: convertToLines: slotList.
            firstLine isAllWhiteSpace ifTrue: [
              sl last: sl last, firstLine.
              lines removeFirst.
            ].
            isDisassembled ifTrue: [ lines addFirst: '' ].
            lines addAllFirst: sl.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formatMethodBody = ( |
            | 
            detabify.
            leftShrinkwrap.
            addSlotList.
            removeFirstLineIf: firstLine isAllWhiteSpace).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         formatMethodBodyWithoutSlots = ( |
            | 
            detabify.
            leftShrinkwrap.
            removeFirstLineIf: firstLine isAllWhiteSpace.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeForMethod: anUsSlot = ( |
             s.
            | 
            usSlot: anUsSlot.
            s: anUsSlot usOrSelfSource.
            source: s.
            lines: convertToLines: s.
            nullIfEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         isDisassembled = ( |
            | [xxx]. true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | usSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'abstractMethodText' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         removeFirstLineIf: test = ( |
            | 
            test value ifTrue: [ lines removeFirst ].
            nullIfEmpty.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         slotList = ( |
             m <- bootstrap stub -> 'globals' -> 'list' -> ().
             maxLineLength.
             maxMaxLineLength <- 70.
             sl <- '| '.
             slop = 5.
             slotSeparator = '. '.
             totalSize.
            | 

            "Do a bit of fiddling to try to get the lines to be all
             approximately the same length, without going too far
             over either 70 characters or the length of the longest
             line in the method (whichever is greater). -- Adam, 8/04"

            m: method evalStringsForLocalSlots.

            m isEmpty ifTrue: [^ ''].

            totalSize: sl size.
            m do: [|:s| totalSize: totalSize + s size + slotSeparator size].

            lines do: [|:line| maxMaxLineLength: maxMaxLineLength max: line size].

            maxLineLength:  (totalSize /+ (totalSize /+ maxMaxLineLength)) + slop.

            m   doFirst: [|:s| sl: sl, s]
             MiddleLast: [|:s| sl: sl, slotSeparator.
                               (sl lastLine size + s size) > maxLineLength ifTrue: [
                                 sl: sl, '\n  '.
                               ].
                               sl: sl, s].
            sl, ' |').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (\'\')'
        
         source <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'ide' -> 'usMethodText' -> () From: ( | {
         'ModuleInfo: Module: usMorphs InitialContents: InitializeToExpression: (nil)'
        
         usSlot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
             m.
            | 
            ((reflect: implementation) includesKey: 'value') ifTrue: [^ implementation value printString].
            m: ((reflect: implementation) at: 'evaluateInContext:') contents.
            m isMethod ifTrue: [^ resend.oneLinerContentsString].
            m reflectee name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorph = ( |
            | 
            (us ide slotModel newOutlinerFor: self) colorAll: us ide slotMorphColor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         categories = ( |
            | [xxx]. vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         category = 'category in us slot slot parent unimplemented'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         exists = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         holder = ( |
            | receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isShowableAsMorph = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            [xxx].
            selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         method = ( |
            | 
            [xxx].
            ((reflect: implementation) slotAt: 'evaluateInContext:') contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         name = ( |
            | 
            [xxx].
            selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         oneLinerContentsString = ( |
             m.
            | 
            m: ((reflect: implementation) at: 'evaluateInContext:') contents.
            m isReflecteeMethod ifTrue: [source] False: 'not a method?!?').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: usMorphs InitialContents: FollowSlot'
        
         usMethodString = ( |
            | 
            [xxx].
            nil == implementation ifTrue: [^nil].
            ((asMirror at: 'implementation') contents at: 'evaluateInContext:') contents source).
        } | ) 



 '-- Side effects'

 globals modules usMorphs postFileIn
