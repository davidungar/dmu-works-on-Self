 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: FollowSlot'
        
         findMarkers = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules findMarkers.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'findMarkers' -> () From: ( | {
         'ModuleInfo: Module: findMarkers InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'Category: finding markers\x7fModuleInfo: Module: findMarkers InitialContents: FollowSlot'
        
         findAllMarkers = ( |
             counts.
             cstr <- ''.
            | 
            counts: dictionary copyRemoveAll.
            counts at: 'todo' Put: findMarkers: 'todo'.
            'a' asByte to: 'z' asByte Do: [|:b. x. n. m|
              x: b asCharacter.
              m: x, x, x.
              n: findMarkers: m.  n = 0 ifFalse: [counts at: m Put: n].
              m: m, m.
              n: findMarkers: m.  n = 0 ifFalse: [counts at: m Put: n].
              m: m, x.
              n: findMarkers: m.  n = 0 ifFalse: [counts at: m Put: n].
            ].
            counts do: [|:n. :m| cstr: cstr, m, '\t', n printString, '\n'].
            'all_marker_counts.txt' setFileContentsTo: cstr.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'Category: finding markers\x7fModuleInfo: Module: findMarkers InitialContents: FollowSlot'
        
         findMarkers = ( |
            | 
            findMarkers: 'aaaaaa').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'Category: finding markers\x7fModuleInfo: Module: findMarkers InitialContents: FollowSlot'
        
         findMarkers: m = ( |
             f.
             r.
             ss.
            | 
            ss: browseWellKnown sendersOf: m.
            r: ss asVector copyMappedBy: [|:s|
              m, '\t',
              s holder name, '\t',
              s name, '\t', 
                (
                  (textLines copyLines: s contents source)
                     lines asList findFirst: [|:ll| ll includesSubstring: m]
                       IfPresent: [|:sss| sss shrinkwrapped]
                       IfAbsent: [error]
                )
            ].
            r isEmpty ifTrue: [^ 0].
            f: ('markers_', m, '.txt') asOutputFile.
            r do: [|:s| f write: s, '\n'].
            f close.
            r size).
        } | ) 



 '-- Side effects'

 globals modules findMarkers postFileIn
