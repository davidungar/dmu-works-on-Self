 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         oldWhyBad = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad node.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: InitializeToExpression: (vector)'
        
         neighbors <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         addNeighbor: n = ( |
            | 
            neighbors: neighbors copyAddLast: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy neighbors: neighbors copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         left = ( |
            | neighbors first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         left: n = ( |
            | neighbors at: 0 Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         right = ( |
            | neighbors at: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         right: n = ( |
            | 
            neighbors at: neighbors size pred Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         sorter = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals eSim oldWhyBad node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad sorter.

CopyDowns:
globals eSim oldWhyBad node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: InitializeToExpression: (0)'
        
         datum <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad sorter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy datum: random float).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         swarm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad swarm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         nodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad swarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy nodes: nodes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         pickANode = ( |
            | 
            random integer: nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | (nodes at: pickANode) step).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         sorterSwarm = bootstrap define: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals eSim oldWhyBad swarm copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad sorterSwarm.

CopyDowns:
globals eSim oldWhyBad swarm. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad sorterSwarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         avgError = ( |
             x <- 0.
            | 
            nodes size pred do: [|:i. d|
              d: (nodes at: i succ) datum - (nodes at: i) datum.
              d < 0 ifTrue: [x: x + 1].
            ].
            x /= nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         avgErrorf = ( |
             x <- 0.
            | 
            nodes size pred do: [|:i. d|
              d: (nodes at: i succ) datum - (nodes at: i) datum.
              d < 0 ifTrue: [x: x - d].
            ].
            x / nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         new = ( |
            | with: 1000 NodesLike: eSim sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'swarm' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         stepsToReduceError = ( |
             e.
             n <- 0.
            | 
            e: avgError.
            [avgError > (e * 0.9)] whileTrue: [step. n: n succ].
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         with: n NodesLike: nodeProto = ( |
             r.
            | 
            r: resend.with: n NodesLike: nodeProto.
            "r nodes do: [|:nn| nn datum: random integer: n]."
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals eSim oldWhyBad tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         fileWithStepsToReduceError = ( |
             f.
            | 
            f: 'asd' asOutputFile.
            100 do: [
              f write: test1 stepsToReduceError asString, '\n'.
            ].
            f close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         stepsToReduceErrorPerSecond = ( |
             a.
             t.
             x.
            | 
            t: test1.
            a: [x: t stepsToReduceError] cpuTime /= 1000.
            x /= a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'eSim' -> 'oldWhyBad' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         test1 = ( |
            | 
            sorterSwarm with: 1000 NodesLike: sorter).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         eSimOld = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules eSimOld.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSimOld' -> () From: ( | {
         'ModuleInfo: Module: eSimOld InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules eSimOld postFileIn
