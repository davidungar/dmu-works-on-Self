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
         'Comment: the X11 graphics backend. Inherits the generic (quartz parent) backend -- makeOffscreenFor:/makeWindowBitmapFor:/plane masks/erase are platform-polymorphic via bitmap copyFor:Size: and windowBitmap planeMask:, exactly as the pre-seam uiWorld code. Only present: and installShadowOn: are overridden: X has no shadow buffer and blits the windowBitmap straight to the window. -- claude & dmu 6/2026\x7fModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         x11 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui graphicsBackends x11.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         graphicsGlobals = bootstrap stub -> 'globals' -> 'x11Globals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         name = 'x'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'abstractTraits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui' -> 'graphicsBackends' -> 'x11' -> () From: ( | {
         'ModuleInfo: Module: uiOnX11 InitialContents: FollowSlot'
        
         platformPixmap = ( |
            | xlib pixmap).
        } | ) 



 '-- Side effects'

 globals modules uiOnX11 postFileIn
