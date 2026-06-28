 '$Revision:$'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         xPreferenceAdjuster = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules xPreferenceAdjuster.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'graphics'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: graphics\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         xPreferenceAdjuster = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xPreferenceAdjuster.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Comment: On macOS, the first time per session we are about to use the X11 backend,
make sure XQuartz is not eating Command-key shortcuts, so Self menu shortcuts (Cmd-M,
copy/paste) reach the UI instead of minimizing the window. Offer to fix the pref and
restart XQuartz. -- claude & dmu 6/2026\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: public'
        
         adjust = ( |
             did = bootstrap stub -> 'globals' -> 'true' -> ().
             didnt = bootstrap stub -> 'globals' -> 'false' -> ().
             pref.
            | 
            canAdjust ifFalse: [^ didnt].
            areAllOK ifTrue: [^ did].

            (userQuery askYesNo: prompt) ifFalse: [
               warning printLine.
               ^ didnt
            ].
            setAll.
            restartXQuartz.
            did).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         adjustOnce: how = ( |
            | 
            adjusted ifTrue: nil False: [
                how value.
                adjusted: true.
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: preference info\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         areAllOK = ( |
            | 
            preferenceSlots do: [|:s| (isOK: s) ifFalse: [^ false]].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         canAdjust = ( |
            | 
            (host osName == 'macOSX')
            && [snapshotAction commandLine excludes: '-headless']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: getting\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         getBoolPreferenceValue: prefName = ( |
            | 
            [getBoolPreferenceValue: 'enable_key_equivalents'].

            (getPreferenceString: prefName)
            apply: [|:v| case if: ('true' isPrefixOf: v) Then: true If: ('false' isPrefixOf: v) Then: false Else: nil]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: getting\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         getPreferenceString: prefName = ( |
            | 
            [getPreferenceString: 'enable_key_equivalents'].

            'defaults read org.xquartz.X11 ', prefName
            apply: [|:v| os outputOfCommand: v Delay: 200 IfFail: [|:e| error: e]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: preference info\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         isOK: prefSlot = ( |
            | 
            (valueStringAndFlag: prefSlot contents) desired
              isPrefixOf: getPreferenceString: prefSlot name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: preference info\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         preferenceSlots = ( |
            | reflect: prefsAndStringValues).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: preference info\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         prefsAndStringValues = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals xPreferenceAdjuster prefsAndStringValues.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( | {
         'Comment: Setting depth to 8 for ui1.\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         depth = 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         enable_fake_buttons = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         enable_key_equivalents = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( | {
         'Comment: Disabling X11 authorization for desktop sharing.\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         no_auth = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         sync_pasteboard = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> 'prefsAndStringValues' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         wm_click_through = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         prompt = ( |
             effects.
            | 
            effects: (
              (preferenceSlots asVector mapBy: [|:s| s comment])
               filterBy: [|:s| s != ''] Into: list copyRemoveAll
            )
              reduceWith: [|:a. :b| a, '\n', b].
            'Will change XQuartz preferences for Self:\n',
            effects, '\n',
            'OK to do it and to restart XQuartz now?').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: setting\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         restartXQuartz = ( |
            | 
            'Restarting XQuartz...' printLine.
            os command: 'osascript -e \'tell application "XQuartz" to quit\'' IfFail: [ 'Could not quit XQuartz' printLine. ^ false ].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: preference info\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         set: prefSlot = ( |
            | 
            setPreference: prefSlot name To: prefSlot contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: preference info\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         setAll = ( |
            | 
            preferenceSlots do: [|:s| set: s]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'Category: setting\x7fModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot\x7fVisibility: private'
        
         setPreference: prefName To: valueMirror = ( |
            | 
            'defaults write org.xquartz.X11 ', prefName, ' -', (valueStringAndFlag: valueMirror) flag, ' ', (valueStringAndFlag: valueMirror) desired
            apply: [|:a| os command: a IfFail: [|:e| 'Could not write XQuartz preference.' printLine. ^ false]].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         valueStringAndFlag: valueMirror = ( |
            | 
            case 
            if: valueMirror isReflecteeInteger Then: [(|flag = 'int'. desired|) desired: valueMirror reflectee printString]
            If: [valueMirror = (reflect: true)] Then: [(|flag = 'bool'. desired = '1'|)]
            If: [valueMirror = (reflect: false)] Then: [(|flag = 'bool'. desired = '0'|)]
            Else: [error: 'unknown type']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'xPreferenceAdjuster' -> () From: ( | {
         'ModuleInfo: Module: xPreferenceAdjuster InitialContents: FollowSlot'
        
         warning = bootstrap setObjectAnnotationOf: ( 'Leaving XQuartz preferences alone; Self IDE will not work under X11. See \"Running the UI under X11 (XQuartz) on macOS\" in readme.md. -- claude & dmu 6/2026' copyMutable) From: ( |
             {} = 'ModuleInfo: Creator: globals xPreferenceAdjuster warning.

CopyDowns:
globals byteVector. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 



 '-- Side effects'

 globals modules xPreferenceAdjuster postFileIn
