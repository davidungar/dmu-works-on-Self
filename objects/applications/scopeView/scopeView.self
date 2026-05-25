 '$Revision:$'
 '
Copyright 1992-2006 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         scopeView = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules scopeView.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/scopeView'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
             resend.postFileIn.
            scopeView scopeMorph initializePrototype.
            worldMorph addBackgroundMenuContributor: scopeView scopeMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         scopeView = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         reinit = ( |
            | 
            0 modules scopeView postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         scopeMorph = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals morph copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph.

CopyDowns:
globals morph. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         addButtonTo: m From: cmd = ( |
            | 
            m addButtonTarget: cmd AsynchronousScriptBlock: [target doItFor: buttonArgs]
              ButtonArgs: self Label: cmd buttonLabel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: setting size\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         aspectRatio = ( |
            | 
            600 /= 760).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         baseDrawOn: c = ( |
            | 
            scopeImage isNil || [scopeImage isLive not] ifTrue: [
              getImage
            ].
            c drawable gc withIdentCTMDo: [ |gbb|
              gbb: c transformRect: baseBounds.
              c drawable gc drawImage: scopeImage At: (gbb left @ (c height - gbb bottom)) ## gbb size.
              traceImage isNotNil && [traceImage isLive] ifTrue: [
                c drawable gc drawImage: traceImage At: (50@50) ## (30@30).
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         commands = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         abstract = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands abstract.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (\'\')'
        
         error <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands abstract parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         buttonLabel = 'abstract'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         command = ( |
            | xxx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy readerDone: semaphore copyBinary wait).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         deviceName = ( |
            | scopeMorph deviceName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         doItFor: aScopeMorph = ( |
            | 
            (copy scopeMorph: aScopeMorph) run).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parseResponse = ( |
            | 
            parsedResponse: response).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fCategory: reader\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         readAckFrom: f IfOK: blk IfFail: fblk = ( |
             n.
             r.
            | 
            r: f readLine.
            n: r first isDigit ifTrue: [r first asInteger] False: -1.
            fblk value:
              case if: [n = 0] Then: [^ blk value]
                   If: [n = 1] Then: 'Syntax'
                   If: [n = 2] Then: 'Execution'
                   If: [n = 3] Then: 'Synchronization'
                   If: [n = 4] Then: 'Communcation'
                   Else: ['<unknown error: ', r, '>']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fCategory: reader\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         readResponseFrom: f = ( |
            | 
            response: f readLine).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         run = ( |
            | 
            startReader.
            sendCommand.
            [|:exit. r|
              r: response.
              readerDone waitTimeOut: 2000.
              r = response ifTrue: exit.
              error isEmpty ifFalse: exit.
            ] loopExit.
            stopReader.
            error isEmpty ifTrue: [parseResponse].
            showResponse.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fCategory: reader\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         runReader = ( |
             f.
            | 
            f: deviceName asInputFile.
            readAckFrom: f IfOK: [
              readResponseFrom: f.
            ] IfFail: [|:e| error:  e].
            readerDone signal.
            f close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         sendCommand = ( |
             f.
            | 
            f: deviceName asOutputFile.
            f write: command, '\x0d'.
            f close.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         showResponse = ( |
            | 
            userQuery report: 
              error isEmpty ifTrue: [parsedResponse]
                             False: [error, ' Error']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fCategory: reader\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         startReader = ( |
            | 
            [runReader].
            response: ''.
            reader: (message copy receiver: self Selector: 'runReader') fork.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> () From: ( | {
         'Category: run helpers\x7fCategory: reader\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         stopReader = ( |
            | 
            reader abort: 'time out'.
            response: response flatString.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (\'\')'
        
         parsedResponse <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (nil)'
        
         reader.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (semaphore copyBinary wait)'
        
         readerDone <- semaphore copyBinary wait.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (\'\')'
        
         response <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (nil)'
        
         scopeMorph.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         getDown = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands getDown.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands getDown parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         buttonLabel = 'Switch Off'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         command = 'gd'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'getDown' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         run = ( |
            | 
            resend.run.
            (os command: 'stty -f ', deviceName, ' 1200') != 0 ifTrue: [raiseError].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         identification = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands identification.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands identification parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         buttonLabel = 'Get ID'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         command = 'id'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'identification' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         programSetup = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'programSetup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'programSetup' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands programSetup.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'programSetup' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'programSetup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands programSetup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'programSetup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         queryMeasurement = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryMeasurement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryMeasurement' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands queryMeasurement.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryMeasurement' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryMeasurement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands queryMeasurement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryMeasurement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         queryPrint = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands queryPrint.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (false)'
        
         doPostscript <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands queryPrint parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         buttonLabel = 'Query Print'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         command = ( |
            | 'qp 0', (doPostscript ifTrue: ' 3' False: ' 11, b')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parseResponse = ( |
            | 
            response: response flatString.
            doPostscript ifTrue: [
              'output.ps' setFileContentsTo: response.
              parsedResponse: 'Now print: output.ps'
            ] False: [|im|
              im: quartz image createFromPNGBytes: response.
              scopeMorph traceImage: im.
              parsedResponse: ''
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         readResponseFrom: f = ( |
            | 
            [response: response & f read] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryPrint' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         run = ( |
            | 
            doPostscript:
              userQuery askMultipleChoice: 'Format?' 
                                 Choices: ('Screen (PNG)' & 'Printer (PS)') asVector
            Results: (false & true) asVector.
            resend.run).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         querySetup = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'querySetup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'querySetup' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands querySetup.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'querySetup' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'querySetup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands querySetup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'querySetup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         queryWaveform = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryWaveform' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryWaveform' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands queryWaveform.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryWaveform' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryWaveform' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands queryWaveform parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'queryWaveform' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         readDate = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readDate' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readDate' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands readDate.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readDate' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readDate' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands readDate parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readDate' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         readTime = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readTime' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readTime' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands readTime.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readTime' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readTime' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands readTime parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'readTime' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         recallSetup = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'recallSetup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'recallSetup' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands recallSetup.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'recallSetup' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'recallSetup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands recallSetup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'recallSetup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         saveSetup = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'saveSetup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'saveSetup' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands saveSetup.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'saveSetup' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'saveSetup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands saveSetup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'saveSetup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         setupInterface = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands setupInterface.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands setupInterface parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         buttonLabel = 'Setup Interface'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         command = ( |
            | 
            'pc 57600').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         readResponseFrom: f = ( |
            | 
            response: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'setupInterface' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         run = ( |
             r.
            | 
            r: os command: 'stty -f ', deviceName, ' -parenb cs8 1200 -cstopb  -crtscts  ixon ixoff ',
                     '-imaxbel -isig -icanon -echo -echoe -echok -echoke -echonl -echoctl ',
                     ' -mdmbuf onlcr -crtscts clocal 1200 icrnl opost '.
            r = 0 ifFalse: [error: r asString].
            resend.run.
            r: os command: 'stty -f ', deviceName, ' 57600'.
            r = 0 ifFalse: [error: r asString].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         statusQuery = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'statusQuery' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'statusQuery' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands statusQuery.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'statusQuery' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'statusQuery' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands statusQuery parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'statusQuery' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         switchOn = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands switchOn.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands switchOn parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         buttonLabel = 'Switch On'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         command = 'SO'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'switchOn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         writeDate = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeDate' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeDate' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands writeDate.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeDate' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeDate' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands writeDate parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeDate' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         writeTime = bootstrap define: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeTime' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals scopeView scopeMorph parent commands abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeTime' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands writeTime.

CopyDowns:
globals scopeView scopeMorph parent commands abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeTime' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeTime' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals scopeView scopeMorph parent commands writeTime parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'writeTime' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> 'commands' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         contributeToBackgroundMenu: m = ( |
            | 
            m addButton:
                ( ( ui2Button copy
                   scriptBlock: [event sourceHand attach: scopeView scopeMorph copy] )
                   label: 'ScopeMeter' )
                ToGroup: 'bottom'.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         deviceName = '/dev/cu.usbserial-A10006Q0'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         getImage = ( |
            | 
            scopeImage: quartz image createFromPNGFile: 'applications/scopeView/scope.png').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         initializePrototype = ( |
            | 
            setWidth: 200 Height: 200).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         middleMouseDown: e = ( |
            | popUpMenu: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         morphTypeName = 'scopeView'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         parent* = bootstrap stub -> 'traits' -> 'morph' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         popUpMenu: evt = ( |
             b.
             m.
            | 
            m: ui2Menu copy.
            addButtonTo: m From: commands setupInterface.
            m addDivider.

            (((reflect: commands) 
              asList copyFilteredBy: [|:s| (s name != 'setupInterface') && [s visibility = visibility publicSlot]])
              asVector copyMappedBy: [|:s| s contents reflectee])
              do: [|:c| addButtonTo: m From: c].

            m popUp: evt.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         scopePictureURL = ( |
            | 
            'file:', (os environmentAt: 'SELF_WORKING_DIR'), '/objects/applications/scopeView/scope.png').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: setting size\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         setHeight: h = ( |
            | 
            setWidth: h * aspectRatio Height: h).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: setting size\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot'
        
         setWidth: w = ( |
            | 
            setWidth: w Height: w / aspectHeight).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> 'parent' -> () From: ( | {
         'Category: setting size\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         setWidth: w Height: h = ( |
             hm.
             wm.
            | 
            wm: h * aspectRatio.
            hm: w / aspectRatio.
            resend.setWidth: (wm min: w) Height: (hm min: h)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: scopeView InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            scopeView scopeMorph).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (nil)'
        
         scopeImage <- bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'scopeView' -> 'scopeMorph' -> () From: ( | {
         'ModuleInfo: Module: scopeView InitialContents: InitializeToExpression: (nil)'
        
         traceImage.
        } | ) 



 '-- Side effects'

 globals modules scopeView postFileIn
