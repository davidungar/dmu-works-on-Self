 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         esim = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         node = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim node.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)'
        
         neighbors <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim node parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         addNeighbor: n = ( |
            | 
            neighbors: neighbors copyAddLast: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy neighbors: neighbors copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         left = ( |
            | neighbors first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         left: n = ( |
            | neighbors at: 0 Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         right = ( |
            | neighbors at: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         right: n = ( |
            | 
            neighbors at: neighbors size pred Put: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sorter = bootstrap define: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals esim node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim sorter.

CopyDowns:
globals esim node. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         datum <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim sorter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy datum: random float).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         error = ( |
            | right datum < datum ifTrue: 1 False: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'esim' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorter' -> 'parent' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         swarm = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim swarm.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         nodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim swarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy nodes: nodes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         pickANode = ( |
            | 
            nodes at: random integer: nodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         step = ( |
            | 
            step: pickANode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step: n = ( |
            | n step).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         sorterSwarm = bootstrap define: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals esim swarm copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim sorterSwarm.

CopyDowns:
globals esim swarm. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim sorterSwarm parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         avgError = ( |
            | 
            totalError /= nodes size pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'esim' -> 'swarm' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         step: n = ( |
            | 
            totalError: totalError - n left error - n error.
            resend.step: n.
            totalError: totalError + n left error + n error.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         stepsToReduceError = ( |
             e.
             n <- 0.
            | 
            e: avgError.
            [avgError > (e * 0.9)] whileTrue: [step. n: n succ].
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> 'parent' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'sorterSwarm' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: InitializeToExpression: (0)'
        
         totalError <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         tests = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'esim' -> 'tests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals esim tests.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'tests' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'esim' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'tests' -> () From: ( | {
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'esim' -> 'tests' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot'
        
         test1 = ( |
            | 
            sorterSwarm with: 1000 NodesLike: sorter).
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
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'eSim' -> () From: ( | {
         'ModuleInfo: Module: eSim InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules eSim postFileIn
