 '$Revision:$'
 '
Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         methodCounter = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals methodCounter.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         add: aMethod = ( |
            | 
            ( methods if: aMethod name
              IsPresentDo: [|:ms| ms ]
              IfAbsentPut: [ list copyRemoveAll ]
              AndDo: [|:ms| ms ]
            ) addLast: aMethod.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy methods: methods copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         countFromFile: f = ( |
             c.
             n <- 0.
             lin.
            | 
            c: f contents.
            [
              lin: c copyFrom: n UpTo: 
                [|:exit|
                  n upTo: c size Do: [|:i| (c at: i) = '\n' ifTrue: [exit value: i]].
                  ^ self
                ] exitValue.

              [|:exit|
                add: method copy setFromLine: lin IfFail: [ |:lin| ( 'failed: ', lin ) printLine. exit value].
              ] exit.
              n: n + lin size + 1.
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         countFromFileNamed: fn = ( |
             r.
             f.
            | 
            f: os_file openForReading: fn.
            r: copy countFromFile: f.
            f close.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         method = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'methodCounter' -> 'method' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals methodCounter method.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: InitializeToExpression: (0)'
        
         map <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         setFromLine: lin IfFail: fb = ( |
             rightParen.
             commaAfterMap.
            | 
            rightParen:     lin findFirst: [|:c| c = ')'] IfPresent: [|:c. :i| i] IfAbsent: [^ fb value: lin].
            commaAfterMap: lin findFirst: [|:c. :i| (i > rightParen succ) && [c = ',']] IfPresent: [|:c. :i| i] IfAbsent: [^ fb value: lin].
            name: lin copyFrom: 1 UpTo: rightParen.
            name: name canonicalize.
            map: lin copyFrom: rightParen + '), map ' size UpTo: commaAfterMap.
            size: lin copyFrom: commaAfterMap + ', size ' size.
            size: size asInteger.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: InitializeToExpression: (0)'
        
         size <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         methods <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         methodsWithoutOverCust = ( |
             r <- 0.
            | 
            methods do: [|:ms. s|
              s: set copyRemoveAll.
              ms do: [|:m| s add: m size].
              r: r + s size.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         sizeWithoutOverCust = ( |
             r <- 0.
            | 
            methods do: [|:ms. s|
              s: set copyRemoveAll.
              ms do: [|:m| s add: m size].
              r: r + s sum.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         totalMethods = ( |
             r <- 0.
            | 
            methods do: [|:ms| ms do: [|:m| r: r + 1]].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         totalSize = ( |
             r <- 0.
            | 
            methods do: [|:ms| ms do: [|:m| r: r + m size]].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         methodCounter = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules methodCounter.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'mine'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            transporter moduleDictionary resetFillingSemaphore.
            snapshotAction addSchedulerInitialMessage:  
              message copy receiver: transporter moduleDictionary
                           Selector: 'resetFillingSemaphore'.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'methodCounter' -> () From: ( | {
         'ModuleInfo: Module: methodCounter InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules methodCounter postFileIn
