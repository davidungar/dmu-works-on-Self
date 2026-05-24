 '$Revision:$'
 '
Copyright 1992-2003 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: system\x7fCategory: messages and activations\x7fModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         cachingSender = bootstrap define: bootstrap stub -> 'globals' -> 'cachingSender' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals sender copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'cachingSender' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals cachingSender.

CopyDowns:
globals sender. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: InitializeToExpression: (nil)'
        
         cache.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals cachingSender parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         cachedValueOf: m = ( |
            | 
            cache at: m IfAbsentPut:  newValueOf: m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         invalidate = ( |
            | 
            cache: dictionary copyRemoveAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         invalidateIfNecessaryFor: m = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         newValueOf: m = ( |
            | 
            m send).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'sender' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         proxyForReceiver: r = ( |
             s.
            | 
            s: (copy receiver: r).
            s invalidate.
            interceptor _Clone interceptorTarget: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         send: m = ( |
            | 
            m receiver: receiver.
            invalidateIfNecessaryFor: m.
            cachedValueOf: m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         caching = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules caching.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'caching' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: system\x7fCategory: messages and activations\x7fModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         timestampedCachingSender = bootstrap define: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals cachingSender copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals timestampedCachingSender.

CopyDowns:
globals cachingSender. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: InitializeToExpression: (nil)'
        
         invalidator.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals timestampedCachingSender parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         invalidate = ( |
            | 
            resend.invalidate.
            timestamp: nil.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         invalidateIfNecessaryFor: m = ( |
            | 
            (invalidator isSafeToCache: m IfLastRetrievedAt: timestamp) ifFalse: [invalidate]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot'
        
         newValueOf: m = ( |
            | 
            timestamp ifNil: [timestamp: time current].
            resend.newValueOf: m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'cachingSender' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: FollowSlot\x7fVisibility: public'
        
         proxyForReceiver: r Invalidator: i = ( |
             s.
            | 
            s: (copy receiver: r) invalidator: i.
            s invalidate.
            interceptor _Clone interceptorTarget: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'timestampedCachingSender' -> () From: ( | {
         'ModuleInfo: Module: caching InitialContents: InitializeToExpression: (nil)'
        
         timestamp.
        } | ) 



 '-- Side effects'

 globals modules caching postFileIn
