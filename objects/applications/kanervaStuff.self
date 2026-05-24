 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         kanveraStuff = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         binomialStuff = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff binomialStuff.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         erfer = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( |
             {} = 'Comment: http://en.wikipedia.org/wiki/Error_function\x7fModuleInfo: Creator: globals kanveraStuff binomialStuff erfer.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         a = 0.140012.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         axSquared = ( |
            | 
            a * x square).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         denominator = ( |
            | 1.0 + axSquared).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         difference = ( |
            | 1.0 - exponent exp).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         erf = ( |
            | 
            (signum: x) * radical).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         erf: x = ( |
            | 
            (copy x: x asFloat) erf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         exponent = ( |
            | 
            x square negate * ratio).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         numerator = ( |
            | ( 4.0 /= pi ) + axSquared).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         radical = ( |
            | difference squareRoot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         ratio = ( |
            | numerator /= denominator).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         signum: x = ( |
            | 
            x compare: 0 IfLess: -1.0 Equal: 0 Greater: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         test = ( |
            | erf: 0.5).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> 'erfer' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (0)'
        
         x <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         mean = ( |
            | n * p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (4000)'
        
         n <- 4000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (0.5)'
        
         p <- 0.5.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         proportionNearMeanOfSDs: numberOfSDs = ( |
            | 
            erf: numberOfSDs /= 2.0 squareRoot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'binomialStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         sd = ( |
            | n squareRoot half).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         distancePair = 0.25.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         distanceSevenSet = 0.34375.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         markExample = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff markExample.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         indicesToCheck.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         indicesToCheckBySubset.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (12)'
        
         kanervaWordBitSize <- 12.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         kanervaWords.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         masks.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (6)'
        
         nonTargetNumberOfOnes <- 6.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (8)'
        
         numberOfKanervaWords <- 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (3)'
        
         numberOfSubsets <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff markExample parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         coinFlip = ( |
            | 
            random boolean asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | resend.copy random: resend.random copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         copy: aVector Without: anIndex = ( |
            | 
            (aVector copyFrom: 0 UpTo: anIndex), (aVector copyFrom: anIndex succ)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         doIt = ( |
            | 
            makeKanervaWords.
            makeSubsets.
            makeIndicesToCheck.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         indexOfTarget = ( |
            | numberOfKanervaWords pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         indicesOfMostOnesIn: aVector = ( |
             maxOneCount <- -1.
             r.
            | 
            r: set copyRemoveAll.
            aVector do: [|:v. :i. pc|
              pc: populationCount: v.
              pc compare: maxOneCount 
                   IfLess: [] Equal: [r add: pc@i] Greater: [r removeAll. r add: pc@i. maxOneCount: pc].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         isTargetFound = ( |
            | 
            indicesToCheck includes: indexOfTarget).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         makeIndicesToCheck = ( |
            | 
            indicesToCheckBySubset: subsets copyMappedBy: [ list copyRemoveAll ].
            subsets with: indicesToCheckBySubset Do: [|:ss. :aList. :i| ss do: [|:e. :j| e = (masks at: i) ifTrue: [ aList add: j ] ] ].
            indicesToCheck: indicesToCheckBySubset gather: [|:e| e] Into: set copyRemoveAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         makeKanervaWords = ( |
            | 
            kanervaWords: vector copySize: numberOfKanervaWords.
            kanervaWords size pred do: [|:i| kanervaWords at: i Put: (random: nonTargetNumberOfOnes OnesOutOf: kanervaWordBitSize). ].
            kanervaWords at: indexOfTarget Put: random: targetNumberOfOnes OnesOutOf: kanervaWordBitSize.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         makeSubsets = ( |
            | 
            subsets: vector copySize: numberOfSubsets.
            subsetIndices: randomListOf: widthOfSubsets * numberOfSubsets OutOf: kanervaWordBitSize.
            subsetIndices: subsetIndices asVector.
            subsetIndicesBySubset: vector copySize: numberOfSubsets.
            masks: vector copySize: numberOfSubsets.
            numberOfSubsets do: [|:i|
              subsetIndicesBySubset at: i Put: subsetIndices copyFrom: i * widthOfSubsets Size: widthOfSubsets.
              masks at: i Put: maskForBits: subsetIndicesBySubset at: i.
              subsets at: i Put: sliceOf: kanervaWords Mask: masks at: i.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         maskForBits: bitIndices = ( |
             mask <- 0.
            | 
            bitIndices do: [|:i| mask: mask || (1 << i)].
            mask).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         populationCount: i = ( |
            | i numberOfOnes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         portionChecked = ( |
            | 
            indicesToCheck size /= numberOfKanervaWords).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         random: oneCount OnesOutOf: totalBits = ( |
             onePositions.
             r <- 0.
            | 
            onePositions: randomListOf: oneCount OutOf: totalBits.
            onePositions do: [|:p| r: r || (1 << p)].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fComment: return collection of count elements taken from 0..total-1 without replacement\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         randomListOf: count OutOf: total = ( |
             r.
             remaining.
            | 
            remaining: vector copySize: total.
            total do: [|:i| remaining at: i Put: i].
            r: list copyRemoveAll.
            count do: [|i|
              i: random integer: remaining size.
              r addLast: remaining at: i.
              remaining: copy: remaining Without: i.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         rateAndEff = ( |
             eff.
             rate.
             x.
            | 
            x: (vector copySize: reps) copyMappedBy: [ copy doIt ].
            rate: (x copyMappedBy: [|:e| e isTargetFound asInteger asFloat]) mean.
            eff: (x copyMappedBy: [|:e| e portionChecked]) mean.
            rate @ eff).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         reportWorkingFrequency = ( |
            | ((vector copySize: 10000) copyMappedBy: [copy tryIt asInteger asFloat]) mean).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         reps = 100000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> () From: ( | {
         'Category: gateways\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         sliceOf: fullVectors Mask: mask = ( |
            | 
            fullVectors copyMappedBy: [|:v| v && mask]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         random.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         subsetIndices.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         subsetIndicesBySubset.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         subsets.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (8)'
        
         targetNumberOfOnes <- 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (3)'
        
         widthOfSubsets <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (1000)'
        
         n <- 1000.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         oldMarkExample = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff oldMarkExample.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (12)'
        
         kanervaWordBitSize <- 12.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (6)'
        
         nonTargetNumberOfOnes <- 6.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (8)'
        
         numberOfKanervaWords <- 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (3)'
        
         numberOfSubsets <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff oldMarkExample parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         coinFlip = ( |
            | 
            random boolean asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy random: resend.random copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         copy: aVector Without: anIndex = ( |
            | 
            (aVector copyFrom: 0 UpTo: anIndex), (aVector copyFrom: anIndex succ)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         indicesOfMostOnesIn: aVector = ( |
             maxOneCount <- -1.
             r.
            | 
            r: set copyRemoveAll.
            aVector do: [|:v. :i. pc|
              pc: populationCount: v.
              pc compare: maxOneCount 
                   IfLess: [] Equal: [r add: pc@i] Greater: [r removeAll. r add: pc@i. maxOneCount: pc].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         populationCount: i = ( |
            | i numberOfOnes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         random: oneCount OnesOutOf: totalBits = ( |
             onePositions.
             r <- 0.
            | 
            onePositions: randomSetOf: oneCount OutOf: totalBits.
            onePositions do: [|:p| r: r || (1 << p)].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'Comment: return collection of count elements taken from 0..total-1 without replacement\x7fModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         randomSetOf: count OutOf: total = ( |
             r.
             remaining.
            | 
            remaining: vector copySize: total.
            total do: [|:i| remaining at: i Put: i].
            r: set copyRemoveAll.
            count do: [|i|
              i: random integer: count.
              r add: i.
              remaining: copy: remaining Without: i
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         randomSlice: fullVectors Width: sliceWidth OutOf: fullWidth = ( |
             mask.
            | 
            mask: random: sliceWidth OnesOutOf: fullWidth.
            fullVectors copyMappedBy: [|:v| v && mask]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         reportWorkingFrequency = ( |
            | ((vector copySize: 10000) copyMappedBy: [copy tryIt asInteger asFloat]) mean).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         test = ( |
            | copy tryIt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         tryIt = ( |
             mostOnes.
             onesToSearch.
             subsets.
             union.
             v.
             works.
             x.
            | 
            v: vector copySize: numberOfKanervaWords.
            v size pred do: [|:i| v at: i Put: (random: nonTargetNumberOfOnes OnesOutOf: kanervaWordBitSize). ].
            v at: v size pred Put: random: targetNumberOfOnes OnesOutOf: kanervaWordBitSize.
            "scramble: v."
            subsets: vector copySize: numberOfSubsets.
            subsets do: [|:s. :i| subsets at: i Put: randomSlice: v Width: widthOfSubsets OutOf: kanervaWordBitSize].
            printLine.
            mostOnes: subsets copyMappedBy: [|:s| indicesOfMostOnesIn: s].
            mostOnes do: [|:s| (s printStringSize: 100 Depth: 1) printLine].
            union: set copyRemoveAll. mostOnes do: [|:s| union addAll: s].
            x: ( union copyMappedBy: [|:p| p x]) max.
            onesToSearch: (union copyFilteredBy: [|:s| s x = x]) copyMappedBy: [|:p| p y].
            works: onesToSearch includes: v size pred.
            ('have to search ', onesToSearch size printString, ' items: ', (works ifTrue: 'yes' False: 'no')) printLine.
            '' printLine.
            works).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (nil)'
        
         random.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (8)'
        
         targetNumberOfOnes <- 8.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'oldMarkExample' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (3)'
        
         widthOfSubsets <- 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         kanervaStuff = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules kanervaStuff.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'kanervaStuff' -> () From: ( | {
         'ModuleInfo: Module: kanervaStuff InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'testingMarkExample
'.
        } | ) 



 '-- Sub parts'

 bootstrap read: 'testingMarkExample' From: 'applications'



 '-- Side effects'

 globals modules kanervaStuff postFileIn
