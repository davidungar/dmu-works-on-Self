 '$Revision:$'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         ui1OnQuartz = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules ui1OnQuartz.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'graphics'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         rgbaContext = bootstrap define: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaContext' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals quartz context deadCopy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals quartz rgbaContext.

CopyDowns:
globals quartz context. deadCopy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         rgbaContext = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits quartz rgbaContext.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> () From: ( | {
         'Category: graphics (ui1)\x7fComment: ui1 TRUE-COLOUR offscreen pixmap on Quartz (RGBA rewrite): a 32-bit BGRA drawable backed by an rgbaContext, antialiasing ON. Like indexedPixmap but true colour -- the only blit that differs is copyArea: (snapshot + drawImage). -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         rgbaPixmap = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals quartz rgbaPixmap.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (quartz rgbaContext deadCopy)\x7fVisibility: private'
        
         context.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         height <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: true = opaque base layer (BGRX); false = transparent overlay (acetate/arrows). -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         opaque <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> () From: ( | {
         'Category: graphics (ui1)\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         rgbaPixmap = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits quartz rgbaPixmap.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         width <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'platformWindow' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         makeRGBAShadow = ( |
            | 
            shadow ifNotNil: [ shadow delete ].
            shadow: quartz rgbaPixmap createForSameScreenAs: self Size: size Depth: 32.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         foreground8Bit: cme = ( |
            | 
            setFillColorRed:   cme red   asFloat / 255.0
                       Green:  cme green asFloat / 255.0
                        Blue:  cme blue  asFloat / 255.0
                       Alpha:  1.0.
            setStrokeColorRed: cme red   asFloat / 255.0
                        Green: cme green asFloat / 255.0
                         Blue: cme blue  asFloat / 255.0
                        Alpha: 1.0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         function: f = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'quartz' -> 'context' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         plane_mask: m = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: true-colour blit: snapshot this offscreen to a CGImage and drawImage it into the destination drawables context at destPt. Replaces the indexed byte-copy. srcRect partial-area + plane mask are ignored for now (whole-buffer snapshot); refine with dirty rects later. -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyArea: srcRect To: destImage At: destPt GC: g = ( |
             img.
            | 
            img: context createImageSnapshot.
            destImage gc drawImage: img X: destPt x Y: destPt y Width: width Height: height.
            img release.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         createForSameScreenAs: db Size: sz Depth: dp = ( |
            | copy initOffscreenSize: sz).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         createImageSnapshot = ( |
            | context createImageSnapshot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         delete = ( |
            | context release. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         depth = ( |
            | 32).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: ui1 draws through this objects own context (an rgbaContext), which answers the X11-GC protocol in true colour. -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         gc = ( |
            | context).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         indexedContext = ( |
            | context).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: build a 32-bit BGRA true-colour offscreen via the raw RGBA prim, typed as an rgbaContext (so foreground8Bit: draws RGB). Same bottom-up text-matrix flip as the indexed offscreen. -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         initOffscreenSize: sz = ( |
            | 
            width:  sz x.
            height: sz y.
            context: (sz x
                _MakeRGBAOffscreen_wrapmakeRGBAOffscreenWidthHeight: sz y
                Opaque: opaque
                ResultProxy: quartz rgbaContext deadCopy
                IfFail: [| :e | ^ error: 'makeRGBAOffscreen failed: ', e]).
            context setTextMatrix_A: 1 B: 0 C: 0 D: -1 TX: 0 TY: 0.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         isLive = ( |
            | context ifNil: false IfNotNil: [|:c| c isLive]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'quartz' -> 'drawable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: id/region readback for hit-testing -- stubbed to 0 for now; Phase 2/3 adds an id buffer for the colour picker. -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         pixelValueAt: pt = ( |
            | 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         presentToWindow: pw = ( |
             g.
            | 
            g: pw quartzWindow gc.
            g drawImage: createImageSnapshot X: 0 Y: 0 Width: width * 2 Height: height * 2.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         size = ( |
            | width @ height).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> () From: ( | {
         'Comment: the true-colour RGBA graphics backend (Phase 2). Inherits the quartz backend; overrides makeOffscreenFor: (rgbaPixmap offscreens) and installShadowOn: (no shadow -> window draws true colour). Draw-targets are inherited for now (plane masks are no-ops on rgbaContext; arrow colormap installs are harmless); the acetate/arrow multi-surface facade comes in 2.2.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         newQuartz = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'newQuartz' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends newQuartz.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         installShadowOn: pw = ( |
            | 
            pw makeRGBAShadow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         makeOffscreenFor: win Size: sz = ( |
             b.
            | 
            b: bitmap copy.
            b image: (quartz rgbaPixmap createForSameScreenAs: win bitmap image Size: sz Depth: 32).
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         name = 'newQuartz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> () From: ( | {
         'Comment: the original 8-bit indexed graphics backend (Phase 1.5 dual-backend). Its factory methods reproduce setGraphicAndOffScreen exactly (bitmap copyFor:Size:), so selecting it changes no behaviour. parent* = lobby so the factory bodies can see the bitmap global.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         quartz = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends quartz.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         blitShadowToWindowFor: w = ( |
             pw.
            | 
            pw: w window platformWindow.
            pw shadow ifNotNil: [| :s |
                pw quartzWindow gc
                    drawImage: s createImageSnapshot
                    X: 0 Y: 0 Width: pw size x Height: pw size y ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         graphicsGlobals = bootstrap stub -> 'globals' -> 'macToolboxGlobals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         installShadowOn: pw = ( |
            | pw makeShadow. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         name = 'quartz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         present: w = ( |
            | 
            w window platformWindow makeRGBAShadow.
            resend.present: w).
        } | ) 



 '-- Side effects'

 globals modules ui1OnQuartz postFileIn
