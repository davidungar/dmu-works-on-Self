 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'benchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         smalltalkTinyBenchmarks = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'benchmarks' -> 'smalltalkTinyBenchmarks' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals benchmarks smalltalkTinyBenchmarks.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'benchmarks' -> 'smalltalkTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         tinyBenchmarks = ( |
             n1 <- 1.
             n2 <- 28.
             r.
             t1.
             t2.
            | 

            [
              t1: [n1 benchmark] realTime.
              t1 < 1000
            ]  whileTrue:[n1 printLine. n1: n1 * 2]. "Note: #benchmark's runtime is about O(n)"

            [  t2: [r: n2 benchFib] realTime.
               t2 < 1000] whileTrue:[n2: n2 + 1]. 
            "Note: #benchFib's runtime is about O(k^n),"
            "where k is the golden number = (1 + 5 sqrt) / 2 = 1.618...."

            ((n1 * 500000 * 1000) / t1) printString, ' bytecodes/sec; ',
            ((r * 1000) / t2) printString, ' sends/sec').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'benchmarks' -> 'smalltalkTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         tinyBenchmarksSelfStyle = ( |
             n1 <- 1.
             n2 <- 28.
             r.
             t1.
             t2.
            | 

            [
              t1: [n1 benchmarkSelfStyle] realTime.
              t1 < 1000
            ]  whileTrue:[n1 printLine. n1: n1 * 2]. "Note: #benchmark's runtime is about O(n)"

            [  t2: [r: n2 benchFib] realTime.
               t2 < 1000] whileTrue:[n2: n2 + 1]. 
            "Note: #benchFib's runtime is about O(k^n),"
            "where k is the golden number = (1 + 5 sqrt) / 2 = 1.618...."

            ((n1 * 500000 * 1000) / t1) printString, ' bytecodes/sec; ',
            ((r * 1000) / t2) printString, ' sends/sec').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         stTinyBenchmarks = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules stTinyBenchmarks.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'stTinyBenchmarks' -> () From: ( | {
         'ModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: Smalltalk tinyBenchmarks\x7fModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         benchFib = ( |
            | "Handy send-heavy benchmark"
            "| r t |
            (result // seconds to run) = approx calls per second
              t _ Time millisecondsToRun: [r _ 26 benchFib].
              (r * 1000) // t"
            "138000 on a Mac 8100/100"
            < 2
              ifTrue: [1] 
              False: [(- 1) benchFib + (- 2) benchFib + 1]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: Smalltalk tinyBenchmarks\x7fModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         benchmark = ( |
             count.
             flags.
             k.
             prime.
             size <- 8190.
            | 
              "Handy bytecode-heavy benchmark"
            "(500000 // time to run) = approx bytecodes per second"
            "5000000 // (Time millisecondsToRun: [10 benchmark]) * 1000"
            "3059000 on a Mac 8100/100"
                do:
                    [|:iter |
                    count: 0.
                    flags: vector copySize: size FillingWith: true.
                    size do:
                        [|:i | (flags at: i) ifTrue:
                            [prime: i + 2.
                            k: i.
                            [k < size] whileTrue:
                                [flags at: k Put: false.
                                k: k + prime].
                            count: count + 1]]].
                count).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'integer' -> () From: ( | {
         'Category: Smalltalk tinyBenchmarks\x7fModuleInfo: Module: stTinyBenchmarks InitialContents: FollowSlot'
        
         benchmarkSelfStyle = ( |
             count.
             size <- 8190.
            | 
              "Handy bytecode-heavy benchmark"
            "(500000 // time to run) = approx bytecodes per second"
            "5000000 // (Time millisecondsToRun: [10 benchmark]) * 1000"
            "3059000 on a Mac 8100/100"
            do: [
              |:iter. flags. |
              count: 0.
              flags: vector copySize: size FillingWith: true.
              flags do: [
                |:f. :i |
                f ifTrue: [
                  | prime. |
                  prime: i + 2.
                  0 upTo: size By: prime Do: [|:k| flags at: k Put: false].
                  count: count + 1 
                ]
              ]
            ].
            count).
        } | ) 



 '-- Side effects'

 globals modules stTinyBenchmarks postFileIn
