 '$Revision:$'
 '
Copyright 1992-2003 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         swarm = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules swarm.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         swarm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'swarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals swarm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         deploy: n NodesInBox: bbox = ( |
             locs.
             nms.
             w.
            | 
            locs: n asVector copyMappedBy: [random pointInBoundingBox: bbox].
            nms: locs copyMappedBy: [|:p| nodeMorph copy position: p].
            w: desktop openNewWorldOnDisplay: '' Bounds: (40@40) ## bbox size.
            nms do: [|:n| w addMorph: n. n moveToFront: n].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         deployBunch = ( |
            | 
            deploy: 50 NodesInBox: (0@0) # (700 @ 700)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         nodeMorph = bootstrap define: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             bootstrap remove: 'radius' From:
             globals circleMorph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals swarm nodeMorph.

CopyDowns:
globals circleMorph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype radius.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> () From: ( | {
         'Category: nodeMorph state\x7fModuleInfo: Module: swarm InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         attributes <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals swarm nodeMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         beRandomColor = ( |
            | 
            colorAll: paint copyRandom).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: morph stuff\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         colorAll: c = ( |
            | 
            "circle morph overrides, so we must unoverride."
            resend.colorAll: c. color: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         colorMatches: c = ( |
            | 
            color = c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: diffusion\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         continueDiffusing: actionMsg Until: stopMsg = ( |
             msg.
            | 
            (stopMsg copy receiver: self) send ifTrue: [^ self].
            "startDiffusing: actionMsg Until: stopMsg." "dmu xxx"
            msg: message copy receiver: self Selector: 'startDiffusing:Until:' With: actionMsg With: stopMsg.
            fewerThreads ifTrue: [msg fork] False: [msg send].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy attributes: attributes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: morph stuff\x7fModuleInfo: Module: swarm InitialContents: InitializeToExpression: (nil)'
        
         defaultButtonHolder <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: finding neighbors\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         delayForNode: n AndDo: msg = ( |
            | 
            times delay: ((n center distanceTo: center) * 2) asSmallInteger.
            msg send).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         diffuseColor = ( |
            | 
            startDiffusing: ( message copy receiver: self Selector: 'colorAll:'     With: color )
                     Until: ( message copy receiver: self Selector: 'colorMatches:' With: color )).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: diffusion\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         fewerThreads = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: morph stuff\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         isSwarmNode = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: morph stuff\x7fModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         middleMouseDown: evt = ( |
            | 
            popUpMenu: evt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: morph stuff\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         morphTypeName = 'swarm nodeMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: finding neighbors\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         neighborsDo: blk = ( |
            | 
            owner ifNil: [self]  IfNotNil: [|:o|
              o morphsDo: [|:m|
                m isSwarmNode
                && [ ( !== m )
                && [ ( m center distanceTo: center) <= range]]
                 ifTrue: [blk value: m]
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'circleMorph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: morph stuff\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         popUpMenu: evt = ( |
             menu.
            | 
            menu: ui2Menu copy.
            menu addButtonTarget: self AsynchronousScriptBlock: [target beRandomColor] Label: 'Be random color'.
            menu addButtonTarget: self AsynchronousScriptBlock: [target diffuseColor] Label: 'Diffuse color'.
            defaultButtonHolder: menu initializeDefaultButtonHolder: defaultButtonHolder.
            menu colorAll: menu color.
            menu popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: finding neighbors\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         range = 150.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: finding neighbors\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         sendBlock: b ToNodeMorph: nm = ( |
            | 
            b value: m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: finding neighbors\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         sendToNeighbors: msg = ( |
             delayMsg.
            | 
            [delayForNode: n AndDo: msg].
            neighborsDo: [|:n| delayMsg:
                                 message copy receiver: self 
                                              Selector: 'delayForNode:AndDo:'
                                                  With: n 
                                                  With: msg copy receiver: n.
                                fewerThreads ifTrue: [delayMsg send] 
                                              False: [delayMsg fork]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: diffusion\x7fModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         startDiffusing: actionMsg Until: stopMsg = ( |
            | 
            (actionMsg copy receiver: self) send.
            [ continueDiffusing: actionBlock Until: stopBlock].
            sendToNeighbors:  message copy receiver: self 
                                           Selector: 'continueDiffusing:Until:'
                                               With: actionMsg
                                               With: stopMsg.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            swarm nodeMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> 'nodeMorph' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: InitializeToExpression: (4)\x7fVisibility: public'
        
         radius <- 4.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: swarm InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'morph' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: swarm InitialContents: FollowSlot\x7fVisibility: public'
        
         isSwarmNode = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 



 '-- Side effects'

 globals modules swarm postFileIn
