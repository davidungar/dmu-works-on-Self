 '$Revision:$'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 '-- Wire ui1 graphics-globals to the Quartz implementations (defined in quartz.self).
    ui1 reaches its platform graphics through the macToolbox / macToolboxGlobals namespaces
    (historically Carbon); on Quartz those names redirect to the quartz.self objects.
    This module loads only on Quartz (it is a subpart of quartz.self). -- claude & dmu 5/26'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: platform dependencies\x7fCategory: graphics\x7fCategory: compatability for ui1 on Quartz\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: public'

         macToolbox = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'macToolbox' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals macToolbox.
'.
            | ) .
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'macToolbox' -> () From: ( | {
         'Comment: ui1 looks up its platform window in the macToolbox (Carbon) namespace; redirect to the live Quartz platformWindow prototype (callers send it new). -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot'

         platformWindow = bootstrap stub -> 'globals' -> 'quartz' -> 'platformWindow' -> ().
        }  {
         'Comment: ui1 font handling sends macToolbox fontIDAndStruct (e.g. boxSize.self); redirect to the Quartz fontIDAndStruct. -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot'

         fontIDAndStruct = bootstrap stub -> 'globals' -> 'quartz' -> 'fontIDAndStruct' -> ().
        }  {
         'Comment: ui1 pattern hack sends standard pattern names to macToolbox qdGlobals; redirect to the Quartz placeholder qdGlobals. -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot'

         qdGlobals = bootstrap stub -> 'globals' -> 'quartz' -> 'qdGlobals' -> ().
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'macToolboxGlobals' -> () From: ( | {
         'Comment: ui1 gets its offscreen pixmaps from platformPixmap; redirect from the dead Carbon macToolbox pixMap to the Quartz indexed pixmap prototype. -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: public'

         platformPixmap = bootstrap stub -> 'globals' -> 'quartz' -> 'indexedPixmap' -> ().
        }  {
         'Comment: ui1 colour for an index, carried by xlib xColor (as the X path does). The 0-receiver reaches the lobby from this parentless globals object. -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: public'

         newPlatformColorForPixel: i = ( |
            | 0 xlib xColor new allComponents pixel: i).
        }  {
         'Comment: ui1 platform colormap on Quartz: the software CLUT defined in quartz.self. -- claude & dmu 5/26\x7fModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: public'

         platformColormap = bootstrap stub -> 'globals' -> 'quartz' -> 'colormap' -> ().
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot'

         ui1OnQuartzHacks = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules ui1OnQuartzHacks.

CopyDowns:
globals modules init. copy
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: public'

         directory <- 'graphics'.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'

         fileInTimeString <- _CurrentTimeString.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot'

         myComment <- ''.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot'

         postFileIn = ( |
            | resend.postFileIn).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: public'

         revision <- '$Revision:$'.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'ui1OnQuartzHacks' -> () From: ( | {
         'ModuleInfo: Module: ui1OnQuartzHacks InitialContents: FollowSlot\x7fVisibility: private'

         subpartNames <- ''.
        } | )



 '-- Side effects'

 globals modules ui1OnQuartzHacks postFileIn
