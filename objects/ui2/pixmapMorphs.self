 'Sun-$Revision: 30.10 $'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Applications\x7fCategory: Histogram\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         imageMorph = bootstrap define: bootstrap stub -> 'globals' -> 'imageMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'imageMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals imageMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 


 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'imageMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         image <- bootstrap stub -> 'globals' -> 'ui2Image' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'Category: ui2\x7fCategory: Applications\x7fCategory: Histogram\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         imageMorph = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( |
             {} = 'Comment: An imageMorph displays a ui2Image (i.e., a masked pixmap).\x7fModuleInfo: Creator: traits imageMorph.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'imageMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'imageMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot'
        
         pixmapMorphs = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules pixmapMorphs.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'ui2'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot'
        
         myComment <- 'This module provide support for pixmaps and pixmap movies.'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- 'Sun-$Revision: 30.10 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'pixmapMorphs' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: ui2\x7fCategory: Applications\x7fCategory: Histogram\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         movieMorph = bootstrap define: bootstrap stub -> 'globals' -> 'movieMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals movieMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         currentFrame <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         frameIncrement <- 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         frames <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         lastFrameTime <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         msecsPerFrame <- 100.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'Category: ui2\x7fCategory: Applications\x7fCategory: Histogram\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         movieMorph = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( |
             {} = 'Comment: A movieMorph displays a sequence of ui2Images.\x7fModuleInfo: Creator: traits movieMorph.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'movieMorph' -> ().
        } | ) 


 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: geometry\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         baseContainsPt: p = ( |
             localP.
             pixelValue.
            | 
            (baseBounds includes: p) ifFalse: [ ^false ].
            image masked ifFalse: [ ^true ].

            "p falls within the bounds of a masked image;
             does it hit a non-transparent pixel?"
            localP: p - baseBounds origin.
            pixelValue:
                image pixelData
                          at: ((image width * localP y) + localP x)
                    IfAbsent: [ ^false ].
            pixelValue != image transparentPixelValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         baseDrawOn: c = ( |
            | 
            c image: image At: position.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         contentsChanged = ( |
            | 
            image contentsChangedFlag: true.
            setWidth: image width Height: image height.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyImage: i = ( |
            | copy setImage: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: drawing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         isRectangular = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'imageMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'imageMorph' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         setImage: i = ( |
            | 
            image: i.
            contentsChanged.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         contentsChanged = ( |
            | 
            frames do: [| :frame | frame contentsChangedFlag: true ].
            updateDimensions.
            changed.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFrames: imageList = ( |
             new.
            | 
            new: copy.
            new frames: imageList.
            new currentFrame: 0.
            new contentsChanged.
            new).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         framesPerSecond = ( |
            | 
            msecsPerFrame = 0 ifTrue: infinity False: [(1000 / msecsPerFrame) asInteger]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         framesPerSecond: fps = ( |
            | 
            msecsPerFrame: fps = 0 ifTrue: infinity False: [1000.0 /= fps]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         image = ( |
            | frames at: currentFrame).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'movieMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'ModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'imageMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         snowWhiteExample = ( |
            | 
            " Double-click after the left quote below and select Get It
              from the middle-button menu"
            " movieMorph snowWhiteExample "

            movieMorph copyFrames: snowWhiteFrames).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: examples\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         snowWhiteFrames = ( |
            | 
            "Read in twelve frames of a simple flipbook, assuming that given image
             files (in Sun rasterFile format) are in your current directory."

            (
            (ui2Image copyFromSunRasterFile: 'SW.50.1.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.2.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.3.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.4.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.5.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.6.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.7.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.8.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.9.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.10.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.11.ras') &
            (ui2Image copyFromSunRasterFile: 'SW.50.12.ras')
            ) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         startGettingStepped = ( |
            | 
            lastFrameTime: times real msec.
            resend.startGettingStepped.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
             deltaT.
            | 
            deltaT: times real msec - lastFrameTime.
            deltaT >= msecsPerFrame ifTrue: [
                currentFrame: (currentFrame + frameIncrement) % frames size.
                updateDimensions.
                changed.
                lastFrameTime: times real msec.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'movieMorph' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: pixmapMorphs InitialContents: FollowSlot\x7fVisibility: private'
        
         updateDimensions = ( |
             bbnds.
             f.
            | 
            f: (frames at: currentFrame).
            bbnds: baseBounds.
            ((bbnds width  != f  width) ||
             [bbnds height != f height]) ifTrue: [
                setWidth: f width Height: f height.
            ].
            self).
        } | ) 


 '-- Side effects'

 globals modules pixmapMorphs postFileIn
