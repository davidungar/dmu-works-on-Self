 '$Revision:$'
 '
Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap stub -> 'globals' -> 'modules' -> () _AddSlots: ( | {
         'ModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         transporterMorphFileOutExp = bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _Define: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) _AddSlots: bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _AddSlots: ( |
             {} = 'ModuleInfo: Creator: globals modules transporterMorphFileOutExp.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _AddSlots: ( | {
         'ModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _AddSlots: ( | {
         'ModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'mine'.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _AddSlots: ( | {
         'ModuleInfo: Module: transporterMorphFileOutExp InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _AddSlots: ( | {
         'ModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap stub -> 'globals' -> 'modules' -> 'transporterMorphFileOutExp' -> () _AddSlots: ( | {
         'ModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 

 bootstrap stub -> 'globals' -> 'ui2' -> () _AddSlots: ( | {
         'Category: File out experiment\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         filedOutMorphs = bootstrap stub -> 'globals' -> 'ui2' -> 'filedOutMorphs' -> () _AddSlots: ( |
             {} = 'ModuleInfo: Creator: globals ui2 filedOutMorphs.
'.
            | ) .
        } | ) 

 bootstrap stub -> 'traits' -> 'ui2' -> 'morph' -> () _AddSlots: ( | {
         'Category: filing out\x7fCategory: low-level filing out\x7fComment: -- Ungar, 1/24/95\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot\x7fVisibility: public'
        
         fileOutMorphLowLevel = ( |
             module.
            | 
            module: setCreatorAndModuleIfFail: [ ^ self].
            userQuery show: 'Setting creators' While: [
              setCreatorsOfSubmorphsIfFail: [^ self].
            ].
            userQuery show: 'Setting module information of slots' While: [
              allMorphsDo: [|:m| m setModuleInfoOfSlotsToModule: module].
            ].    
            "must set owner of topmost to nil"
            (asMirror at: 'rawOwner') initialContents: 
              transporter moduleInfo initializeToExpression copyForExpression: 'nil'.
            userQuery show: 'Annotating with defaults'
                     While: [transporter defaultingAnnotator annotateModule: module].

            userQuery show: 'Filing out ', module name
                      While: [module fileOut]).
        } | ) 

 bootstrap stub -> 'traits' -> 'ui2' -> 'morph' -> () _AddSlots: ( | {
         'Category: filing out\x7fCategory: low-level filing out\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         morphSlotsToNotFileOut = ( (('cachedMinHeight')
	& ('cachedMinWidth')
	& ('layoutOkay')
	& ('noStickOuts')) asVector) _AddSlots: ( |
             {} = 'ModuleInfo: Creator: traits ui2 morph morphSlotsToNotFileOut.
'.
            | ) .
        } | ) 

 bootstrap stub -> 'traits' -> 'ui2' -> 'morph' -> () _AddSlots: ( | {
         'Category: filing out\x7fCategory: low-level filing out\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         setCreatorAndModuleIfFail: fb = ( |
             n.
             s.
             hostMir.
            | 

            hostMir: reflect: ui2 filedOutMorphs.
            [
              n: userQuery askString: 
                  'Please pick a name for this morph\n',
                  'This name will be used for both the morph\n',
                  ' (in ui2, category filed-out morphs) ',
                  ' and for the module name.'
                DefaultAnswer: hostMir creatorSlotIfPresent: [|:s| s module] IfAbsent: ''.
              (hostMir includesKey: n) ifTrue: [
                (userQuery askYesNo: '"', n, '" is already a slot in ', hostMir name, '.\n',
                                     'Use it anyway?'
                ) ifFalse: [n: ''].
              ].
              (transporter moduleDictionary includesKey: n) ifTrue: [
                (userQuery askYesNo: 'Module "', n, '" already exists.\n',
                                     'Use it anyway?'
                ) ifFalse: [n: ''].
              ].
              n = ''
            ] whileTrue.

            hostMir at: n PutContents: asMirror.
            s: hostMir at: n.
            transporter moduleDictionary add: n.
            s module: n.
            s category: 'Filed-out morphs'.
            asMirror creatorSlot: s.

            transporter moduleDictionary at: n).
        } | ) 

 bootstrap stub -> 'traits' -> 'ui2' -> 'morph' -> () _AddSlots: ( | {
         'Category: filing out\x7fCategory: low-level filing out\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         setCreatorIfFail: fb = ( |
             n.
             s.
            | 
            hasCreatorPath ifTrue: [^ self].
            [
              n: userQuery askString: 
                'Please pick a name for this morph\n',
                'This name will be used for both the morph\n',
                ' (in ui2, category filed-out morphs) ',
                ' and for the module name.'.
              (ui2 asMirror includesKey: n) ifTrue: [
                (userQuery askYesNo: '"', n, '" is already a slot in ui2.\n',
                                     'Use it anyway?'
                ) ifFalse: [n: ''].
              ].
              (transporter moduleDictionary includesKey: n) ifTrue: [
                (userQuery askYesNo: 'Module "', n, '" already exists.\n',
                                     'Use it anyway?'
                ) ifFalse: [n: ''].
              ].
              n = ''
            ] whileTrue.

            ui2 asMirror at: n PutContents: asMirror.
            s: ui2 asMirror at: n.
            s module: n.
            s category: 'filed-out morphs'.
            s contents creatorSlot: s.

            self).
        } | ) 

 bootstrap stub -> 'traits' -> 'ui2' -> 'morph' -> () _AddSlots: ( | {
         'Category: filing out\x7fCategory: low-level filing out\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         setCreatorsOfSubmorphsIfFail: fb = ( |
            | 
            fakeSlotsIterator fakeVectorSlots
              mirror: rawMorphs asMirror
                  Do: [|:s. m |
                      m: s contents reflectee.
                      s contents filedOutCreatorPathIfPresent: [|:cp|
                        s = cp targetSlot  ifFalse: [ | sf |
                          sf: simpleFrameMorph copy.
                          sf resizeRect: m globalBaseBounds.
                          sf globalPosition: m globalPosition.
                          world addMorph: sf.
                          world moveToFront: sf.
                          userQuery report: 'Cannot file out this morph,\n',
                                  m printString, ' has creator:\n',
                                  cp printString.
                        sf delete.
                      ^ fb value: m printString, ' has creator'. 
                      ].
                    ] IfAbsent: [
                      s contents creatorSlot: s.
                    ].
                    s contents reflectee setCreatorsOfSubmorphsIfFail: [|:e| ^ fb value: e].
                  ].
            self).
        } | ) 

 bootstrap stub -> 'traits' -> 'ui2' -> 'morph' -> () _AddSlots: ( | {
         'Category: filing out\x7fCategory: low-level filing out\x7fModuleInfo: Module: transporterMorphFileOutExp InitialContents: FollowSlot'
        
         setModuleInfoOfSlotsToModule: module = ( |
             slotNamesToFileOut.
             cds.
             mm.
             new.
            | 
            mm: asMirror.

            "figure out which slots to munge so they will be filed out"

            slotNamesToFileOut: mm names asList copyFilteredBy: [|:n. s|
              s: mm at: n.
                     s isAssignment not
              && [ ( morphSlotsToNotFileOut includes: n ) not]
            ].

            "remove slots that I am to file out from inclusion in copy downs"
            "that way the transporter will file out their contents"

            cds: mm copyDowns.
            new:  mm copyCopyDowns:
              cds isEmpty 
               ifTrue: vector
                False: [
                  vector copyAddFirst:
                    cds first copyForSlotsToOmit: [|:sto|
                      sto asSet addAll: slotNamesToFileOut].
               ].

            new: new first. "must be a slot"
            slotNamesToFileOut do: [|:n. s|
              s: new holder at: n.
              new: s copyHolderForModuleInfo: [|:mi|
                ( mi copyForModule:             module name )
                     copyForInitialContents: transporter moduleInfo followSlot ].
            ].
            mm defineAndSave: new holder.
            self).
        } | ) 



 '-- Side effects'

 globals modules transporterMorphFileOutExp postFileIn
