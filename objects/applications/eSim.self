 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         eSim = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         distanceVaryingExperiment = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment node.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         datum <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         location <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         neighbors <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         addNeighbor: n = ( |
            | 
            neighbors: neighbors copyAddLast: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy neighbors: neighbors copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         distance = ( |
            | 
            (datum - location) absoluteValue).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         left = ( |
            | neighbors first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         left: n = ( |
            | neighbors at: 0 Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         right = ( |
            | neighbors at: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         right: n = ( |
            | 
            neighbors at: neighbors size pred Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         statePrintString = ( |
            | location printString, '(', datum printString, ')').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            right datum < datum ifTrue: [ |d|
              d: distance + right distance.
              swapWith: right.
              ^ distance + right distance + d negate.
              ].
            0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         swapWith: n = ( |
             d.
            | 
            d: datum. datum: n datum. n datum: d. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         storeStringNeeds = ( |
            | 
            eSim distanceVaryingExperiment node).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sorter = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'storeStringNeeds' From:
             globals eSim distanceVaryingExperiment node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment sorter.

CopyDowns:
globals eSim distanceVaryingExperiment node. copy 
SlotsToOmit: parent storeStringNeeds.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment sorter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy datum: random float).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         error = ( |
            | right datum < datum ifTrue: 1 False: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            left datum > datum ifTrue: [
              |d|
              d: datum.  datum: left datum.  left datum: d
            ].
            right datum < datum ifTrue: [
              |d|
              d: datum.  datum: right datum.  right datum: d
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         storeStringNeeds = ( |
            | 
            eSim distanceVaryingExperiment sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         swarm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment swarm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         comCost <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (1)'
        
         maxDistance <- 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         nodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment swarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         batchMeanDistance = ( |
            | batchTotalDistance /= nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         batchTotalDistance = ( |
             sum <- 0.
            | 
            nodes do: [|:n| sum: sum + n distance].
            sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy nodes: nodes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copySize: n = ( |
             r.
            | 
            r: copy.
            r nodes: nodes copySize: n.
            n do: [|:i| r nodes at: i Put: nodeProto copy location: i].
            n pred do: [|:i. n1. n2|
              n1: r nodes at: i.
              n2: r nodes at: i succ.
              n2 addNeighbor: n1.
              n1 addNeighbor: n2.
            ].
            r nodes first neighbors: r nodes first neighbors copyAddFirst: r nodes first.
            r nodes last addNeighbor: r nodes last.

            r nodes first left:  r nodes first.
            r nodes last  right: r nodes last.

            r setData.

            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         distancesTillDone = ( |
             r.
            | 
            r: list copyRemoveAll.
            [|d|
              d: runningMeanDistance.
              r addLast: d.
              d > 0
            ] whileTrue: [step].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         makeFile = ( |
             f.
             s.
            | 
            s: copySize: 100.
            f: 'datafile.txt' asOutputFile.
            s distancesTillDone do: [|:d| f writeLine: d printString].
            f close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         makeFile2 = ( |
             f.
            | 
            f: 'output.txt' asOutputFile.
            1 to: 100 Do: [|:i. s| 
              s: copySize: 100.
              s maxDistance: i.
              f write: i printString. f write: '\t'.
              f write: s distancesTillDone size printString. f write: '\t'.
              f writeLine: s comCost printString.
            ].
            f close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         nodeProto = ( |
            | eSim node).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         pickANode = ( |
            | 
            nodes at: random integer: nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         runningMeanDistance = ( |
            | runningTotalDistance /= nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         setData = ( |
             ints.
            | 
            ints: random permutation: nodes size.
            nodes with: ints Do: [|:n. :i| n datum: i].
            runningTotalDistance: batchTotalDistance.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            (random permutation: nodes size)
              do: [|:i| stepNode: nodes at: i]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepNode: n = ( |
             d.
             delta.
             newDist.
             oldDist.
             other.
             otherIndex.
            | 
            d: n datum.

            delta: (d - n location) absoluteValue min: maxDistance.
            otherIndex: d > n location ifTrue: [n location + delta] False: [n location - delta].

            other: nodes at: otherIndex.
            oldDist: n distance + other distance.
            newDist: (n location - other datum) absoluteValue + (other location - d) absoluteValue.
            newDist > oldDist ifTrue: [^ self].
            comCost: comCost + (n location - otherIndex) absoluteValue.
            n datum: other datum. other datum: d.
            runningTotalDistance: runningTotalDistance + newDist + oldDist negate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         stepsToSort: maxD = ( |
            | ((copySize: 100) maxDistance: maxD) distancesTillDone size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         runningTotalDistance <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sorterSwarm = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals eSim distanceVaryingExperiment swarm copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment sorterSwarm.

CopyDowns:
globals eSim distanceVaryingExperiment swarm. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment sorterSwarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         avgError = ( |
            | 
            totalError /= nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         new = ( |
            | with: 1000 NodesLike: eSim sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         oldAvgError = ( |
             x <- 0.
            | 
            nodes size pred do: [|:i. d|
              d: (nodes at: i succ) datum - (nodes at: i) datum.
              d < 0 ifTrue: [x: x + 1].
            ].
            x /= nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'swarm' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step: n = ( |
            | 
            totalError: totalError - (n left left error + n left error + n error + n right error).
            resend.step: n.
            totalError: totalError + (n left left error + n left error + n error + n right error).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepsToReduceError = ( |
             e.
             n <- 0.
            | 
            e: avgError.
            [avgError > (e * 0.9)] whileTrue: [step. n: n succ].
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         with: n NodesLike: nodeProto = ( |
             r.
            | 
            r: resend.with: n NodesLike: nodeProto.
            r nodes do: [|:n|
              r totalError: r totalError + n error
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         totalError <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim distanceVaryingExperiment tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         fileWithStepsToReduceError = ( |
             f.
            | 
            f: 'asd' asOutputFile.
            100 do: [
              f write: test1 stepsToReduceError asString, '\n'.
            ].
            f close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepsToReduceErrorPerSecond = ( |
             a.
             t.
             x.
            | 
            t: test1.
            a: [x: t stepsToReduceError] cpuTime /= 1000.
            a = 0 ifTrue: [^ 0 infinity].
            x /= a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'distanceVaryingExperiment' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         test1 = ( |
            | 
            sorterSwarm with: 10000 NodesLike: sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         fastFloatsSimpleError = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError node.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         neighbors <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         addNeighbor: n = ( |
            | 
            neighbors: neighbors copyAddLast: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy neighbors: neighbors copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         left = ( |
            | neighbors first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         left: n = ( |
            | neighbors at: 0 Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         right = ( |
            | neighbors at: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         right: n = ( |
            | 
            neighbors at: neighbors size pred Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sorter = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals eSim fastFloatsSimpleError node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError sorter.

CopyDowns:
globals eSim fastFloatsSimpleError node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         datum <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError sorter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy datum: random float).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         error = ( |
            | right datum < datum ifTrue: 1 False: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            left datum > datum ifTrue: [
              |d|
              d: datum.  datum: left datum.  left datum: d
            ].
            right datum < datum ifTrue: [
              |d|
              d: datum.  datum: right datum.  right datum: d
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         swarm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError swarm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         nodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError swarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy nodes: nodes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         pickANode = ( |
            | 
            nodes at: random integer: nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            step: pickANode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step: n = ( |
            | n step).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         with: n NodesLike: nodeProto = ( |
             r.
            | 
            r: copy.
            r nodes: nodes copySize: n.
            n do: [|:i| r nodes at: i Put: nodeProto copy].
            n pred do: [|:i. n1. n2|
              n1: r nodes at: i.
              n2: r nodes at: i succ.
              n2 addNeighbor: n1.
              n1 addNeighbor: n2.
            ].
            r nodes first neighbors: r nodes first neighbors copyAddFirst: r nodes first.
            r nodes last addNeighbor: r nodes last.

            r nodes first left:  r nodes first.
            r nodes last  right: r nodes last.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sorterSwarm = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals eSim fastFloatsSimpleError swarm copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError sorterSwarm.

CopyDowns:
globals eSim fastFloatsSimpleError swarm. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError sorterSwarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         avgError = ( |
            | 
            totalError /= nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         new = ( |
            | with: 1000 NodesLike: eSim sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         oldAvgError = ( |
             x <- 0.
            | 
            nodes size pred do: [|:i. d|
              d: (nodes at: i succ) datum - (nodes at: i) datum.
              d < 0 ifTrue: [x: x + 1].
            ].
            x /= nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'swarm' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step: n = ( |
            | 
            totalError: totalError - (n left left error + n left error + n error + n right error).
            resend.step: n.
            totalError: totalError + (n left left error + n left error + n error + n right error).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepsToReduceError = ( |
             e.
             n <- 0.
            | 
            e: avgError.
            [avgError > (e * 0.9)] whileTrue: [step. n: n succ].
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         with: n NodesLike: nodeProto = ( |
             r.
            | 
            r: resend.with: n NodesLike: nodeProto.
            r nodes do: [|:n|
              r totalError: r totalError + n error
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         totalError <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim fastFloatsSimpleError tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         fileWithStepsToReduceError = ( |
             f.
            | 
            f: 'asd' asOutputFile.
            100 do: [
              f write: test1 stepsToReduceError asString, '\n'.
            ].
            f close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepsToReduceErrorPerSecond = ( |
             a.
             t.
             x.
            | 
            t: test1.
            a: [x: t stepsToReduceError] cpuTime /= 1000.
            a = 0 ifTrue: [^ 0 infinity].
            x /= a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'fastFloatsSimpleError' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         test1 = ( |
            | 
            sorterSwarm with: 10000 NodesLike: sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         payrollExample = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         clonableAndMe = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample clonableAndMe.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         protos* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employee = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample employee.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample employee parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRandom = ( |
            | copy initialize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initName = ( |
            | 
            nameNum: nameNum succ.
            name: 'Smith', nameNum printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initRating = ( |
            | 
            rating: minRating + (random integer: maxRating succ - minRating)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initSalary = ( |
            | 
            salary: minSalary + (random integer: maxSalary succ - minSalary)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initialize = ( |
            | 
            initName.
            initRating.
            initSalary).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         nameNum <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: alterations\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         raisePerRatingPerSalary: x = ( |
            | 
            raise: x * salary * rating).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> 'parent' -> () From: ( | {
         'Category: metrics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         relativeErrorGivenPerPoint: pp = ( |
            | 
            ((raise + salary) /= ((rating * salary * pp) + salary)) - 1.0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)\x7fVisibility: public'
        
         raise <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         rating <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employee' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         salary <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeSet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample employeeSet.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         employees <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample employeeSet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy employees: employees copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRandom = ( |
            | copy initialize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeFns* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample employeeSet parent employeeFns.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         averagePerPoint = ( |
             s <- 0.
            | 
            employees do: [|:e| s: s + (e raise /= e salary /= e rating)].
            s /= employees size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         dollarsForUnityRaise = ( |
             sum <- 0.
            | 
            ratings with: salaries Do: [|:rr. :ss. :i| sum: sum + ( rr * ss )].
            sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'Category: projections\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         raises = ( |
            | 
            employees copyMappedBy: [|:e| e raise]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'Category: projections\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         ratings = ( |
            | 
            employees copyMappedBy: [|:e| e rating]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'Category: projections\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         relativeErrorsGivenPerPoint: pp = ( |
            | 
            employees copyMappedBy: [|:e| e relativeErrorGivenPerPoint: pp ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'Category: projections\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         salaries = ( |
            | 
            employees copyMappedBy: [|:e| e salary]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         totalRaiseDollars = ( |
             sum <- 0.
            | 
            employees do: [|:e| sum: sum + e raise].
            sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         from: start Size: n = ( |
             r.
            | 
            r: vector copySize: n.
            n do: [|:i|
             r at: i Put: employees at: (start + i) % employees size
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         initialize = ( |
            | 
            employees: list copyRemoveAll.
            employeeCount do: [ employees addLast: employee copyRandom ].
            employees: employees asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'Category: summaries\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         meanSalary = ( |
            | salaries mean).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'Category: summaries\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         payroll = ( |
            | salaries sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> () From: ( | {
         'Category: summaries\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         totalRatings = ( |
            | ratings sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         ensemble = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample ensemble.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (false)'
        
         anyRan <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (true)'
        
         converging <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (nil)'
        
         employees.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         lastError <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         nodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample ensemble parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy nodes: nodes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRandom = ( |
            | 
            copy initialize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         detailedEmployeesStateString = ( |
            | 
            employees employees size printString, ' employees,  $', employees payroll printString, ' total payroll\n',
            'salaries:   ', (stats copyFrom: employees salaries       ) statePrintString, '\n',
            'ratings:    ', (stats copyFrom: employees ratings        ) statePrintString, '\n',
            'raises:     ', (stats copyFrom: employees raises         ) statePrintString, '\n').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         detailedNodeStateString = ( |
            | 
            nodes size printString, ' nodes').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         detailedStateString = ( |
            | 
            detailedEmployeesStateString,
            detailedNodeStateString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         gridNeighborsForIndex: index = ( |
             ns.
             p.
             pts.
             r.
             x.
            | 
            p: pointForIndex: index.
            pts: list copyRemoveAll.
            pts add: p - (1@0).
            pts add: p + (1@0).
            pts add: p - (0@1).
            pts add: p + (1@0).
            r: (0@0) # pointForIndex: nodeCount pred.
            ns: list copyRemoveAll.
            pts do: [|:pt|
              (r includes: pt) ifTrue: [
                ns add: nodes at: indexForPoint: pt
              ]
            ].
            ns asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: measurments\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         howCloseIsNode: n = ( |
            | 
            1 - (
            0 max: 1 min: (n meanRelativeError / worstRelativeError) absoluteValue)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         indexForPoint: p = ( |
             x.
            | 
            x: nodeCount squareRoot asInteger.
            p x + (p y * x)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initReport = ( |
            | 
            reportString: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         initialize = ( |
            | 
            employees: employeeSet copyRandom.
            initializeNodes.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initializeNodes = ( |
            | 
            nodes: vector copySize: nodeCount.
            nodes do: [|:nil. :i| nodes at: i Put: newNode: i].
            nodes do: [|:n. :i| n neighbors: neighborsForIndex: i].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         keepStepping = ( |
             r.
            | 
            [xxxx].
            anyRan ifFalse: [halt. ^ false].
            r: meanRelativeError.
            lastError < r ifTrue: [converging: false].
            lastError: r.

            'keepStepping ' print.
            ['totalRaiseDollarsInNodes: ' print.
            totalRaiseDollarsInNodes print. ' ' ].
            ' meanRelativeError: ' print.
            r printLine.

            (r > maxRelativeError) && [converging]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: measurments\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         meanRelativeError = ( |
            | 
            relativeErrors rootMeanSquare).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         neighborsForIndex: index = ( |
            | 
            rectangularGrid ifTrue: [^ gridNeighborsForIndex: index].
            sequentialNeighbors ifTrue: [sequentialNeighborsForIndex: index]
               False: [randomNeighborsForIndex: index]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         newNode: index = ( |
             emps.
            | 
            emps: employees from: index * employeesPerNode Size: employeesPerNode.
            (node copyIndex: index Employees: emps copyMappedBy: [|:e| e copy]   ) ensemble: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         pointForIndex: index = ( |
             x.
            | 
            x: nodeCount squareRoot asInteger.
            (index % x) @ (index /- x)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         randomNeighborsForIndex: index = ( |
             r.
            | 
            r: set copyRemoveAll.
            [r size < (neighborCount min: nodes size pred)] whileTrue: [
              |i|
              [i: random integer: nodes size. i = index] whileTrue.
              r add: nodes at: i
            ].
            r asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: measurments\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         relativeErrors = ( |
            | 
            (nodes gather: [|:n| n relativeErrors]) asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         report: s = ( |
            | 
            s print.
            reportString: reportString, s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         run = ( |
            | 
            start.
            [keepStepping] whileTrue: [step]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         sequentialNeighborsForIndex: index = ( |
             r.
            | 
            r: set copyRemoveAll.
            neighborCount succ do: [|:n. x|
              x: n - neighborCount half.
              x = 0 ifFalse: [
                r add: nodes at: (index + x + nodes size) % nodes size.
              ].
            ].
            r size = neighborCount ifFalse: [halt].
            r asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         start = ( |
            | 
            nodes first totalRaiseDollars: totalRaiseDollars.
            worstRelativeError: "nodes first meanRelativeError absoluteValue max:" nodes last meanRelativeError absoluteValue.
            anyRan: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step = ( |
            | 
            stepCount: stepCount succ.
            anyRan: false.
            stepEachNodeInRandomOrder).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepEachNodeInRandomOrder = ( |
            | 
            (random permutation: nodes size) do: [|:i| stepNodeAt: i]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepNode: n = ( |
            | 

            [converging ifFalse: [halt].].
            anyRan:  n step || anyRan.
            [converging ifFalse: [meanRelativeError printLine]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepNodeAt: i = ( |
            | 
            stepNode: nodes at: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: measurments\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         targetRaisePerPoint = ( |
            | 
            totalRaiseDollars /= (employees salaries dotProduct: employees ratings)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | 
            copyRandom testMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         testMe = ( |
            | 
            initReport.
            report: 'Before testing: \n'.
            report: detailedStateString, '\n'.
            run.
            report: '\n\nAfter testing: \n'.
            report: detailedStateString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: measurments\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         totalRaiseDollars = ( |
            | 
            employees
              ifNil: 0
              IfNotNil: [employees payroll * netFractionalPayrollIncrease]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> 'parent' -> () From: ( | {
         'Category: measurments\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         totalRaiseDollarsInNodes = ( |
             s <- 0.
            | 
            nodes do: [|:n| s: s + n totalRaiseDollars].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (\'\'.)'
        
         reportString <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)\x7fVisibility: public'
        
         stepCount <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensemble' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (1)'
        
         worstRelativeError <- 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         ensembleMorph = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample ensembleMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> () From: ( | {
         'Category: ensembleMorph state\x7fModuleInfo: Module: eSim InitialContents: InitializeToExpression: (nil)'
        
         myEnsemble <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample ensembleMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         beBigEnough = ( |
             s.
            | 
            s: xySizeInNodes * nodeMorph bounds size.
            setWidth: s x Height: s y).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         createAndPlaceNodeMorphs = ( |
            | 
            xySizeInNodes x do: [|:x|
              xySizeInNodes y do: [|:y. node. nodeMorph. nodePos|
                node: myEnsemble nodes at: myEnsemble indexForPoint: x@y.
                nodePos: (x@y) * self nodeMorph bounds size.
                nodeMorph: self nodeMorph copyNode: node.
                addMorph: nodeMorph.
                nodeMorph position: nodePos.
              ]
            ].
            changed).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: event handling\x7fModuleInfo: Module: eSim InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         defaultButtonHolder <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fComment: Initialize this morph.  This message is sent
to each morph prototype after filing it in.\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         initializePrototype = ( |
            | 
            resend.initializePrototype.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: event handling\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         middleMouseDown: e = ( |
            | popUpMenu: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'ensembleMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: event handling\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         popUpMenu: evt = ( |
             menu.
            | 
            menu: ui2Menu copy.
            menu addButtonTarget: self AsynchronousScriptBlock: [target startSimulation] Label: 'Start'.
            defaultButtonHolder: menu initializeDefaultButtonHolder: defaultButtonHolder.
            menu colorAll: menu color.
            menu popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         protos* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         showNodes = ( |
            | 
            beBigEnough.
            createAndPlaceNodeMorphs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         startSimulation = ( |
            | 
            myEnsemble: ensemble copyRandom.
            myEnsemble start.
            showNodes.
            startGettingStepped).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step = ( |
            | 
            myEnsemble keepStepping ifTrue: [myEnsemble step. changed] False: [stopGettingStepped]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         xySizeInNodes = ( |
             x.
            | 
            x: myEnsemble nodes size squareRoot asInteger.
            x @ x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'ensembleMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            eSim payrollExample ensembleMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample node.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         employees <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'Category: state used only for reporting\x7fModuleInfo: Module: eSim InitialContents: InitializeToExpression: (nil)'
        
         ensemble.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (-1)'
        
         index <- -1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         neighbors <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (resend.copy employees: employees copy) neighbors: neighbors copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForDebugging = ( |
            | 
            copy employees: employees copyMappedBy: [|:e| e copy]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIndex: i Employees: emps = ( |
            | 
            ((copy index: i) employees: emps asVector) initialize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeFns* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'employeeSet' -> 'parent' -> 'employeeFns' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: metrics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         howCloseIAm = ( |
            | 
            ensemble howCloseIsNode: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         increaseRaiseDollarsBy: rd = ( |
             newTotal.
            | 
            newTotal: totalRaiseDollars + rd.
            totalRaiseDollars: newTotal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initialize = ( |
            | 
            setTotalRatings.
            setPayrollCache).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: metrics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         meanRelativeError = ( |
            | 
            relativeErrors rootMeanSquare).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         neighborsAtRandom = ( |
             r.
            | 
            r: neighbors copy.
            (random permutation: r size) do: [|:n. :i| r at: i Put: neighbors at: n].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'clonableAndMe' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: metrics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         payroll = ( |
            | payrollCache).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: metrics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         relativeErrors = ( |
            | 
            relativeErrorsGivenPerPoint: ensemble targetRaisePerPoint).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         setPayrollCache = ( |
            | 
            payrollCache: salaries sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         setTotalRatings = ( |
            | 
            totalRatings: ratings sum).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | index printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step = ( |
             r <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
            [xxxx].
            neighborsAtRandom do: [| :neighbor |
              r: (stepNeighbor: neighbor) || r.
            ].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepNeighbor: n = ( |
             delta.
             err.
             export.
             myExcess.
            | 
            [xxxx].
            [err: ensemble meanRelativeError.].
            delta: averagePerPoint - n averagePerPoint.
            delta = 0 ifTrue: [^ false].
            export: (totalRaiseDollars - n totalRaiseDollars) /= 10.
            export: export absoluteValue.
            delta < 0 ifTrue: [export: export negate].
            (totalRaiseDollars - export) < 0 ifTrue: [halt].
            (n totalRaiseDollars + export) < 0 ifTrue: [halt].
            increaseRaiseDollarsBy: export negate.
            n increaseRaiseDollarsBy: export.
            [ensemble meanRelativeError > err  ifTrue: [halt]].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         storeStringNeeds = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> 'parent' -> () From: ( | {
         'Category: running\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         totalRaiseDollars: x = ( |
             e.
             raisePerRatingPerSalary.
             residual.
             rstotal.
            | 
            rstotal: ratings dotProduct: salaries.
            raisePerRatingPerSalary: x /= rstotal.
            employees do: [|:e|
              e raisePerRatingPerSalary: raisePerRatingPerSalary
            ].
            e: (totalRaiseDollars - x) absoluteValue.
            e > 0.5  ifTrue: [[xxxx]. halt].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         payrollCache <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         totalRatings <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         nodeMorph = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample nodeMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> () From: ( | {
         'Category: nodeMorph state\x7fModuleInfo: Module: eSim InitialContents: InitializeToExpression: (nil)'
        
         myNode.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample nodeMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         color = ( |
            | 
            myNode ifNil: [^ resend.color].
            (paint named: 'red') interpolate: howCloseIAm From: (paint named: 'green')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         copyNode: n = ( |
            | copy myNode: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         howCloseIAm = ( |
            | 
            myNode howCloseIAm).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         initializePrototype = ( |
            | 
            resend.initializePrototype.
            color: paint named: 'blue'.
            setWidth: 10 Height: 10.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'nodeMorph'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'nodeMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | eSim payrollExample nodeMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parameters* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample parameters.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeCount = 1000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeDuplication = 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeesPerNode = 10.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         maxRating = 10.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         maxRelativeError = 0.0001.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         maxSalary = 100000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         minRating = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         minSalary = 50000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fCategory: if not rectangular\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         neighborCount = 2.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         netFractionalPayrollIncrease = 0.05.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         nodeCount = ( |
             min.
             x.
            | 
            min: (employeeCount * employeeDuplication) /+ employeesPerNode.
            rectangularGrid ifFalse: [^ min].
            x: min squareRoot ceil asInteger.
            [x square >= min] whileFalse: [x: x succ].
            x square).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         rectangularGrid = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> () From: ( | {
         'Category: parameters\x7fCategory: if not rectangular\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sequentialNeighbors = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         protoParams = bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'parameters' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         simpleParams = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample simpleParams.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeCount = 100.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeeDuplication = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         employeesPerNode = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         maxRating = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         maxRelativeError = 0.01.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         maxSalary = 100000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         minRating = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         minSalary = 100000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         neighborCount = 99.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         nodeCount = ( |
            | 
            (employeeCount * employeeDuplication) /+ employeesPerNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'simpleParams' -> () From: ( | {
         'Category: parameters\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         totalRelativeRaise = 0.05.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'Category: prototypes\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         stats = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample stats.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         max <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         mean <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         median <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         min <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         n <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim payrollExample stats parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFrom: aCollection = ( |
            | copy from: aCollection).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         from: aCollection = ( |
            | 
            n: aCollection size.
            min: aCollection min.
            max: aCollection max.
            quartile1: aCollection percentile: 25.
            median: aCollection median.
            quartile3: aCollection percentile: 75.
            mean: aCollection mean.
            standardDeviation: aCollection standardDeviation.
            rms: aCollection rootMeanSquare).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            'n = ', n printString,
            ', min = ', min printString,
            ', q1 = ', quartile1 printString,
            ', q2 = ', median printString,
            ', q3 = ', quartile3 printString,
            ', max = ', max printString, 
            ',  rms = ', rms printString,
            ',  mean = ', mean printString,
            ', sd = ', standardDeviation printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         quartile1 <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (3)'
        
         quartile3 <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         rms <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> 'stats' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         standardDeviation <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'payrollExample' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         test = ( |
            | 
            ensemble test).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         eSim = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules eSim.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
             resend.postFileIn.
            eSim payrollExample nodeMorph initializePrototype.
            eSim payrollExample ensembleMorph initializePrototype.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'random' -> () From: ( | {
         'Comment: Return collection of N ints in [0..n) in a random order\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         permutation: n = ( |
             debug = bootstrap stub -> 'globals' -> 'false' -> ().
             v.
            | 
            v: vector copySize: n.
            n do: [|:i| v at: i Put: i].
            n downTo: 2 Do: [|:i. x. y|
              "v[i..n) is random AND v has each int exactly once"
              x: integer: i.

              y: v at: i pred.  v at: i pred Put: v at: x.  v at: x Put: y.

              debug ifTrue: [|check|
                check: vector copySize: n FillingWith: 0.
                v do: [|:i| check at: i Put: (check at: i) succ].
                check do: [|:a| a = 1 ifFalse: [halt]].
              ].
            ].
            v).
        } | ) 



 '-- Side effects'

 globals modules eSim postFileIn
