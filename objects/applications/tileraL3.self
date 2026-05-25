 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         tileraL3 = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules tileraL3.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'tileraL3' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: public'
        
         tilera = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tilera.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         basePenalty = 20.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         chip = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tilera chip.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: public'
        
         cacheLocations = ( |
             r.
            | 
            r: list copyRemoveAll.
            cores do: [|:c| r addAll: c cacheLocations].
            sortAndMergeByYs: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         constants* = bootstrap stub -> 'globals' -> 'tilera' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            r: resend.copy.
            r cores: (vector copySize: length square) copyMappedBy: [|:c. :i| (core copyAt: i) myChip: r].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: InitializeToExpression: (vector copySize: 64)'
        
         cores <- vector copySize: 64.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'chip' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot\x7fVisibility: public'
        
         writeCacheLocations = ( |
             r <- ''.
            | 
            (vectorOfPointsToVectorByYs: cacheLocations)
              do: [|:x. :i| r: r, i printString, '\t', x printString, '\n'].
            'out.txt' setFileContentsTo: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         core = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals tilera core.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         cacheLocations = ( |
             r.
            | 
            r: list copyRemoveAll.
            r add: l1CacheLocations.
            r add: l2CacheLocations.
            r addAll: l3CacheLocations.
            sortAndMergeByYs: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         constants* = bootstrap stub -> 'globals' -> 'tilera' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         copyAt: i = ( |
            | 
            copy where: ((i / length) @ (i % length))).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         hopsTo: aCore = ( |
            | 
            where manhattanDistanceTo: aCore where).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         l1CacheLocations = ( |
            | 
            (16 * 1024) @ 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         l2CacheLocations = ( |
            | 
            (64 * 1024) @ 7).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         l3CacheLocations = ( |
             r.
            | 
            r: list copyRemoveAll.
            otherCores do: [|:c|
              r add:  c l2CacheLocations x @ (basePenalty + (perHopPenalty * (hopsTo: c))).
            ].
            sortAndMergeByYs: r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: InitializeToExpression: (nil)'
        
         myChip.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         otherCores = ( |
            | 
            myChip cores asList copyFilteredBy: [|:c| != c]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> 'core' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: InitializeToExpression: (0@0)'
        
         where <- 0@0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         length = 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         perCore = 65536.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         perHopPenalty = 2.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         sortAndMergeByYs: ptCollection = ( |
             r.
             xs.
            | 
            xs:vectorOfPointsToVectorByYs: ptCollection.
            ptCollection do: [|:p| xs at: p y Put: (xs at: p y) + p x].
            ((xs copyMappedBy: [|:x. :i| x @ i])
              asList copyFilteredBy: [|:pt| pt x != 0] )
              asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'tilera' -> () From: ( | {
         'ModuleInfo: Module: tileraL3 InitialContents: FollowSlot'
        
         vectorOfPointsToVectorByYs: ptCollection = ( |
             maxY.
             xs.
            | 
            maxY: (ptCollection asVector copyMappedBy: [|:p| p y]) max.
            xs: vector copySize: maxY succ FillingWith: 0.
            ptCollection do: [|:p| xs at: p y Put: (xs at: p y) + p x].
            xs).
        } | ) 



 '-- Side effects'

 globals modules tileraL3 postFileIn
