 '$Revision:$'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         uiOnX11 = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules uiOnX11.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'ui1'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'uiOnX11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         abstractX11Traits = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends abstractX11Traits.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         boxSizePlatformMixin = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> 'boxSizePlatformMixin' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends abstractX11Traits boxSizePlatformMixin.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         optimalNameForDisplay: disp = ( |
             myhost.
            | 
            myhost: os nodename , ':'.
            (myhost isPrefixOf: disp) ifFalse: [disp] True: [ 
               "use :0 rather than name:0 -- much faster"
               disp copyFrom: myhost size - 1
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> () From: ( | {
         'Comment: the X11 graphics backend. Inherits the generic (quartz parent) backend -- makeOffscreenFor:/makeWindowBitmapFor:/plane masks/erase are platform-polymorphic via bitmap copyFor:Size: and windowBitmap planeMask:, exactly as the pre-seam uiWorld code. Only present: and installShadowOn: are overridden: X has no shadow buffer and blits the windowBitmap straight to the window. -- claude & dmu 6/2026\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         x11 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends x11.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: cached colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)'
        
         cachedColormap0 <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: cached colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)'
        
         cachedColormap1 <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: cached colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)'
        
         cachedColormapBothArrowPlanes <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: cached colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)'
        
         cachedColormapNoAcetate <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)\x7fVisibility: public'
        
         colormap0 <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)\x7fVisibility: public'
        
         colormap1 <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)\x7fVisibility: public'
        
         colormapBothArrowPlanes <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         colormapCacheFinalize: ranimator = ( |
            | deleteCachedColormaps: ranimator).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         colormapFinalize: ranimator = ( |
            | 
            deleteColormaps: ranimator).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         colormapInitializeWindow: window Animator: ranimator = ( |
            | 
            makeAndConvertColormapsWindow: window Animator: ranimator.
            installColormap0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: state\x7fCategory: colormaps\x7fModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (uiColormap)\x7fVisibility: public'
        
         colormapNoAcetate <- bootstrap stub -> 'globals' -> 'uiColormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         convertColormaps: ranimator = ( |
            | 
            colormap0 colorsFromCache: cachedColormap0.
            colormap1 colorsFromCache: cachedColormap1.
            colormapBothArrowPlanes
                      colorsFromCache: cachedColormapBothArrowPlanes.
            colormapNoAcetate colorsFromCache: cachedColormapNoAcetate.
            ranimator convertColormaps.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            r: resend.copy.
            r cachedColormap0:               cachedColormap0 copy.
            r cachedColormap1:               cachedColormap1 copy.
            r cachedColormapBothArrowPlanes: cachedColormapBothArrowPlanes copy.
            r cachedColormapNoAcetate:       cachedColormapNoAcetate       copy.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         createCachedColormapsColors: uiColors Animator: ranimator = ( |
            | 
            deleteCachedColormaps: ranimator.
            cachedColormap0: uiColormap copyWithRep: cachedColormap copyGraphicsGlobals.
            cachedColormap1: uiColormap copyWithRep: cachedColormap copyGraphicsGlobals.

            cachedColormapBothArrowPlanes:
                             uiColormap copyWithRep: cachedColormap copyGraphicsGlobals.
            cachedColormapNoAcetate:
                             uiColormap copyWithRep: cachedColormap copyGraphicsGlobals.
            fillCachedColormapsColors: uiColors Animator: ranimator.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         createColormapsColors: uiColors Animator: ranimator = ( |
            | 
            createCachedColormapsColors: uiColors Animator: ranimator.
            convertColormaps; ranimator.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         deleteCachedColormaps: ranimator = ( |
            | 
            cachedColormap0 delete.
            cachedColormap1 delete.
            cachedColormapBothArrowPlanes delete.
            cachedColormapNoAcetate delete.
            ranimator deleteCachedColormaps.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         deleteColormaps: ranimator = ( |
            | 
            colormap0 delete.
            colormap1 delete.
            colormapBothArrowPlanes delete.
            colormapNoAcetate delete.
            ranimator deleteColormaps.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         fillCachedColormapsColors: uiColors Animator: ranimator = ( |
            | 
            cachedColormap0 arrowPlane0MakeText: uiColors text
                                 TextBackground: uiColors body
                                     Background: uiColors background
                                          Arrow: uiColors arrow
                                         ColorA: uiColors bodyLight
                                         ColorB: uiColors unused
                                         ColorC: uiColors bodyDark
                                    Transparent: uiColors transparent
                             ArrowPlusTopPlanes: uiColors arrowPlusTopPlanes.

            cachedColormap1 arrowPlane1MakeText: uiColors text
                                 TextBackground: uiColors body
                                     Background: uiColors background
                                          Arrow: uiColors arrow
                                         ColorA: uiColors bodyLight
                                         ColorB: uiColors unused
                                         ColorC: uiColors bodyDark
                                    Transparent: uiColors transparent
                             ArrowPlusTopPlanes: uiColors arrowPlusTopPlanes.

            cachedColormapBothArrowPlanes
                        bothArrowPlanesMakeText: uiColors text
                                 TextBackground: uiColors body
                                     Background: uiColors background
                                          Arrow: uiColors arrow
                                         ColorA: uiColors bodyLight
                                         ColorB: uiColors unused
                                         ColorC: uiColors bodyDark
                                    Transparent: uiColors transparent
                             ArrowPlusTopPlanes: uiColors arrowPlusTopPlanes.

            cachedColormapNoAcetate makeNoAcetateFrom: cachedColormap0
                                          Transparent: uiColors transparent.
            ranimator createCachedColormapsGraphicsBackend: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         graphicsGlobals = bootstrap stub -> 'globals' -> 'x11Globals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         installColormap0 = ( |
            | colormap0 installAndFixMultiprocessorColormapBugIfPreferencesSaySo).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         invalidateAllColormaps: ranimator = ( |
            | 
            cachedColormap0 invalidate.
            cachedColormap1 invalidate.
            cachedColormapBothArrowPlanes invalidate.
            cachedColormapNoAcetate invalidate.
            colormap0 invalidate.
            colormap1 invalidate.
            colormapBothArrowPlanes invalidate.
            colormapNoAcetate invalidate.
            ranimator invalidateAllColormaps.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         makeAndConvertColormapsWindow: window Animator: ranimator = ( |
            | 
            colormap0: uiColormap copyWithRep:
                                     cachedColormap0 convertForWindow: window PlatformColormap: platformColormap.
            colormap1: uiColormap copyWithRep:
                                     cachedColormap1 convertForWindow: window PlatformColormap: platformColormap.
            colormapBothArrowPlanes: uiColormap copyWithRep:
                       cachedColormapBothArrowPlanes convertForWindow: window PlatformColormap: platformColormap.
            colormapNoAcetate:
              uiColormap copyWithRep:
                            cachedColormapNoAcetate convertForWindow: window PlatformColormap: platformColormap.
            ranimator makeAndConvertColormapsFor: window  PlatformColormap: platformColormap.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         makeCachedColormap0 = ( |
            | 
            cachedColormap0 delete.
            cachedColormap0: uiColormap copyWithRep: cachedColormap copy.
            cachedColormap0 arrowPlane0MakeText: uiColors text
                                 TextBackground: uiColors body
                                     Background: uiColors background
                                          Arrow: uiColors arrow
                                         ColorA: uiColors bodyLight
                                         ColorB: uiColors unused
                                         ColorC: uiColors bodyDark
                                    Transparent: uiColors transparent
                             ArrowPlusTopPlanes: uiColors arrowPlusTopPlanes.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'Category: colormaps\x7fCategory: behavior\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         makeColormap0 = ( |
            | 
            makeCachedColormap0.
            colormap0 colorsFromCache: cachedColormap0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         name = 'x'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         patterns = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> 'patterns' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends x11 patterns.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: public'
        
         platformColormap = ( |
            | xlib colormap).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         platformPixmap = ( |
            | xlib pixmap).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         window = ( |
            | x11Globals window).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         x11OnCanvas = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11OnCanvas' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends x11OnCanvas.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11OnCanvas' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy windowCanvas: windowCanvas copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11OnCanvas' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractX11Traits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11OnCanvas' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         window = ( |
            | windowCanvas platformWindow).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11OnCanvas' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: InitializeToExpression: (x11Globals windowCanvas)'
        
         windowCanvas <- bootstrap stub -> 'globals' -> 'x11Globals' -> 'windowCanvas' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'xlib' -> 'window' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         platformPixmap = ( |
            | xlib pixmap).
        } | ) 



 '-- Side effects'

 globals modules uiOnX11 postFileIn
