 '$Revision:$'
 '
Copyright 1992-2002 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         untangle = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules untangle.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         untangle = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         game = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle game.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (vector)'
        
         loopCountBySize <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         loops <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (3)'
        
         numberOfPlayers <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (nil)'
        
         oddManOut.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle game parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         computeLoops = ( |
            | 
            players do: [|:p|
              p isOddManOut ifFalse: [
                loops findFirst: [|:l| l includesPlayer: p]
                      IfPresent: []
                      IfAbsent:  [loops add: untangle loop copyForPlayer: p]
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            ((resend.copy 
             players: players copy)
             randomNumbers: randomLC copySeed: times real msec)
             loops: loops copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         copyPlay: n = ( |
            | copy play: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         countLoopSizes = ( |
            | 
            loopCountBySize:
               vector copySize: numberOfPlayers succ FillingWith: 0.
            loops do: [|:l|
              loopCountBySize at: l size Put:
                (loopCountBySize at: l size) succ
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         countLoops = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         getPlayers = ( |
            | 
            players:
              numberOfPlayers asVector asSet copyMappedBy: [|:i|
                untangle player copyFor: i Game: self
              ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         linkUp = ( |
            | players do: [|:p| p link]. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         loopCount = ( |
            | loops size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         play = ( |
            | 
            getPlayers.
            linkUp.
            computeLoops.
            countLoops.
            countLoopSizes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         play: n = ( |
            | 
            numberOfPlayers: n.
            play).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         printLoopSizes = ( |
            | 
            1 upTo: loopCountBySize size Do: [|:i|
              (loopCountBySize at: i) print.
              i = loopCountBySize lastKey ifFalse: [', ' print].
            ].
            '' printLine.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         printResults = ( |
            | 
            loops size print.
            ' loops:' print.
            '\t' print.
            printLoopSizes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | numberOfPlayers printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         test: n = ( |
            | 
            (copyPlay: n) printResults).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         players <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'game' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (nil)'
        
         randomNumbers.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'Category: hands\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         hand = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle hand.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (nil)'
        
         graspedHand.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (nil)'
        
         myBody.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle hand parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         copyForBody: b = ( |
            | 
            copy myBody: b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: grasping\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         findSomeoneElsesEmptyHandIfNone: blk = ( |
            | 
            myBody findSomeoneElsesEmptyHandIfNone: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: grasping\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         isEmpty = ( |
            | nil = graspedHand).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: grasping\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         isGrasped = ( |
            | isEmpty not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: which hand\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         isLeft = ( |
            | side = 'left').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: which hand\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         isRight = ( |
            | 
            isLeft not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: grasping\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         link = ( |
             h.
            | 
            isEmpty ifFalse: [^ self].
            h: findSomeoneElsesEmptyHandIfNone: [
            ^ self
            ].
            mutuallyGrasp: h.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: grasping\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         mutuallyGrasp: h = ( |
            | 
            graspedHand: h.
            h graspedHand: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: which hand\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         side = 'either'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            isEmpty ifTrue: [^'empty'].
            nil = graspedHand myBody  ifTrue: [^'grasped'].
            'grasping ', graspedHand side, ' hand of ', graspedHand myBody n printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'Category: hands\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         leftHand = bootstrap define: bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals untangle hand copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle leftHand.

CopyDowns:
globals untangle hand. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle leftHand parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         side = 'left'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         loop = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle loop.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle loop parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         addPlayersFrom: p = ( |
            | 
            (includesPlayer: p) ifTrue: [^ self].
            players add: p.
            addPlayersFrom: p  leftHand graspedHand myBody.
            addPlayersFrom: p rightHand graspedHand myBody.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForPlayer: p = ( |
            | 
            copy initializeForPlayer: p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         includesPlayer: p = ( |
            | players includes: p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         initializeForPlayer: p = ( |
            | 
            players: set copyRemoveAll.
            addPlayersFrom: p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         size = ( |
            | players size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'loop' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         players <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         measureN: np Trials: t = ( |
             v.
            | 
            v: vector copySize: np succ FillingWith: 0.
            t do: [|g|
              g: untangle game copyPlay: np.
              v at: g loopCount 
                Put: (v at: g loopCount) succ
            ].
            v copyMappedBy: [|:e| (e * 100.0) / t]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         measureTo: np Trials: t = ( |
            | 
            np succ asVector copyMappedBy: [|:n| measureN: n Trials: t]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         player = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle player.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (nil)'
        
         game.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (false)'
        
         isOddManOut <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (untangle leftHand)'
        
         leftHand <- bootstrap stub -> 'globals' -> 'untangle' -> 'leftHand' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         n <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle player parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: comparing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         < p = ( |
            | n < p n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: comparing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         = p = ( |
            | n = p n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         allOthersEmptyHands = ( |
             hands.
            | 
            hands: list copyRemoveAll.
            otherPlayers do: [|:p|
              p handsDo: [|:h|
                h isEmpty ifTrue: [hands add: h]
              ]
            ].
            hands).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFor: n Game: aGame = ( |
            | 
            copy initializeFor: n Game: aGame).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         findSomeoneElsesEmptyHandIfNone: blk = ( |
             h.
            | 
            h: allOthersEmptyHands asVector.
            h isEmpty ifTrue: [
              isOddManOut: true.
              game oddManOut: self.
            ^ blk value
            ].
            h at: game randomNumbers integer: h size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         handsDo: b = ( |
            | 
            b value:  leftHand.
            b value: rightHand).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: comparing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         hash = ( |
            | n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeFor: n Game: g = ( |
            | 
            n: n.
            game: g.
             leftHand: untangle  leftHand copyForBody: self.
            rightHand: untangle rightHand copyForBody: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         link = ( |
            | 
             leftHand link.
            rightHand link.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: playing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         otherPlayers = ( |
            | 
            game players copy remove: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'orderedClonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         printString = ( |
            | 
            n = -1 ifTrue: [^ resend.printString].
            'Player(', n printString, ')').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'Category: hands\x7fModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: public'
        
         rightHand = bootstrap define: bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals untangle hand copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle rightHand.

CopyDowns:
globals untangle hand. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'player' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: InitializeToExpression: (untangle rightHand)'
        
         rightHand <- bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> () From: ( | {
         'Category: measuring\x7fModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         printAndMeasureTo: np Trials: t = ( |
             r.
            | 
            r: measureTo: np Trials: t.
            r do: [|:e. :i|
              i print.
              '\t' print.
              e do: [|:ee| ee print. '\t' print].
              '' printLine
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals untangle rightHand parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'untangle' -> 'hand' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'untangle' -> 'rightHand' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: untangle InitialContents: FollowSlot'
        
         side = 'right'.
        } | ) 



 '-- Side effects'

 globals modules untangle postFileIn
