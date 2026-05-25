 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         us = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules us.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         us = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: time\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         anyTime = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'anyTime' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets anyTime.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         top = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets top.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'anyTime' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: behavior\x7fCategory: bank account\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         bankAccount = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'bankAccount' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets bankAccount.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'bankAccount' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: behavior\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         copied = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'copied' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets copied.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'copied' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: time\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         now = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'now' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets now.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: time\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         y2013 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'y2013' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets y2013.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'now' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'y2013' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: behavior\x7fCategory: copying\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         shared = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'shared' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets shared.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'shared' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'top' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> () From: ( | {
         'Category: time\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         y2012 = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'y2012' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us facets y2012.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'y2012' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'anyTime' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'y2013' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         p* = bootstrap stub -> 'globals' -> 'us' -> 'facets' -> 'y2012' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slots = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots slot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         dispatchedFormals.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         explicitFormals.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (nil)'
        
         implicitFormals.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us slots slot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us' -> 'slots' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (\'\')'
        
         source <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         us_feb = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: private'
        
         inheritanceChains = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb inheritanceChains.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         float = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> 'float' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb inheritanceChains float.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         integer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'inheritanceChains' -> 'integer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb inheritanceChains integer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         particle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'particle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb particle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (vector copyRemoveAll)'
        
         inheritanceLinks <- vector copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'particle' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: InitializeToExpression: (())'
        
         payload <- ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'us_feb' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals us_feb tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         numberTest = ( |
            | 
            3 asUsObject + 2.3 asUsObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'us_feb' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: us InitialContents: FollowSlot'
        
         run = ( |
            | 
            numberTest).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: us\x7fModuleInfo: Module: us InitialContents: FollowSlot'
        
         asUsObject = ( |
            | 
            halt).
        } | ) 



 '-- Side effects'

 globals modules us postFileIn
