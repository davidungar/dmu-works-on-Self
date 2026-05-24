 '$Revision:$'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: doubleDispatching\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         equalsKorzActivation: a = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: morphs\x7fCategory: outliners\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         activationOutliner = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'prototype' From:
             globals korz ide slotOutliner copyRemoveAllMorphs ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide activationOutliner.

CopyDowns:
globals korz ide slotOutliner. copyRemoveAllMorphs 
SlotsToOmit: parent prototype.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide activationOutliner parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> 'parent' -> () From: ( | {
         'Category: basics\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         morphTypeName = 'korzIDEActivationOutliner'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotOutliner' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'activationOutliner' -> () From: ( | {
         'Category: filing out\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         prototype = ( |
            | 
            korz ide activationOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: activations\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         korzAbstractActivation = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzAbstractActivation.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzAbstractActivation parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         ast = ( |
            | methodSlot ast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         counterfactualizedFormals = ( |
            | 
            methodSlot counterfactualizedFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         doLexicalScopes: blk = ( |
            | 
            doLexicalScopes: blk IfFail: [^nil]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'Comment: Evaluates blk in each lexical scope of this activation
and returns the receiver of the outermost method activation.\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         doLexicalScopes: blk IfFail: failBlk = ( |
             activation.
            | 
            activation: self.
            [ activation isLive ifFalse: [^ failBlk value: 'dead activation'].
              blk value: activation. 
              activation isReflecteeBlockMethodActivation
            ] whileTrue: [ activation: activation lexicalParentIfFail: [|:e| ^ failBlk value: e]].
            activation receiverIfFail: failBlk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         evalStringsForLocalSlots = ( |
            | methodSlot evalStringsForLocalSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         isMethod = ( |
            | methodSlot isMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         isParent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         korzName = ( |
            | 'korzName in korzAbstractActivation unimp').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         lexicalParentIfFail: fb = ( |
            | 
            korz ide korzLexicalParentActivation copyFor: boundBlockAST).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         mustBeDisassembled = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         nameForPositionalFormalAt: i = ( |
            | methodSlot nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         outermostLexicalScope = ( |
             r.
            | 
            r: self.
            doLexicalScopes: [|:s| r: s].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         positionIfFail: fb = ( |
            | 
            astMessageSendNode parseTree extent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         receiverIfFail: fb = ( |
            | 
            incomingContext arguments at: incomingContext receiverName IfAbsent: [fb value: 'no receiver']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         source = ( |
            | methodSlot source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         sourceStringIfFail: fb = ( |
            | methodSlot sourceStringIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         unguardedActuals = ( |
             s.
            | 
            s: methodSlot formalNames asSet.
            incomingContext arguments copyFilteredBy: [|:obj. :name|
              (s includes: name) not
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         unguardedActualsAsSortedPoints = ( |
            | 
            (
              (unguardedActuals mapBy: [|:obj. :n| n@obj] Into: list copyRemoveAll)
              asVector sortBy: (| element: a Precedes: b = ( a x <= b x ) |) 
            ) asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: activations\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzActivation = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide korzAbstractActivation copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivation.

CopyDowns:
globals korz ide korzAbstractActivation. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (korz ast abstractMessageSend copy)\x7fVisibility: public'
        
         astMessageSendNode <- korz ast abstractMessageSend copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (nil)\x7fVisibility: public'
        
         boundBlockAST.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (korz context copyRemoveAll)\x7fVisibility: public'
        
         incomingContext <- korz context copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (false)'
        
         isInInitializers <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (nil)\x7fVisibility: public'
        
         methodSlot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (0)'
        
         number <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (korz orthogonalActivationContext copyRemoveAll)\x7fVisibility: public'
        
         outgoingContext <- korz orthogonalActivationContext copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivation parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         = a = ( |
            | 
            a equalsKorzActivation: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForFirstSelfActivation: a = ( |
            | 
            copy initializeForFirstSelfActivation: a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         doLexicalScopes: blk = ( |
            | doLexicalScopes: blk IfFail: [^nil]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fComment: Evaluates blk in each lexical scope of this activation
and returns the receiver of the outermost method activation.\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         doLexicalScopes: blk IfFail: failBlk = ( |
             activation.
             r.
            | 
            activation: self.
            [ activation isLive ifFalse: [^ failBlk value: 'dead activation'].
              r: blk value: activation. 
              activation isReflecteeBlockMethodActivation
            ] whileTrue: [ activation: activation lexicalParentIfFail: [|:e| ^ failBlk value: e]].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         equalsKorzActivation: a = ( |
            | sendToContextActivation = a sendToContextActivation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: forwarding to methodSlot\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         exists = ( |
            | methodSlot exists).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         findEvaluateForContextWithArguments = ( |
            | 
            [evaluateForContextWithArguments: 0]. "browsing"
            startingFrom: sendToContextActivation FindSelector: 'evaluateForContextWithArguments:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         findEvaluateSlotInContextStartingAt: start = ( |
            | 
            [evaluateSlotInContext: 0]. "browsing"
            startingFrom: sendToContextActivation FindSelector: 'evaluateSlotInContext:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: forwarding to methodSlot\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         formalsInSlot = ( |
            | methodSlot formalsInSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         hash = ( |
            | 
            sendToContextActivation hash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         initNumber: n Process: p = ( |
            | 
            number: n.
            process: p).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeForFirstSelfActivation: fsa = ( |
             activationForEvaluateContextWithArguments.
            | 
            [fsa selector = 'send:ToContext:'] assert. [0 send: 0 ToContext: 0]. "browsing"
            sendToContextActivation: fsa.

            outgoingContext: (sendToContextActivation at: 'aContext') contents reflectee.

            activationForEvaluateContextWithArguments: findEvaluateForContextWithArguments.
            astMessageSendNode: activationForEvaluateContextWithArguments receiver reflectee.

            [evaluateSlotInContext: 0].
            [evaluateASTInContextStartingAt: 0].
            [copyAndEvaluateParseTreeForEvaluatorContents: 0 In: 0 ReportErrorsTo: 0]. "browsing"

            startingAtSenderOf: activationForEvaluateContextWithArguments

              If:   [|:x|   x selector = 'evaluateSlotInContext:'  ]  
              Then: [|:x|   initializeFromHomeActivation: x ]

              If:   [|:x| ( x selector = 'evaluateASTInContext:' ) &&  [x receiver reflectee isBoundBlock  ]]  
              Then: [|:x. homeAct|
                          boundBlockAST: x receiver reflectee.
                          initializeFromHomeActivation: findEvaluateSlotInContextStartingAt: x.
              ]
              If:   [|:x| x selector = 'copyAndEvaluateParseTreeForEvaluatorContents:In:ReportErrorsTo:']
              Then: [|:x| 
                  incomingContext: (x at: 'ctx') contents reflectee.
                  methodSlot: korz slots methodSlot copy.
                  methodSlot formalsInSlot: vector.
                  methodSlot ast: 
                    korz ast methodDeclaration copyForEvaluatorContentsParseTree: (x at: 'parseTree') contents reflectee   IfFail: raiseError.
                  selector: methodSlot selector.
                  isInInitializers: true
              ]
              Else: [error: 'none'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         initializeFromHomeActivation: ha = ( |
            | 
            methodSlot: ha receiver reflectee.
            selector: methodSlot selector.
            incomingContext: (ha at: 'ctx') contents reflectee).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         isLive = ( |
            | sendToContextActivation isLive).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isReflecteeBlockMethodActivation = ( |
            | boundBlockAST isNotNil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: forwarding to methodSlot\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         longKey = ( |
            | methodSlot longKey).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         methodHolderIfFail: fb = ( |
            | 
            methodSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: forwarding to methodSlot\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         receiverFacet = ( |
            | methodSlot receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: forwarding to methodSlot\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         sourceString = ( |
            | methodSlot source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         startingAtSenderOf: start If: a1 Then: b1 If: a2 Then: b2 If: a3 Then: b3 Else: e = ( |
             a.
            | 
            a: start.
            [
              a: a senderIfFail: [^ e value].
              case
                if: ( a1 value: a ) Then: [^ b1 value: a]
                If: ( a2 value: a ) Then: [^ b2 value: a]
                If: ( a3 value: a ) Then: [^ b3 value: a].
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         startingFrom: start FindActivation: blk = ( |
             a.
            | 
            a: start.
            [
              a: a sender.
              (blk value: a)  ifTrue: [^a].
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> 'parent' -> () From: ( | {
         'Category: creating\x7fCategory: crawling up Self stack\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         startingFrom: start FindSelector: sel = ( |
            | 
            startingFrom: start FindActivation: [|:a| a selector = sel]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (nil)'
        
         process.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (\'\')\x7fVisibility: public'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (nil)\x7fVisibility: private'
        
         sendToContextActivation.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         korzActivationMethodText = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals selfMethodText copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivationMethodText.

CopyDowns:
globals selfMethodText. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         addSlotList = ( |
             s.
             sl.
            | 
            s: slotList.
            s isEmpty ifTrue: [^ self].
            sl: convertToLines: s.
            lines addAllFirst: sl.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         formatMethodBody = ( |
            | 
            addSlotList.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         initializeForMethod: aMirror = ( |
             s.
            | 
            method: aMirror.
            s: method source.
            originalSource: s.
            lines: convertToLines: s.
            nullIfEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'selfMethodText' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         slotList = ( |
            | 
            method outermostLexicalScope methodSlot ast contentsDcl declarations parseTree source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationMethodText' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         storeStringNeeds = ( |
            | 0 korz ide korzActivationMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzActivationModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide slotModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivationModel.

CopyDowns:
globals korz ide slotModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'constructItems' From:
             bootstrap remove: 'methodSelection' From:
             bootstrap remove: 'mirror' From:
             bootstrap remove: 'setCachedIsMethod' From:
             bootstrap remove: 'updateContentsEditor' From:
             globals generalActivationModel parent _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzActivationModel parent.

CopyDowns:
globals generalActivationModel parent. _Clone 
SlotsToOmit: constructItems methodSelection mirror setCachedIsMethod updateContentsEditor.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         buildActivationTitle = ( |
            | 
            buildSlotTitle).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         buildTitle = ( |
            | 
            buildActivationTitle).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         constructItems = ( |
            | 
            constructKorzItems.
            setMethodSelection).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         constructKorzItems = ( |
            | resend.constructItems).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: method source & selection\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         convertExtentToSelectionRectangle: e = ( |
            | 
            "minus one from start because text selection is 0-origin, but extents (from parse kit are 1-origin."
            "no minus one from end x because of selection protocol"

            (e start asPoint - (1@1))  #  (e end asPoint - (0@1))).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: method source & selection\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         method = ( |
            | 
            outermostLexicalScope).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: method source & selection\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         methodSelection = ( |
             extentInWholeParseTree.
             extentWithinContentsEditor.
             startOfRightPartInContentsEditor.
            | 

            extentInWholeParseTree: activation positionIfFail: [^  parseKit inputExtent ].

            startOfRightPartInContentsEditor:  
             activation isInInitializers ifTrue: [activation outermostLexicalScope methodSlot declarationsExtent start]
            "text is formatted with only newline between slot list and first expression, so subtraction is just for row"
                                          False: [activation outermostLexicalScope methodSlot  expressionsExtent start copy line: 1].
            extentWithinContentsEditor: extentInWholeParseTree - startOfRightPartInContentsEditor.

            convertExtentToSelectionRectangle: extentWithinContentsEditor).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         methodText = ( |
            | 
            korz ide korzActivationMethodText).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         mirror = ( |
            | activation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: creating outliners\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         outlinerPrototype = ( |
            | 
            korz ide activationOutliner).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'slotModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: contents editor\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         setCachedIsMethod = ( |
            | 
            cachedIsMethod: hasMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: building\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         titleEditorPrototype = ( |
            | 
            activation isReflecteeBlockMethodActivation
              ifTrue:  [ korz ide blockSelectorFormalsAndActualsMorph ]
               False:  [ korz ide      selectorFormalsAndActualsMorph ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzActivationModel' -> 'parent' -> () From: ( | {
         'Category: method source & selection\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         updateContentsEditor = ( |
            | 
            resend.updateContentsEditor.
            setMethodSelection).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: activations\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzLexicalParentActivation = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ide korzAbstractActivation copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzLexicalParentActivation.

CopyDowns:
globals korz ide korzAbstractActivation. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (korz ast boundBlock copy)'
        
         boundBlock <- korz ast boundBlock copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzLexicalParentActivation parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFor: aBoundBlock = ( |
            | 
            copy boundBlock: aBoundBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         incomingContext = ( |
            | boundBlock homeContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isLive = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isReflecteeBlockMethodActivation = ( |
            | boundBlock isNested).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         methodHolderIfFail: fb = ( |
            | 
            boundBlock homeMethodSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         methodSlot = ( |
            | 
            methodHolderIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzAbstractActivation' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzLexicalParentActivation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         selector = ( |
            | 
            outermostLexicalScope methodSlot selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         korzProcess = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcess.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         catchAll = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide processErrors catchAll.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (korz ide processErrors catchAll)'
        
         causeOfError <- bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (processStatus ready)'
        
         myStatus <- bootstrap stub -> 'globals' -> 'processStatus' -> 'ready' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcess parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         abort = ( |
            | selfProcess abort).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         activationStackIfFail: fb = ( |
            | 
            activationStackLimit: maxSmallInt IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         activationStackLimit: lim IfFail: failBlk = ( |
            | 
            "Receiver must be a process and can fail with: 
             'outOfMemoryError' or 'noProcessError'"
            (((selfProcess stack
              filterBy: [|:a| a isFirstSelfActivationOfKorzActivation] Into: list copyRemoveAll) asVector)
              copyAtMost: lim)
              copyMappedBy: [|:a| a asKorzActivation]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         causeOfBirth = ( |
            | selfProcess causeOfBirth).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         hasError = ( |
            | 
            causeOfError != processErrors ok).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isActive = ( |
            | status isActive).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         isAlive = ( |
            | 
            selfProcess isAlive).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         setProcessStatus: stat = ( |
            | status: stat).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         stackWithLimit: max = ( |
            | 
            korz ide processStack copyForProcess: self Limit: max).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         status = ( |
            | myStatus).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         status: s = ( |
            | myStatus: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         suspend = ( |
            | selfProcess suspend).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcess' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (process copy)'
        
         selfProcess <- process copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzProcessModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalProcessModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessModel.

CopyDowns:
globals generalProcessModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalProcessModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         preferredColor = paint copyRed: 0.915934 Green: 0.896383  Blue: 0.829912.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         processStackModel = ( |
            | 
            korz ide korzProcessStackModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'Category: process status\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         status: str Color: col = ( |
            | 
            status ifNil: [
              status: ( columnMorph copy leftJustify beShrinkWrap color: myOutliner color) borderWidth: 0.
            ].
            safelyDo: [
              status removeAllMorphs.
              ( str asTextLines wrapLinesAtBlanksNear: 100 )
               lines do: [|:l|
                 status addMorphLast: 
                   ( ( labelMorph copy 
                                 fontSpec: commandButtonFontSpec )
                                 color: paint named: col )
                                 label: l.
              ].
              displayedStatus: str.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessModel' -> 'parent' -> () From: ( | {
         'Category: process status\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         updateStatus = ( |
             errorColorName = 'black'.
             statusString.
            | 

            statusString: myProcess status asString copyAtMostWithEllipsis: 2000.
            status isNotNil && [ displayedStatus = statusString ] ifTrue: [^ self].

            myProcess isAlive ifFalse: [
              myOutliner itemsCached ifTrue: [
                safelyDo: [
                  stack    ifNotNil: [myOutliner removeItem: stack   ].
                  commands ifNotNil: [myOutliner removeItem: commands].
                ].
                commands: nil.
                stack: nil.
              ].
              ^ status: myProcess status asString Color: errorColorName.
            ].

            myProcess hasError ifFalse: [
              ^ status: 'Status: ', myProcess status asString Color: 'black'.
            ].

            status: (
              myProcess causeOfError errorString
            ) Color: errorColorName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: models\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         korzProcessStackModel = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalProcessStackModel copyForSpecialization ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessStackModel.

CopyDowns:
globals generalProcessStackModel. copyForSpecialization 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () From: ( | {
         'Comment: true if I am filtering the stack\x7fModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (true)\x7fVisibility: private'
        
         isFiltered <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessStackModel parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         activationModelProto = ( |
            | 
            korz ide korzActivationModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         activationsDo: blk = ( |
            | 
            myProcess korzStack do: [|:a| blk value: a]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         buttonDescriptions = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals generalProcessStackModel parent buttonDescriptions _Clone ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( |
             {} = 'Comment: Holds button descriptions:
category leaf is button name, 
slot name is button name in buttonCache,
method source is button script,
public slots make asynchronous buttons.\x7fModuleInfo: Creator: globals korz ide korzProcessStackModel parent buttonDescriptions.

CopyDowns:
globals generalProcessStackModel parent buttonDescriptions. _Clone 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide korzProcessStackModel parent buttonDescriptions parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> 'buttonDescriptions' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'Category: menuing\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
            | 
            resend.buttonsToPutInMenu copyAddFirst:
              isFiltered ifTrue: 'dontFilter' False: 'filter').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isCommentButtonWanted = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'generalProcessStackModel' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'korzProcessStackModel' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         processModel = ( |
            | 
            korz ide korzProcessModel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'Category: process errors\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         processErrors = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ide processErrors.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (\'errorMessage was not set\')'
        
         errorMessage <- 'errorMessage was not set'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         errorString = ( |
            | 
            errorMessage).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         message = ( |
            | errorMessage).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'processErrors' -> 'abstractUserError' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> 'processErrors' -> 'catchAll' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (\'no receiver set in korz ide processErrors catchAll\')'
        
         receiver <- 'no receiver set in korz ide processErrors catchAll'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ide' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         testDebugger = ( |
            | 
            (
                'x1'  
            &   '| a = x2 |'
            &   '| a = (| b = x3 |)|'
            &   '(| a = (x4) |) a'
            &   '| a = (| b = (x5) |) b |'
            &   '(| parent* = x6 |)' 
            &   '{ rcvr => (| bar = ( 13. [[|:a|employeeRole x7] value: 34] value) |). extra1 => 17. extra2 => foyer } bar'
            &   '| stack = (|parent* = x8|).
                          btree = (|parent* = collection|).
                          queue = (|parent* = collection|). 
                        |'
            &   '(| a = (|b.
                          c|
                          x9) |) a'
            ) asVector do: [|:s|
              [evaluateStringAsEvaluatorContents:0]. "browsing"
               (message copy receiver: korz operations Selector: 'evaluateStringAsEvaluatorContents:' With: s) fork
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         korzDebugger = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzDebugger.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzDebugger' -> () From: ( | {
         'ModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'mirrors' -> 'activation' -> 'liveOnes' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzActivation = ( |
            | 
            korz ide korzActivation copyForFirstSelfActivation: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'mirrors' -> 'activation' -> 'liveOnes' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korzDebugger InitialContents: FollowSlot\x7fVisibility: public'
        
         isFirstSelfActivationOfKorzActivation = ( |
            | 
            [0 send: 0 ToContext: 0]. "browsing"
            selector = 'send:ToContext:').
        } | ) 



 '-- Side effects'

 globals modules korzDebugger postFileIn
