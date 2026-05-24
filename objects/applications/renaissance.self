 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         renaissance = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules renaissance.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            worldMorph addBackgroundMenuContributor: renaissance.
             resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         renaissance = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( |
             {} = 'Comment: I hold all of the renaissance demos.
Send \'test\' to me.
-- dmu 1/21/08\x7fModuleInfo: Creator: globals renaissance.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         abstract = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract ensemble.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         demo.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (vector)'
        
         nodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copySize: n From: aDemo = ( |
            | 
            resend.copy initializeFrom: aDemo Size: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copyWithDefaultSizeFrom: aDemo = ( |
            | 
            copySize: defaultSize From: aDemo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         depopulate = ( |
            | nodes do: [|:n| n memory removeAll]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         doNodesAtRandom: blk = ( |
            | 
            nodes asVector randomlyDo: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         initMaxNeighborCount = ( |
             mnc.
            | 
            mnc: (nodes copyMappedBy: [|:n|n neighbors size]) max.
            nodes do: [|:n| n initMaxNeighborCount: mnc].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         initializeFrom: aDemo Size: n = ( |
            | 
            demo: aDemo.
            nodes: vector copySize: n.
            nodes do: [|:n. :i| nodes at: i Put: demo node copyIndex: i Ensemble: self Demo: aDemo].
            initMaxNeighborCount.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         initializeStatistics = ( |
            | initMaxNeighborCount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         nodeCount = ( |
            | nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            nodes do: [|:n| n populate].
            initializeStatistics.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         step = ( |
            | 
            nodes asVector randomlyDo: [|:n| n step]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | 
            copy populate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract ensembleMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> () From: ( | {
         'Category: ensembleMorph state\x7fModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (true)'
        
         antialias <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> () From: ( | {
         'Category: ensembleMorph state\x7fModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         ensemble.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addCustomButtonsTo: menu = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fComment: Draw the base of this morph on the given canvas.\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         baseDrawOn: aCanvas = ( |
            | 
            resend.baseDrawOn: aCanvas.
            antialias ifTrue: [ aCanvas    withAntialiasingDo: [drawNodesOn: aCanvas] ]
                       False: [ aCanvas withoutAntialiasingDo: [drawNodesOn: aCanvas] ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFrom: aDemo = ( |
            | 
            (((resend.copy resizeRect: (0@0) ## (initialSize: aDemo))
               color: initialColor)
               antialias: initialAntialias)
               ensemble: (aDemo ensemble copyWithDefaultSizeFrom: aDemo) populate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         defaultButtonHolder <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         drawNode: n On: aCanvas = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         drawNodesOn: aCanvas = ( |
             bb.
             c.
            | 
            bb: insetBaseBounds.
            c: aCanvas.
            ensemble nodes do: [|:n|
             drawNode: n On: c].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fCategory: customization; override as needed\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialAntialias = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fCategory: customization; override as needed\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialColor = bootstrap setObjectAnnotationOf: ( paint copyRed: 0.765396 Green: 0.889541  Blue: 0.907136) From: ( |
             {} = 'Comment: About the representation of colors:

     Externally, the red, green, and blue components of a paint
     object are floats in the range [0.0..1.0]. Internally, they
     are represented as integers in the range [0..range asInteger]
     to allow fast hashing and equality tests.

     This representation could easily be replaced with one based
     on HSV. On a pseudo-color display, conversion to RGB need
     only be done when first allocating a colormap entry for the
     color. On a direct-color display, a dictionary would be used
     to map colors to RGB triples; the cost would be about the same
     as the current cost of mapping colors to color indices.

     For a general description of color representations for computer
     graphics, including the relationship between the RGB and HSV
     color models used here, see Chapter 17 of Foley and van Dam,
     Fundamentals of Interactive Computer Graphics, Addison-Wesley,
     1982.\x7fModuleInfo: Creator: globals renaissance abstract ensembleMorph parent initialColor.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fCategory: customization; override as needed\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialSize = (200)@(200).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: copying\x7fCategory: customization; override as needed\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialSize: aDemo = ( |
            | initialSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         insetBaseBounds = ( |
             avoidTurdOffset = 0.
            | 
            baseBounds indent: avoidTurdOffset).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         middleMouseDown: e = ( |
            | popUpMenu: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'abstract ensembleMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         popUpMenu: evt = ( |
             menu.
            | 
            menu: ui2Menu copy.
            menu addButtonTarget: self AsynchronousScriptBlock: [target populate. target changed] Label: 'Populate'.
            menu addDivider.
            menu addButtonTarget: self ScriptBlock: [target startGettingStepped] Label: 'Start'.
            menu addButtonTarget: self ScriptBlock: [target step] Label: 'Step'.
            menu addButtonTarget: self ScriptBlock: [target stopGettingStepped] Label: 'Stop'.
            menu addDivider.
            addCustomButtonsTo: menu.
            menu addButtonTarget: self ScriptBlock: [target antialias: target antialias not. target changed] 
                           Label: 'Turn ', (antialias ifTrue: 'off' False: 'on'), ' antialiasing'.
            menu addDivider.
            menu addButtonTarget: self ScriptBlock: [target root animatedDelete] Label: 'Dismiss'.

            defaultButtonHolder: menu initializeDefaultButtonHolder: defaultButtonHolder.
            menu colorAll: paint named: 'lightGray'.
            menu popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         populate = ( |
            | 
            stopGettingStepped.
            ensemble populate.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            ensemble step.
            changed.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         testFrom: aDemo = ( |
            | 
            process this birthEvent sourceHand attach: frameMorph copy beShrinkWrap addMorph: copyFrom: aDemo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            renaissance abstract ensembleMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract node.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         ensemble.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (-1)'
        
         index <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (-1)'
        
         maxNeighborCount <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (vector)'
        
         memory <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance abstract node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy memory: memory copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIndex: i Ensemble: e Demo: d = ( |
            | 
            ((copyRemoveAll index: i ) ensemble: e) initialize: d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | copy memory: list copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         initMaxNeighborCount: n = ( |
            | maxNeighborCount: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialize: d = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         nodeCount = ( |
            | ensemble nodeCount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            [childMustImplement].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         step = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | 
            ensembleMorph testFrom: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         communicatingObjects = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance abstract ensemble clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD ensemble.

CopyDowns:
globals renaissance abstract ensemble. clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)\x7fVisibility: public'
        
         gridSize <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         allNeighborsOf: aNode Do: blk = ( |
            | 
            manhattanNeighborsOf: aNode Do: blk.
             diagonalNeighborsOf: aNode Do: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: initialization\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         defaultSize = 20.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         diagonalNeighborsOf: aNode Do: blk = ( |
             c.
             m.
            | 
            c: aNode coordinates.
            m: gridSize pred.
            (c x > 0) && [c y > 0] ifTrue: [blk value: nodeAtCoordinate: c + (-1 @ -1)].
            (c x < m) && [c y > 0] ifTrue: [blk value: nodeAtCoordinate: c + ( 1 @ -1)].
            (c x < m) && [c y < m] ifTrue: [blk value: nodeAtCoordinate: c + ( 1 @  1)].
            (c x > 0) && [c y < m] ifTrue: [blk value: nodeAtCoordinate: c + (-1 @  1)].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: coordinates\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         indexFromPoint: p = ( |
            | 
            (p y * gridSize) + p x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: initialization\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeFrom: aDemo Size: n = ( |
            | 
            gridSize: n.
            resend.initializeFrom: aDemo Size: n square).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         manhattanNeighborsOf: aNode Do: blk = ( |
             c.
             m.
            | 
            c: aNode coordinates.
            m: gridSize pred.
            c x > 0  ifTrue: [blk value: nodeAtCoordinate: c - (1@0)].
            c y > 0  ifTrue: [blk value: nodeAtCoordinate: c - (0@1)].
            c x < m  ifTrue: [blk value: nodeAtCoordinate: c + (1@0)].
            c y < m  ifTrue: [blk value: nodeAtCoordinate: c + (0@1)].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: coordinates\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         nodeAtCoordinate: pt = ( |
            | 
            nodes at: indexFromPoint: pt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: coordinates\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pointFromIndex: i = ( |
            | (i % gridSize) @ (i / gridSize)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance twoD ensemble clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields ensemble.

CopyDowns:
globals renaissance twoD ensemble. clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         fieldFrequency = ( |
            | 
            [tune]. 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         realStep = ( |
            | 
            stepFields.
            stepPhase:
              stepPhase < fieldFrequency pred
                ifTrue: [stepPhase succ]
                False:  [stepParticles. 0 ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         step = ( |
            | 
            [tune].
            1 do: [realStep]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepFields = ( |
            | 
            nodes asVector randomlyDo: [|:n| n stepFields]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepParticles = ( |
            | 
            nodes asVector randomlyDo: [|:n| n stepParticles]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)'
        
         stepPhase <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields ensemble copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects ensemble.

CopyDowns:
globals renaissance fields ensemble. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0@0)'
        
         communicationCost <- 0@0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (false)'
        
         isAttractionEnabled <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)'
        
         messageTally <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: statistics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addCommunicationCost: pt = ( |
            | 
            communicationCost: communicationCost + pt.
            messageTally: messageTally succ).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         allObjects = ( |
            | 
            nodes gather: [|:n| n memory]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: initialization\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         defaultSize = ( |
            | 
            [tune.].
            16).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeCollaborators = ( |
             ao.
            | 
            ao: allObjects asVector.
            nodes do: [|:n| n initializeCollaboratorsFrom: ao].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: initialization\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         initializeStatistics = ( |
            | 
            resend.initializeStatistics.
            isAttractionEnabled: false.
            step.
            isAttractionEnabled: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: statistics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         meanCommunicationCost = ( |
            | 
            messageTally = 0 ifTrue: [(gridSize@gridSize) /= 3] False: [communicationCost /= messageTally]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pop2 = ( |
             n.
            | 
            n: gridSize pred.
            [tune].
            depopulate.
              (nodeAtCoordinate: ( n half + (gridSize/4)) @ n half) addObject: demo object copy.
              (nodeAtCoordinate: ( n half - (gridSize/4)) @ n half) addObject: demo object copy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         popLots = ( |
             n.
            | 
            depopulate.
            n: gridSize.
            [tune].
            200 do: [
              (nodeAtCoordinate: (random integer: n)@(random integer: n)) addObject: demo object copy.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         popSelector = ( |
            | 
            0 userQuery askMultipleChoice: 'How many?'
            Choices: ('two' & 'lots') asVector
            Results: ('pop2' & 'popLots') asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            resend.populate.
            popSelector sendTo: self.
            initializeCollaborators.
            initializeStatistics.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: statistics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         relativeCost = ( |
            | 
            1 min: ((meanCommunicationCost manhattanDistanceTo: 0@0) /= (gridSize /= 3) double )).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: statistics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         resetCommunicationCost = ( |
            | 
            communicationCost: 0@0.
            messageTally: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         step = ( |
            | resetCommunicationCost.
            resend.step).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals renaissance abstract ensembleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD ensembleMorph.

CopyDowns:
globals renaissance abstract ensembleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         drawNode: n On: aCanvas = ( |
             bb.
             r.
            | 
            bb: insetBaseBounds.
            r: node: n BoundsIn: bb.
            aCanvas rectangle: r
                        Color: paint named: 'darkGray'.
            n drawContentsOn: aCanvas Within: r.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialSize: aDemo = ( |
             n.
            | 
            n: pixelsPerNode * aDemo ensemble defaultSize.
            n@n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'renaissance twoD ensembleMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         node: n BoundsIn: aRectangle = ( |
             nodePixelSize.
            | 
            nodePixelSize: aRectangle size /= ensemble gridSize.
            (((n coordinates * nodePixelSize) + aRectangle origin) ## (nodePixelSize - 1))).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pixelsPerNode = 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            renaissance twoD ensembleMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance twoD ensembleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields ensembleMorph.

CopyDowns:
globals renaissance twoD ensembleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pixelsPerNode = 16.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields ensembleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects ensembleMorph.

CopyDowns:
globals renaissance fields ensembleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Comment: Draw the base of this morph on the given canvas.\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         baseDrawOn: aCanvas = ( |
            | 
            resend.baseDrawOn: aCanvas.
            drawCollaborationsOn: aCanvas.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         color = ( |
            | 
            ensemble ifNil: [^ resend.color].
            paint forTemperature: 0 max: 1 min: ensemble relativeCost).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         drawCollaborationsOn: aCanvas = ( |
            | 
            ensemble nodes do: [|:n|
               n objects do: [|:o| o drawCollaborationsOn: aCanvas ContrastingWith: color]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensembleMorph' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pixelsPerNode = 64.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance abstract node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD node.

CopyDowns:
globals renaissance abstract node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         allNeighbors = ( |
             r.
            | 
            r: list copyRemoveAll.
            allNeighborsDo: [|:n| r add: n].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         allNeighborsDo: blk = ( |
            | 
            manhattanNeighborsDo: blk.
            diagonalNeighborsDo: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         closestNeighborTo: aNode = ( |
             dir.
            | 
            dir: aNode coordinates - coordinates.
            ensemble nodeAtCoordinate: coordinates + ( 1 @ 1 min: -1 @ -1 max: dir)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         coordinates = ( |
            | 
            ensemble pointFromIndex: index).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         diagonalNeighbors = ( |
             r.
            | 
            r: list copyRemoveAll.
            diagonalNeighborsDo: [|:n| r add: n].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         diagonalNeighborsDo: blk = ( |
            | 
            ensemble diagonalNeighborsOf: self Do: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         drawContentsOn: aCanvas Within: aRect = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         manhattanNeighbors = ( |
             r.
            | 
            r: list copyRemoveAll.
            manhattanNeighborsDo: [|:n| r add: n].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         manhattanNeighborsDo: blk = ( |
            | 
            ensemble manhattanNeighborsOf: self Do: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         neighborsPassing: aBlock = ( |
             passes.
            | 
            passes: list copyRemoveAll.
            allNeighborsDo:[|:n| (aBlock value: n)
               ifTrue:[passes add: n]].
            ^passes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> () From: ( | {
         'Category: neighbors\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         randomNeighbor = ( |
             an.
            | 
            an: allNeighbors.
            ^an at: random integer:an size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance twoD node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields node.

CopyDowns:
globals renaissance twoD node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         currentFieldState.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addParticle: p = ( |
            | 
            memory addLast: p.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: field state\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         fieldState = ( |
            | currentFieldState).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: field state\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         fieldState: fs = ( |
            | 
            priorFieldState: currentFieldState.
            currentFieldState: fs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initialize: d = ( |
            | 
            fieldState: d fieldState copy.
            priorFieldState: fieldState).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         neighbors = ( |
            | 
            allNeighbors).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         particlePeriod = 10.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | resetFieldState).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: field state\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         resetFieldState = ( |
            | 
            fieldState: fieldState copyReset.
            priorFieldState: fieldState).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepFields = ( |
             directions.
             fields.
             n.
             priorFields.
            | 
            n: neighbors asVector.
            fieldState:
              fieldState 
                updateWas: priorFieldState 
                Particles: memory
                NeighboringFields: (n copyMappedBy: [|:n| n fieldState])
                NeighboringPriors: (n copyMappedBy: [|:n| n priorFieldState])
                Directions:        (n copyMappedBy: [|:n| n coordinates - coordinates])
                MaxNeighborCount:  maxNeighborCount.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepParticles = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         priorFieldState.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects node.

CopyDowns:
globals renaissance fields node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addObject: obj = ( |
            | 
            addParticle: obj myVM: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         density = ( |
            | memory size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         doAMethodInEachObject = ( |
            | 
            objects do: [|:o| o doAMethod].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         drawContentsOn: aCanvas Within: aRect = ( |
             n.
             p.
             r = 8.
            | 
            objects isEmpty ifTrue: [^ self].
            n: aRect width /+ r double.
            objects asVector do: [|:x. :i. ctr|
              ctr:  aRect topLeft + (r@r) + (((i % n) @ (i / n)) * r double).
              x centerCache: ctr.
              x radiusCache: r.
              x drawOn: aCanvas.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         fullOfObjects = ( |
            | ^objects size = 16).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeCollaboratorsFrom: ao = ( |
            | 
            memory do: [|:o| o initializeCollaboratorsFrom: ao].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         move: anObj To: aNode = ( |
            | 
            [tune].
            aNode fullOfObjects  ifTrue: [^ self].
            memory: (memory asSet remove: anObj) asList.
            aNode addObject: anObj.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         objects = ( |
            | memory).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         sendMessageFrom: srcObj To: dstObj = ( |
             cn.
             dstVM.
             passes.
             srcVM.
            | 
            srcVM: srcObj myVM.
            dstVM: dstObj myVM.
            ensemble addCommunicationCost: (srcVM coordinates - dstVM coordinates) absoluteValue.
            srcVM = dstVM ifTrue: [^ self].
            cn: srcVM closestNeighborTo: dstVM.
            ensemble isAttractionEnabled ifFalse: [^ self].
            cn fullOfObjects ifTrue:[
              passes: cn neighborsPassing:[|:n| n fullOfObjects not].
              passes isEmpty ifTrue:[^self]
                False:[cn: passes at: random integer: passes size]
            ].
            srcVM move: srcObj To: cn.
            [tune].
            dstVM move: dstObj To: dstVM closestNeighborTo: srcVM.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepParticles = ( |
            | 
            doAMethodInEachObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( | {
         'Category: particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         particle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields particle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields particle parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         attractionTo: aFieldState = ( |
            | 
            0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         incrementRestingTime = ( |
            | restingTime: restingTime succ).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         resetRestingTime = ( |
            | restingTime: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)'
        
         restingTime <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> () From: ( | {
         'Category: particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         object = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields particle copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects object.

CopyDowns:
globals renaissance fields particle. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0@0)'
        
         centerCache <- 0@0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (vector)'
        
         collaborators <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         myVM.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance communicatingObjects object parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         color = ( |
            | paint named: 'blue').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy collaborators: collaborators copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         doAMethod = ( |
             c.
            | 
            collaborators isEmpty ifTrue: [^ self].
            c: collaborators at: random integer: collaborators size.
            myVM sendMessageFrom: self To: c.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         drawCollaborationsOn: aCanvas ContrastingWith: aPaint = ( |
            | 
            collaborators do:[|:o|
               aCanvas line: centerCache To: o centerCache Color: aPaint asDisneyOutlineColor].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         drawOn: aCanvas = ( |
            | 
             aCanvas fillCircleCenteredAt: centerCache
                                  Diameter: radiusCache double
                                     Color: color.
             aCanvas text: collaborators size printString At: centerCache + (-2@4) Color: color asDisneyOutlineColor.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeCollaboratorsFrom: ao = ( |
             max = 5.
             n.
            | 
            [tune].
            n: random integer: max succ.
            collaborators: vector copySize: n.
            n do: [ |:i| 
              collaborators at: i Put: [ |:exit. x|
                 x: ao at: random integer: ao size.
                 == x ifFalse: [exit value: x].
              ] loopExitValue.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (1)'
        
         radiusCache <- 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         fields = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'communicatingObjects' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         containsDemo: aSlot = ( |
            | 
                (aSlot visibility = visibility publicSlot)
            &&  [aSlot category = 'demos']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton: 
              (((ui2Button copy
               label: 'Renaissance demo')
               isAsynchronous: true )
               scriptBlock: [renaissance test] )
              ToGroup: 'applications'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         defaultButtonHolder <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         electronPlasma = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'Category: particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         particle = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields particle copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma particle.

CopyDowns:
globals renaissance fields particle. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma particle parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         attractionTo: aFieldState = ( |
            | 
            aFieldState e * charge negate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'Category: particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         electron = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'electron' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance electronPlasma particle copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'electron' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma electron.

CopyDowns:
globals renaissance electronPlasma particle. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'electron' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'electron' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma electron parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'electron' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         charge = -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'electron' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields ensemble clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma ensemble.

CopyDowns:
globals renaissance fields ensemble. clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: ((-1 & 0 & 1) asVector)'
        
         eExtrema <- (-1 & 0 & 1) asVector.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'ensemble' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pop12 = ( |
             n.
            | 
            depopulate.
            n: gridSize pred.
            3 do: [
              (nodeAtCoordinate: 0@0) addParticle: demo electron copy.
              (nodeAtCoordinate: n@n) addParticle: demo electron copy.
              (nodeAtCoordinate: n@0) addParticle: demo proton copy.
              (nodeAtCoordinate: 0@n) addParticle: demo proton copy.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pop2 = ( |
             n.
            | 
            n: gridSize pred.
            [tune].
            depopulate.
              (nodeAtCoordinate: ( n half + 6)@ n half) addParticle: demo electron copy.
              (nodeAtCoordinate: (n half - 6) @ n half) addParticle: demo proton copy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pop2e = ( |
             n.
            | 
            n: gridSize pred.
            depopulate.
              (nodeAtCoordinate: n half @ n half) addParticle: demo electron copy.
              (nodeAtCoordinate: n half @ n half succ) addParticle: demo electron copy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pop4 = ( |
             n.
            | 
            n: gridSize pred.
            depopulate.
              (nodeAtCoordinate: 0@0) addParticle: demo electron copy.
              (nodeAtCoordinate: n@n) addParticle: demo electron copy.
              (nodeAtCoordinate: n@0) addParticle: demo proton copy.
              (nodeAtCoordinate: 0@n) addParticle: demo proton copy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         pop4e = ( |
             n.
            | 
            n: gridSize pred.
            depopulate.
              (nodeAtCoordinate: n half @ n half) addParticle: demo electron copy.
              (nodeAtCoordinate: n half @ n half succ) addParticle: demo electron copy.
              (nodeAtCoordinate: n half succ @ n half) addParticle: demo electron copy.
              (nodeAtCoordinate: n half succ @ n half succ) addParticle: demo electron copy.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: populating\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         popLots = ( |
             n.
            | 
            depopulate.
            n: gridSize pred.
            60 do: [
              (nodeAtCoordinate: (random integer: n)@(random integer: n)) addParticle: demo electron copy.
              (nodeAtCoordinate: (random integer: n)@(random integer: n)) addParticle: demo proton copy.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         popSelector = ( |
            | 
            0 userQuery askMultipleChoice: 'How many?'
            Choices: ('two' & 'four' & '12' & 'two electrons' & 'four electrons' & 'lots') asVector
            Results: ('pop2' & 'pop4' & 'pop12' & 'pop2e' & 'pop4e' & 'popLots') asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            resend.populate.
            popSelector sendTo: self.
            100 do: [stepFields].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         setEExtrema = ( |
             es.
             max.
             mean.
             min.
            | 
            es: nodes copyMappedBy: [|:n| n fieldState e].
            min: es min.
            mean: es mean.
            max: es max.
            eExtrema: (min & mean & max) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         step = ( |
            | 
            resend.step. setEExtrema).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (nil)'
        
         popSel.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         fieldState = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields fieldState.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance fields fieldState parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReset = ( |
            | copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> 'parent' -> () From: ( | {
         'Comment: d + my coords -> other node coords\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         updateWas: myPrior Particles: particles NeighboringFields: fs NeighboringPriors: ps Directions: ds MaxNeighborCount: maxNeighborCount = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         fieldState = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields fieldState copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma fieldState.

CopyDowns:
globals renaissance fields fieldState. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)'
        
         e <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma fieldState parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         - x = ( |
            | e - x e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addDelta: delta = ( |
            | 
            delta = 0 ifTrue: [^ self].
            [
            (e + delta) >  2 ifTrue: [halt].
            (e + delta) < -2 ifTrue: [halt].
            ].
            copy e: e + delta).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         copyE: newE = ( |
            | 
            copy e: 1000000 min: -100000 max: newE).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReset = ( |
            | copy e: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'fieldState' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | 'e=', e printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'Comment: d + my coords -> other node coords\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         updateWas: myPrior Particles: particles NeighboringFields: fs NeighboringPriors: ps Directions: ds MaxNeighborCount: maxNeighborCount = ( |
             c.
             newE.
             phantomNeighborsUseAverage = bootstrap stub -> 'globals' -> 'true' -> ().
             s <- 0.
            | 
            c: (particles asVector copyMappedBy: [|:p| p charge]) sum.
            [tune].
            s: (fs copyMappedBy: [|:f| f e asFloat]) sum /= (phantomNeighborsUseAverage ifTrue: [fs size] False: maxNeighborCount) .
            [maxNeighborCount = fs size ifFalse: [s: 0].].
            newE: c + s.
            newE = e ifTrue: [self] False: [copyE: newE]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         withoutCharge: c = ( |
            | 
            c = 0 ifTrue: [self] False: [copyE: e - c]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma node.

CopyDowns:
globals renaissance fields node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addParticle: p = ( |
            | 
            resend.addParticle: p.
            currentFieldState: fieldState addDelta: p charge.
            netCharge = 0 ifTrue: [annihillate].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping fields\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         adjustedFieldStateIsSelf: isSelf = ( |
             omitMyCharge = bootstrap stub -> 'globals' -> 'false' -> ().
            | 
            [tune].
            isSelf && omitMyCharge
              ifFalse: [fieldState] 
                 True: [fieldState withoutCharge: netCharge]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         annihillate = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         bestNodeFor: p = ( |
             dst.
             max.
             pts.
             r.
            | 
            pts: neighbors copy.
            p restingTime > restPeriod ifFalse: [pts addLast: self].
            p incrementRestingTime.
            pts: (pts
              copyFilteredBy: [|:n| n memory isEmpty])
              copyMappedBy: [|:n| (p attractionTo: n adjustedFieldStateIsSelf: == n) @ n].
            pts isEmpty ifTrue: [^ self].
            max: (pts copyMappedBy: [|:p| p x]) max.
            pts: pts filterBy: [|:pt| pt x = max] Into: list copyRemoveAll.
            dst: pts asVector at: random integer: pts size.
            r: dst y.
            r = self ifFalse: [p resetRestingTime].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         doSomethingWith: p = ( |
            | 
            (bestNodeFor: p) addParticle: p.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         drawContentsOn: aCanvas Within: aRect = ( |
             c.
             max.
             mean.
             min.
             x.
            | 
            [tune].
            min: ensemble eExtrema first  asFloat.
            mean: (ensemble eExtrema at: 1) asFloat.
            max: ensemble eExtrema last  asFloat.
            x: 0 max: 1 min: ((fieldState e - mean) /= (max - min)) + 0.5.
            aCanvas fillRectangle: aRect Color: paint forTemperature: x.

            c: netCharge.
            c = 0 ifTrue: [^ self].

            aCanvas fillCircleCenteredAt: aRect center 
                                Diameter: (aRect width min: aRect height) - 6
                                   Color:  paint named: (c < 0 ifTrue: 'black' False: 'white')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         neighbors = ( |
             all = bootstrap stub -> 'globals' -> 'true' -> ().
            | 
            [tune]. 
            all ifTrue: [allNeighbors] False: [manhattanNeighbors]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         netCharge = ( |
            | (memory copyMappedBy: [|:p| p charge]) sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            resend.populate.
            memory removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         removeFirstParticle = ( |
             p.
            | 
            p: memory removeFirst.
            currentFieldState: fieldState addDelta: p charge negate.
            p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         restPeriod = ( |
            | 
            [tune]. infinity).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepParticles = ( |
            | 
            memory isEmpty ifFalse: [
              doSomethingWith: removeFirstParticle
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)'
        
         restingTime <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> () From: ( | {
         'Category: particles\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         proton = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'proton' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance electronPlasma particle copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'proton' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma proton.

CopyDowns:
globals renaissance electronPlasma particle. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'proton' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'proton' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance electronPlasma proton parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'proton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         charge = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'proton' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'particle' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         twoD = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         gas = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         object = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'object' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD object.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         atom = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'object' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance twoD ensemble clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas ensemble.

CopyDowns:
globals renaissance twoD ensemble. clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         atomCount = ( |
            | 
            0 userQuery askMultipleChoice: 'How many?'
            Choices: ('one' & 'two' & '10%' & '25%' &  '50%' & '75%' & '90%' & 'N-1' & 'N') asVector
            Results: (1 & 2 & (nodeCount / 10) & (nodeCount / 4) & (nodeCount / 2) & ((3 * nodeCount) / 4) & (nodeCount * 0.9) asInteger &  nodeCount pred & nodeCount) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         defaultSize = 20.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensemble' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         toggleAlgorithm = ( |
            | restless: restless not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (false)'
        
         restless <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals renaissance twoD ensembleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas ensembleMorph.

CopyDowns:
globals renaissance twoD ensembleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addCustomButtonsTo: menu = ( |
            | 
            menu addButtonTarget: self ScriptBlock: [target ensemble toggleAlgorithm] 
              Label: ensemble restless ifTrue: 'Do not be restless' False: 'Be restless'.
            menu addDivider.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         morphTypeName = 'renaissance gas ensembleMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'ensembleMorph' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'ensembleMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            renaissance gas ensembleMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance twoD node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas node.

CopyDowns:
globals renaissance twoD node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: atomic migration\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         addParticle: a = ( |
            | 
            pre. memory add: a. post).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         attic = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> 'attic' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance gas node parent attic.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> 'attic' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         maybeSendAtomTo: aNode = ( |
            | 
            (shouldSendAtomTo: aNode)  ifTrue: [sendAtomTo: aNode].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> 'attic' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         shouldSendAtomTo: aNode = ( |
            | 
            memory size = 0 ifTrue: [^ false].
            ensemble restless 
            ifTrue: [(densityForComparisonOf: aNode) <= myDensityForComparison]
             False: [(densityForComparisonOf: aNode) <  myDensityForComparison]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> 'attic' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            manhattanNeighbors asVector randomlyDo: [|:n|
              stepWith: n
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> 'attic' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         stepWith: aNode = ( |
            | 
            maybeSendAtomTo: aNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         benefitToSendAnAtomTo: aNode = ( |
            | 
            myDensityForComparison - (otherDensityForComparisonOf: aNode)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         bestNeighborIn: neighbors Benefits: benefits = ( |
             bestOnes.
             max.
            | 
            max: benefits max.
            bestOnes: list copyRemoveAll.
            neighbors with: benefits Do: [|:n. :b|
              b = max  ifTrue: [bestOnes add: n]
            ].
            bestOnes asVector at: random integer: bestOnes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         density = ( |
            | memory size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         drawContentsOn: aCanvas Within: aRect = ( |
            | 
            memory isEmpty ifTrue: [^ self].
            aCanvas fillCircleCenteredAt: aRect center 
                                Diameter: (aRect width min: aRect height) - 2
                                   Color: paint named:  density > 1 ifTrue: 'red' False: 'blue'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         myDensityForComparison = ( |
            | density).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         neighbors = ( |
            | manhattanNeighbors).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         otherDensityForComparisonOf: aNode = ( |
            | aNode density).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            memory removeAll.
            coordinates = (ensemble gridSize @ ensemble gridSize) half ifFalse: [^ self].
            ensemble atomCount do: [addParticle: renaissance gas object copy].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: hooks for stigmergy\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         post = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: hooks for stigmergy\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         pre = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: atomic migration\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         removeAtom = ( |
             r.
            | 
            pre.
            r: memory removeFirst.
            post.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         sendAtomTo: aNode = ( |
            | 
            aNode addParticle: removeAtom.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         shouldSendAnAtom: benefits = ( |
             max.
             min.
            | 
            max: benefits max.
            max <= 0 ifTrue: [^ false]. "no way to help, can only hurt"
            ensemble restless ifTrue: [^ max > 0]. "do something even if just equally loading up a neighbor"
            "not restless: interesting case is I have one more than some neighbor and one less than some other neighbor"
            max > 1 ifTrue: [^ true].
            min: benefits min.
            min < 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> () From: ( | {
         'Category: stepping\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
             benefits.
             candidates.
             mns.
            | 
            memory size = 0 ifTrue: [^ self].
            mns: manhattanNeighbors asVector.
            benefits: mns copyMappedBy: [|:n| benefitToSendAnAtomTo: n].
            (shouldSendAnAtom: benefits) ifFalse: [^ self].
            sendAtomTo: bestNeighborIn: mns Benefits: benefits).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         heatColor: p = ( |
             ap.
             cs.
             e.
             s.
             x.
            | 
            cs: ('blue' & 'green' & 'yellow' & 'red') asVector.
            x: cs size asFloat inverse.
            ap: p * cs size pred.
            (paint named: (cs at: ap floor)) interpolate: (ap - ap floor) From: paint named: (cs at: ap ceil)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         monopoles = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance monopoles.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         electron = ( |
            | monopole).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         fieldState = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'fieldState' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance electronPlasma fieldState copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'fieldState' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance monopoles fieldState.

CopyDowns:
globals renaissance electronPlasma fieldState. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'fieldState' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'fieldState' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance monopoles fieldState parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'fieldState' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> 'fieldState' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         monopole = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance fields particle copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance monopoles monopole.

CopyDowns:
globals renaissance fields particle. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance monopoles monopole parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         attractionTo: aFieldState = ( |
            | 
            aFieldState e * charge).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         charge = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> 'monopole' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'fields' -> 'particle' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'electronPlasma' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'monopoles' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         proton = ( |
            | monopole).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         popUpMenu: evt = ( |
             menu.
            | 
            menu: ui2Menu copy.
            (asMirror asList copyFilteredBy: [|:s| containsDemo: s])
              asVector sort do: [|:s|
                 menu addButtonTarget: s AsynchronousScriptBlock: [target contents reflectee test] Label: 'Test ', s name].
            defaultButtonHolder: menu initializeDefaultButtonHolder: defaultButtonHolder.
            menu popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         sortDemo = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensemble' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance abstract ensemble clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo ensemble.

CopyDowns:
globals renaissance abstract ensemble. clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         defaultSize = 100.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensemble' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals renaissance abstract ensembleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo ensembleMorph.

CopyDowns:
globals renaissance abstract ensembleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         drawNode: n On: aCanvas = ( |
             bb.
             max.
             s.
             x.
            | 
            bb: insetBaseBounds.
            s: bb size.
            x: (n index /= ensemble nodeCount) * s x.
            max: (ensemble nodes copyMappedBy: [|:n| n maxValue]) max.
            aCanvas line: bb bottomLeft  +  (x @ 0) 
              To: bb bottomLeft + (x @ ((n memory first value /= max) * s y) negate ) 
              Color: paint named: 'red'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'renaissance sortDemo ensembleMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'ensembleMorph' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'ensembleMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            renaissance sortDemo ensembleMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance abstract node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo node.

CopyDowns:
globals renaissance abstract node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         maxValue = ( |
            | 
            (memory asVector copyMappedBy: [|:o| o value]) max).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         neighbors = ( |
             r.
            | 
            r: list copyRemoveAll.
            index > 0 ifTrue: [r add: ensemble nodes at: index pred].
            index < ensemble nodes size pred ifTrue: [r add: ensemble nodes at: index succ].
            r asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         populate = ( |
            | 
            memory removeAll add: ensemble demo sortingNumber copyForNode: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         prevNode = ( |
            | ensemble nodes at: index pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
             a.
             b.
            | 
            index = 0 ifTrue: [^ self].
            memory first value >= prevNode memory first value ifTrue: [^ self].
            a: prevNode memory removeFirst.
            b: memory removeFirst.
            prevNode memory add: b.
            memory add: a.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         sortingNumber = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo sortingNumber.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance sortDemo sortingNumber parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         copyForNode: n = ( |
            | 
            resend.copy initializeForNode: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         initializeForNode: n = ( |
            | 
            value: random integer: n nodeCount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'sortDemo' -> 'sortingNumber' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (-1)'
        
         value <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'Category: demos\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         stigmergicGas = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance stigmergicGas.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap define: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals renaissance gas node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance stigmergicGas node.

CopyDowns:
globals renaissance gas node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: InitializeToExpression: (0)'
        
         decayingDensity <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance stigmergicGas node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         currentWeight = 0.5.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         myDensityForComparison = ( |
            | 
            density).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         otherDensityForComparisonOf: aNode = ( |
            | 
            aNode decayingDensity).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         pre = ( |
            | 
            decayingDensity: (density * currentWeight) + (decayingDensity * (1 - currentWeight))).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'stigmergicGas' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'gas' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | popUpMenu: process this birthEvent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         testColors = ( |
             wc.
            | 
            wc: process this birthEvent sourceHand world winCanvases first.
            0 to: 32 * 32 By: 32 Do: [|:i|
               wc fillRectangle: (i@20) ## (32@32) 
                          Color:   paint forTemperature: i asFloat /= (32*32)].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'object' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals renaissance twoD object parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'renaissance' -> 'twoD' -> () From: ( | {
         'ModuleInfo: Module: renaissance InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'renaissance' -> 'abstract' -> ().
        } | ) 



 '-- Side effects'

 globals modules renaissance postFileIn
