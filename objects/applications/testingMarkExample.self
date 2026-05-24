 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot\x7fVisibility: public'
        
         testingMarkExample = bootstrap define: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals kanveraStuff markExample clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff testingMarkExample.

CopyDowns:
globals kanveraStuff markExample. clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals kanveraStuff testingMarkExample parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing kanerva words\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         checkMedian = ( |
            | 
            checkRangeOf: kanervaWords Max: ( 1 << kanervaWordBitSize ) pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing kanerva words\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         checkNoTwoTheSame = ( |
            | 
            kanervaWords asSet size  =  kanervaWords size  ifFalse: [error: 'not unique'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing kanerva words\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         checkNumberOfOnes = ( |
            | 
            kanervaWords do: [|:kw. :i. no. sb |
              sb: i = indexOfTarget ifTrue: targetNumberOfOnes False: nonTargetNumberOfOnes.
              no: kw numberOfOnes.
              no = sb ifFalse: [
                error: 'word at ', i printString, ' value: ', (kw printStringBase: 16), ' should have ',
                       sb printString, ' but has ', no printString, ' ones.'
                ]
              ].
              self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         checkRangeOf: numbers Max: max = ( |
             m.
            | 
            m: numbers median.
            (max / 8) > m  ifTrue: [error: 'too small'].
            (0.875 * max) < m  ifTrue: [error: 'too big'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing subsets\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         ensureSubsetsFairlyDistinct = ( |
             meanDistinctPerIndex.
             sets.
            | 
            sets: vector copySize: numberOfKanervaWords.
            sets do: [|:ss. :i|
              sets at: i Put: set copyRemoveAll.
              subsets do: [|:sss| (sets at: i) add: sss at: i].
            ].
            meanDistinctPerIndex: (sets copyMappedBy: [|:s| s size]) mean.
            meanDistinctPerIndex < numberOfSubsets ifTrue: [error].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         makeIndicesToCheck = ( |
            | 
            resend.makeIndicesToCheck.
            testIndicesToCheck).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         makeKanervaWords = ( |
            | 
            resend.makeKanervaWords.
            testKanervaWords).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: kanerva parts\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         makeSubsets = ( |
            | 
            resend.makeSubsets.
            testSubsets).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'markExample' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: entries\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         reps = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing indicesToCheck\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         testIndicesToCheck = ( |
            | 
            indicesToCheck isEmpty ifFalse: [^self].
            subsets do: [|:s. :si| s findFirst: [|:i| i = (masksAt: i)] IfPresent:[|:x| error] IfAbsent: []].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing kanerva words\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         testKanervaWords = ( |
            | 
            checkMedian.
            checkNoTwoTheSame.
            checkNumberOfOnes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing subsets\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         testRangeInSubsets = ( |
            | 
            subsets do: [|:s. :i| checkRangeOf: s Max: masks at: i].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'kanveraStuff' -> 'testingMarkExample' -> 'parent' -> () From: ( | {
         'Category: testing subsets\x7fModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         testSubsets = ( |
            | 
            ensureSubsetsFairlyDistinct.
            [testRangeInSubsets].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         testingMarkExample = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules testingMarkExample.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'testingMarkExample' -> () From: ( | {
         'ModuleInfo: Module: testingMarkExample InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules testingMarkExample postFileIn
