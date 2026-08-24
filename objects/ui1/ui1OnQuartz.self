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
        
         directory <- 'ui1'.
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
         'Category: graphics (ui1)\x7fComment: ui1 true-colour offscreen: a CGLayer created from the window context, same object UI2 uses. copyArea:/presentToWindow: are drawLayer (traits quartz drawable). -- claude & dmu 6/10\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
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
         'Comment: CGLayer created from the window gc. The object drawLayer: receives.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         layer.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: false = BGRA (alpha). Body pixmaps leave dest alone in the 3-D corners; world graphic is filled opaque sage.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         opaque <- bootstrap stub -> 'globals' -> 'false' -> ().
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: window CGContext the layer was created from; sibling pixmaps create from this too.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         windowContext.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'context' -> () From: ( | {
         'Comment: indexed ui1 passes a colormapEntry (index as gray byte). Direct/UI2-style paints have red/green/blue in 0-1 and no index slot. Layer gcs are quartz context proxies and cannot have their parent changed.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         foregroundColor: cme = ( |
             a.
             gray.
            | 
            ((reflect: cme) includesKey: 'index') ifTrue: [
                indexFG: cme index.
                gray: cme index asFloat / 255.0.
                setGrayFillColorGray:   gray Alpha: 1.0.
                setGrayStrokeColorGray: gray Alpha: 1.0.
                ^ self
            ].
            a: cme alpha.
            setFillColorRed:   cme red
                       Green:  cme green
                        Blue:  cme blue
                       Alpha:  a.
            setStrokeColorRed: cme red
                        Green: cme green
                         Blue: cme blue
                        Alpha: a.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'platformWindow' -> () From: ( | {
         'Comment: windowBitmap image. Direct (32-bit RGBA shadow) uses that pixmap so depth is 32; 8-bit indexed keeps the platformWindow facade.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         bitmapImage = ( |
            | 
            shadow ifNotNil: [
                shadow depth > 8 ifTrue: [ ^ shadow ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'platformWindow' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         makeRGBAShadow = ( |
            | 
            shadow ifNotNil: [ shadow delete ].
            shadow: quartz rgbaPixmap createForSameScreenAs: self Size: size Depth: 32.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'platformWindow' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         platformPixmapForDepth: d = ( |
            | 
            d <= 8 ifTrue: [quartz indexedPixmap] False: [quartz rgbaPixmap]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'platformWindow' -> () From: ( | {
         'Comment: CGLayerCreateWithContext needs the window gc, as UI2 asLayerSize: does.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         windowContextForLayer = ( |
            | quartzWindow gc).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'Comment: paint red/green/blue are already 0-1 (CG range); do not divide by 255. Use the paint alpha so transparent (0) punches BGRA corners.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         foregroundColor: cme = ( |
             a.
            | 
            a: cme alpha.
            setFillColorRed:   cme red
                       Green:  cme green
                        Blue:  cme blue
                       Alpha:  a.
            setStrokeColorRed: cme red
                        Green: cme green
                         Blue: cme blue
                        Alpha: a.
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

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'Comment: X11 setClipRectangle replaces the clip. Quartz clipToRect intersects, so restore the post-CTM GState saved at pixmap init, then clip. withClip: on this context uses clipToRectX directly so it does not pop that clean state.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         setClipRectangle: r = ( |
            | 
            restoreGState.
            saveGState.
            r ifNotNil: [
                clipToRectX: r left Y: r top Width: r width Height: r height
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'Comment: X11 setNoClipMask. Pair of restore+save returns to the unclipped CTM saved at pixmap init.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         setNoClipMask = ( |
            | 
            restoreGState.
            saveGState.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaContext' -> () From: ( | {
         'Comment: Intersect clip under a nested GState. Must not call setClipRectangle: (that pops the clean state).\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         withClip: newClip Do: blk = ( |
            | 
            withNewGStateDo: [
                newClip ifNotNil: [
                    clipToRectX: newClip left
                               Y: newClip top
                           Width: newClip width
                          Height: newClip height
                ].
                blk value
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: Same dest math as UI2 drawLayer (identity CTM, Y flipped). Source is a BGRA bitmap snapshot so alpha 0 corners source-over onto sage. Do not use y-down DrawImage with negative height (no-op / black).\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyArea: srcRect To: destImage At: destPt GC: g = ( |
             dstBottom.
             dstLeft.
             dstTop.
             dgc.
             img.
             qDstX.
             qDstY.
             z.
            | 
            dgc: destImage gc.
            img: context createImageSnapshot.
            z: dgc getCTM_A.
            dstLeft:   (destPt x - srcRect left) * z.
            dstTop:    (destPt y - srcRect top)  * z.
            dstBottom: dstTop + (height * z).
            qDstX: dstLeft.
            qDstY: destImage height - dstBottom.
            dgc withClip: destPt ## srcRect size Do: [
                dgc setIdentityCTM.
                dgc drawImage: img
                            X: qDstX
                            Y: qDstY
                        Width: width * z
                       Height: height * z.
            ].
            img release.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         createForSameScreenAs: db Size: sz Depth: dp = ( |
            | copy initOffscreenSize: sz WindowContext: db windowContextForLayer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         delete = ( |
            | 
            context ifNotNil: [ context release ].
            layer ifNotNil: [ layer close ].
            layer: nil.
            context: nil.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         depth = ( |
            | 32).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: skip fillRectInteger (plane-mask/indexed byte path). Layer is true colour; fillRectX matches the window gc fills that already worked.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         fillRectangle: r GC: gc = ( |
            | 
            gc fillRectX: r left Y: r top Width: r width Height: r height.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: BGRA bitmap context (y-down). Paint RGB+alpha via rgbaContext foregroundColor:.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         gc = ( |
            | context).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         indexedContext = ( |
            | context).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: BGRA bitmap (MakeRGBAOffscreen Opaque: false) so undrawn 3-D corners stay alpha 0. y-down CTM matches ui1. AA stays on; source-over of the snapshot is the silhouette, not AND/OR. WindowContext is unused for the backing (siblings still pass it).\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         initOffscreenSize: sz WindowContext: wgc = ( |
            | 
            width:  sz x.
            height: sz y.
            windowContext: wgc.
            layer: nil.
            context: quartz context
                makeRGBAOffscreenWidth: sz x
                                Height: sz y
                                Opaque: false.
            context setCTMForZeroAtTopHeight: sz y.
            context saveGState.
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
         'Comment: sibling pixmap prototype for bitmap copyFor: when this rgbaPixmap is the windowBitmap image.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         platformPixmapForDepth: d = ( |
            | 
            d <= 8 ifTrue: [quartz indexedPixmap] False: [quartz rgbaPixmap]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'Comment: same dest math as copyArea: identity CTM, snapshot source-over onto the window.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         presentToWindow: pw = ( |
            | 
            copyArea: size rect To: pw quartzWindow At: 0@0 GC: gc.
            pw quartzWindow gc flush.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         restoreCleanGStateIfPresent = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         size = ( |
            | width @ height).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'quartz' -> 'rgbaPixmap' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         windowContextForLayer = ( |
            | windowContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         name = 'newQuartz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'newQuartzTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         platformPixmap = ( |
            | 
            [xxxxx].
            quartz rgbaPixmap).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'newQuartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         windowPrototype = ( |
            | macToolboxGlobals window).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'newQuartzTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         graphicsGlobals = bootstrap stub -> 'globals' -> 'macToolboxGlobals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         name = 'quartz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         patterns = ( |
            | macToolboxGlobals patterns).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'Comment: ui1 platform colormap on Quartz: the software CLUT defined in quartz.self. -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         platformColormap = bootstrap stub -> 'globals' -> 'quartz' -> 'colormap' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         platformPixmap = ( |
            | quartz indexedPixmap).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         present: w = ( |
            | 
            w window platformWindow makeRGBAShadow.
            resend.present: w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'attic' -> 'quartz' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         windowPrototype = ( |
            | macToolboxGlobals window).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         direct = bootstrap define: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             traits ui1 graphics abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1 graphics direct.

CopyDowns:
traits ui1 graphics abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (nil)'
        
         bufferCanvas.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> () From: ( | {
         'Category: traits\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         directTraits = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1 graphics directTraits.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         window = ( |
            | ww).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         window: w = ( |
            | 

            ww: w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (nil)'
        
         windowCanvas.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'direct' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: InitializeToExpression: (nil)'
        
         ww.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         boxSizePlatformMixin = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> 'boxSizePlatformMixin' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1 graphics directTraits boxSizePlatformMixin.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         checkDepthOf: bitmap = ( |
            | 
            [bitmap depth = 32] assert. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         copy = ( |
             r.
            | 
             [xxxxxx].
            r: resend.copy.
            r window:                        windowPrototype copy.

            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         ersatzWorldMorphNameHolder = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> 'ersatzWorldMorphNameHolder' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1 graphics directTraits ersatzWorldMorphNameHolder.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> 'ersatzWorldMorphNameHolder' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         name <- 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> 'ersatzWorldMorphNameHolder' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         makeOffscreenFor: win Size: sz = ( |
             b.
            | 
            b: bitmap copy.
            b image: (quartz rgbaPixmap createForSameScreenAs: win bitmap image Size: sz Depth: 32).
            b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         openWindowOrCanvas: depth IfFail: fb = ( |
            | 
            [addWindowOnDisplay: dispName Bounds: b Limited: false].
            windowCanvas: 
              quartzGlobals windowCanvas
                copyOpenForWorld: (ersatzWorldMorphNameHolder copy name: window displayName)
                       OnDisplay: window displayName 
                              At: window position
                           Width: window size x 
                          Height: window size y.

            bufferCanvas: windowCanvas bufferCanvasForMyScreenBounds: (0@0) ## window size.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         optimalNameForDisplay: disp = ( |
            | 
            'ui1 on ', disp).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         patterns = ( |
            | macToolboxGlobals patterns).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         platformPixmap = ( |
            | 
            [xxxxx].
            quartz rgbaPixmap).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'Comment: Body copies land on the world graphic (destH=300 at=30@40). graphic copyTo: offScreen at 0@0 never hits rgbaPixmap copyArea, so the shadow is empty. drawLayer of the shadow showed only the probe. Present the graphic, where drawBackground and body display actually painted.\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot\x7fVisibility: public'
        
         present: w = ( |
            | 
            w graphic image presentToWindow: w window platformWindow.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'Comment: Same shape as x11Traits tryToOpenWindowForDisplay: open the window, then window finishOpening. Direct uses a windowCanvas, so install that platformWindow first. -- claude & dmu 8/23\x7fModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         tryToOpenWindowForDisplay: disp IfFail: fb = ( |
            | 
            resend.tryToOpenWindowForDisplay: disp IfFail: [|:e| ^ fb value: e].
            window platformWindow: windowCanvas platformWindow.
            window platformWindow makeRGBAShadow.
            window finishOpening.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         uiColorPalette = ( |
            | ui1 x11DirectColorPalette).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         windowPrototype = ( |
             w.
            | 
            w:  macToolboxGlobals window.
            [xxxxxxx].
            [[w bitmap depth > 8] assert.].
            w).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1' -> 'graphics' -> 'directTraits' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartz InitialContents: FollowSlot'
        
         worldPrototype = ( |
            | 
            [xxxxxxx].
            ui1 uiWorld).
        } | ) 



 '-- Side effects'

 globals modules ui1OnQuartz postFileIn
