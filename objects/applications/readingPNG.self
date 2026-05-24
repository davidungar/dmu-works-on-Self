 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         readingPNG = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules readingPNG.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'readingPNG' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> () From: ( | {
         'Category: creation\x7fModuleInfo: Module: readingPNG InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFromPNGFile: fileName = ( |
            | copy readFromPNGFile: fileName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> () From: ( | {
         'Category: creationSupport\x7fModuleInfo: Module: readingPNG InitialContents: FollowSlot\x7fVisibility: private'
        
         pngChunk = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui2Image pngChunk.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: InitializeToExpression: (0)'
        
         crc <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: InitializeToExpression: (byteVector)'
        
         data <- bootstrap stub -> 'globals' -> 'byteVector' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: InitializeToExpression: (0)'
        
         dataSize <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: InitializeToExpression: (nil)'
        
         file.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui2Image pngChunk parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         copyReadFrom: f = ( |
            | 
            (copy file: f) read).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         read = ( |
            | 
            readDataSize.
            readType.
            readData.
            readCRC.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         readCRC = ( |
            | crc: readInt4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         readData = ( |
            | 
            data: file readCount: dataSize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         readDataSize = ( |
            | dataSize: readInt4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         readInt4 = ( |
             d.
            | 
            d: file readCount: 4.
            (int32 copyTakeBigEndianBytesFrom: d) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: FollowSlot'
        
         readType = ( |
            | type: file readCount: 4).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> 'pngChunk' -> () From: ( | {
         'ModuleInfo: Module: readingPNG InitialContents: InitializeToExpression: (\'XXXX\')'
        
         type <- 'XXXX'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui2Image' -> () From: ( | {
         'Category: creationSupport\x7fModuleInfo: Module: readingPNG InitialContents: FollowSlot\x7fVisibility: private'
        
         readFromPNGFile: fileName = ( |
             cd.
             chunks.
             f.
             pngSignature = '\x89PNG\x0d
\x1a
'.
             signature.
            | 
            f: fileName asInputFile.
            signature: f readCount: pngSignature size.
            signature = pngSignature ifFalse: [error: 'bad signature'].
            chunks: list copyRemoveAll.
            [|:exit. c|
              c: pngChunk copyReadFrom: f.
              chunks addLast: c.
              c type = 'IEND' ifTrue: exit.
            ] loopExit.
            cd: dictionary copyRemoveAll.
            cd: chunks do: [|:c| cd at: c type Put: c data].
            width: (cd at: 'IHDR') int4At: 0.
            height: (cd at: 'IHDR') int4At: 4.
            bitDepth: (cd at: 'IHDR') int1At: 8.
            xxx.
            self).
        } | ) 



 '-- Side effects'

 globals modules readingPNG postFileIn
