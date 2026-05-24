 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: public'
        
         kanerva = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: public'
        
         bruteForceDictionary = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva bruteForceDictionary.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         dictionary <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva bruteForceDictionary parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         at: k Put: e = ( |
            | 
            dictionary at: k Put: e.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy dictionary: dictionary copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         copyRemoveAll = ( |
            | clone dictionary: dictionary copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         includesKey: x = ( |
            | includesKey: x Within: 0.1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         includesKey: x Within: threshold = ( |
            | 
            (dictionary includesKey: x) ifTrue: [^ true].
            dictionary findFirst: [|:e. :k| (k distanceTo: x) <= threshold]
                IfPresent: true
                IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceDictionary' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: public'
        
         bruteForceSet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva bruteForceSet.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva bruteForceSet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         add: x = ( |
            | 
            (includes: x) ifFalse: [set add: x].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         allAt: x Within: threshold = ( |
             r.
            | 
            r: list copyRemoveAll.
            set filterBy: [|:a| (a distanceTo: x) <= threshold] Into: r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy set: set copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         copyRemoveAll = ( |
            | clone set: set copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         includes: x = ( |
            | 
            includes: x Within: 0.1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         includes: x Within: threshold = ( |
            | 
            (set includes: x) ifTrue: [^ true].
            set findFirst: [|:a| (a distanceTo: x) <= threshold]
                IfPresent: true
                IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         play = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'play' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva bruteForceSet play.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'play' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> 'play' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         set <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'bruteForceSet' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         set <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: public'
        
         datum = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva datum.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: InitializeToExpression: (byteVector copySize: 1024)'
        
         contents <- byteVector copySize: 1024.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanerva datum parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         * x = ( |
             r.
            | 
            r: byteVector copySize: contents size.
            contents size do: [|:i|
              r at: i Put: (contents at: i) ^^ (x contents at: i)
            ].
            clone contents: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         + x = ( |
             r.
            | 
            r: byteVector copySize: contents size.
            contents size do: [|:i|
              r at: i Put: ((contents at: i) + (x contents at: i)) +> 1
            ].
            clone contents: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         = x = ( |
            | 
            contents = x contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy contents: randomizeContents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         distanceTo: x = ( |
            | 
            (hammingDistanceTo: x) asFloat / (contents size * 8)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         hammingDistanceTo: x = ( |
             r <- 0.
            | 
            contents with: x contents Do: [|:a. :b|
              r: r + (a ^^ b) numberOfOnes
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         hash = ( |
            | contents hash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         numberOfOnes = ( |
             r <- 0.
            | 
            contents do: [|:x| r: r + x numberOfOnes].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanerva' -> 'datum' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         randomizeContents = ( |
             r.
            | 
            r: contents copy.
            r size do: [|:i|
              r at: i Put: random integer: 256
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         kanervaProto1 = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules kanervaProto1.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaProto1' -> () From: ( | {
         'ModuleInfo: Module: kanervaProto1 InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules kanervaProto1 postFileIn
