 '$Revision: 30.8 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         parseNodes = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractMessageSend = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes abstractMessageSend.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes abstractMessageSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotContents = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         delegateeIfPresent: pb IfAbsent: ab = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMessageSend = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isPrimitive = ( |
            | 
            firstSelectorNode source first = '_').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isResend = ( |
            | delegateeIfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUndirectedResend = ( |
            | 
            delegateeIfPresent: [|:d| d isKorzResendToken ]
                      IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         receiver = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorNodes = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         testResultString: depth = ( |
             padding.
             r <- ''.
             ra.
            | 
            padding: '' copySize: depth FillingWith: ' '.
            r: '\n', padding.
            padding: padding, ' '.
            preComments do: [|:pc| r: r, (pc testResultString: depth + 2)].
            r: r, basicTestResultString, ': ', (delegateeIfPresent: [|:d| d source] IfAbsent: ''), selectorString.
            postComments do: [|:pc| r: r, (pc testResultString: depth + 2)].
            ra: arguments asVector copyAddFirst: receiver.
            ra do: [|:x|
              x hasSubnodes ifFalse: [r: r, '\n', padding, (x testResultString: depth + 2)]
                              True:  [r: r, (x testResultString: depth + 2)].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractSlotName = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes abstractSlotName.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes abstractSlotName parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isArgumentSlotName = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         unaryOrBinarySend = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes unaryOrBinarySend.

CopyDowns:
globals korzParser parseNodes abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes unaryOrBinarySend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         delegateeIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount = subnodeCountWithDelegatee
              ifTrue: [  pb value: subnodes at: 1 ]
               False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         firstSelectorNode = ( |
            | selectorNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorNodes = ( |
            | 
            list copyRemoveAll addFirst: selectorNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            selectorNode source canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         binarySend = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes unaryOrBinarySend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes binarySend.

CopyDowns:
globals korzParser parseNodes unaryOrBinarySend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes binarySend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | vector copyAddLast: lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReceiver: rcvr Delegatee: delOrNil Selector: s Argument: arg = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: rcvr.
            delOrNil = nil  ifFalse: [ r addSubnode: delOrNil ].
            r addSubnode: s.
            r addSubnode: arg.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorNode = ( |
            | 
            subnodes at: subnodeCount - 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         subnodeCountWithDelegatee = 4.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         binarySlotNameWithFormal = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes binarySlotNameWithFormal.

CopyDowns:
globals korzParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes binarySlotNameWithFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOperator: op Formal: f = ( |
            | 
            (copyRemoveAll addSubnode: op) addSubnode: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNode = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNodesInSlot: s = ( |
            | 
            vector copyAddFirst: formalParseNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         operator = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            operator value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         binarySlotNameWithoutFormal = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes binarySlotNameWithoutFormal.

CopyDowns:
globals korzParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes binarySlotNameWithoutFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOperator: o = ( |
            | copyRemoveAll addSubnode: o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNodesInSlot: s = ( |
            | 
            s method objectBlockOrMethodBodyIfPresent: [|:b|
              b  slotListIfPresent: [|:sl| sl argumentsFromSlotList] IfAbsent: vector
            ] IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            halt.
            nameToken value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         blockOrObjectOrMethodOrSubExpr = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotContents = ( |
            | 
            objectBlockOrMethodBodyIfPresent: [|:b| b argumentCountAsSlotContents] IfAbsent: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveSlots = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         closeBracket = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o Close: c = ( |
            | 
            copyOpen: o ObjectBlockOrMethodBodyOrNil: nil Close: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o ObjectBlockOrMethodBodyOrNil: b Close: c = ( |
             r.
            | 
            r: copyRemoveAll.
            r addSubnode: o.
            b ifNil: [] IfNotNil: [r addSubnode: b].
            r addSubnode: c.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBlockOrMethodBodyIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount > 2 ifTrue: [pb value: subnodeAt: 1] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         openBracket = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: modifying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceBodyWith: pt IfFail: fb = ( |
            | 
            subnodeCount < 3 ifTrue: [^ fb error: 'not enough nodes'].
            at: 1 PutSubnode: pt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         block = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'block' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'block' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes block.

CopyDowns:
globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'block' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes block parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzBlock = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionSeries = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'expressionSeries' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'expressionSeries' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes expressionSeries.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'expressionSeries' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'expressionSeries' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes expressionSeries parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'expressionSeries' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         guardComponent = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes guardComponent.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes guardComponent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arrow = ( |
            | 
            subnodeAt: 1 + hasModifier asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyModifier: m Name: n = ( |
            | 
            copyModifier: m Name: n Arrow: nil Value: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyModifier: mOrNil Name: n Arrow: a Value: v = ( |
             r.
            | 
            [a isNil  =  v isNil] assert.
            r: copy.
            mOrNil ifNotNil: [r addSubnode: mOrNil].
            r addSubnode: n.
            a ifNotNil: [r addSubnode: a. r addSubnode: v].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasModifier = ( |
            | firstSubnode source first isLetter not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasValue = ( |
            | 
            subnodeCount > (1 + hasModifier asInteger)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isAdd = ( |
            | hasModifier && [modifier source = '+']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzGuardComponent = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isRemove = ( |
            | hasModifier && [modifier source = '-']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         modifier = ( |
            | 
            [hasModifier] assert.
            firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameNode = ( |
            | 
            subnodeAt: hasModifier asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            nameNode source canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         value = ( |
            | 
            [hasValue] assert.
            lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         guardComponentHolder = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes guardComponentHolder.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes guardComponentHolder parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         addComponent: n = ( |
            | 
            addSubnode: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slot lists\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotSeries = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes slotSeries.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes slotSeries parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         allSlotsDo: blk = ( |
            | 
            slotsAndGroups do: [|:sg|
              sg allSlotsDo: blk]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentSlotCount = ( |
             r <- 0.
            | 
            allSlotsDo: [|:s| s isKorzArgumentSlot ifTrue: [r: r succ]].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsAndGroups = ( |
            | 
            subnodes copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsWithGuardsDo: blk = ( |
            | 
            [david prepending].
            slotsWithGuardsDo: blk Prepending: korzParser parseNodes slotGuard copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotsWithGuardsDo: blk Prepending: g = ( |
             r.
            | 
            [david prepending].
            slotsAndGroups do: [|:sg|
              sg isKorzSlotGroup ifTrue: [ sg slotsWithGuardsDo: blk Prepending: g ]
                                  False: [ r: blk value: sg With: g ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slot lists\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         guardedSlotGroup = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes slotSeries copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes guardedSlotGroup.

CopyDowns:
globals korzParser parseNodes slotSeries. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes guardedSlotGroup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         addDot: d = ( |
            | addSubnode: d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o Guard: g Terminator: gt SlotsAndGroups: s Close: c = ( |
            | 
            ((((copyRemoveAll
              addSubnode: o)
              addSubnode: g)
              addSubnode: gt)
              addAllSubnodes: s)
              addSubnode: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dotIfPresent: pb IfAbsent: ab = ( |
            | 
            lastSubnode isKorzSlotSeparator ifTrue: [pb value: lastSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         guardNode = ( |
            | subnodes at: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlotGroup = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         removeAnnotationAndDotIfPresent: lst = ( |
            | 
            xxx
            dotIfPresent: [lst removeLast] IfAbsent: [].
            lst removeFirst.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsAndGroups = ( |
            | 
            subnodes asVector copyFrom: 3 UpTo: subnodeCount pred).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotsWithAnnotationsDo: blk Prepending: a = ( |
            | 
            [david prepending].
            resend.slotsWithAnnotationsDo: blk Prepending: a, '\x07', annotation value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotsWithGuardsDo: blk Prepending: g = ( |
            | 
            [david prepending].
            resend.slotsWithGuardsDo: blk Prepending: g append: guardNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         theOneSlotOrGroup = ( |
            | 
            subnodeCount > 5 ifTrue: [error: 'too many slots'].
            [david errors].
            subnodeAt: 3).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywordSend = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes keywordSend.

CopyDowns:
globals korzParser parseNodes abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         arguments <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes keywordSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReceiver: rcvr Delegatee: delOrNil Keywords: kws Arguments: args = ( |
             c.
             r.
            | 
            r: copyRemoveAll.
            r addSubnode: rcvr.
            delOrNil = nil  ifFalse: [r addSubnode: delOrNil ].
            r selectorNodes:  kws asVector.
            r arguments:     args asVector.
            r selectorNodes size = r arguments size ifFalse: [error: 'keyword/argument mismatch'].
            c: collector copyFirst: ''.
            r selectorNodes  with:  r arguments Do: [|:k. :a|
              r addSubnode: k.  r addSubnode: a.  c: c & k source.
            ].
            r selectorString: c flatString.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         copySubnodesFrom: n = ( |
            | 
            (((resend.copySubnodesFrom: n) 
              arguments:     n arguments)
              selectorNodes: n selectorNodes)
              selectorString: n selectorString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         delegateeIfPresent: pb IfAbsent: ab = ( |
             d.
            | 
            d: subnodes at: 1.
            d isKorzDelegatee ifTrue: [pb value: d] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         firstSelectorNode = ( |
            | selectorNodes first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllSubnodes = ( |
            | 
            ((resend.removeAllSubnodes arguments: vector)
               selectorNodes: vector)
               selectorString: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         selectorNodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (\'\')\x7fVisibility: public'
        
         selectorString <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywordSlotNameWithFormals = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes keywordSlotNameWithFormals.

CopyDowns:
globals korzParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (list copyRemoveAll)\x7fVisibility: public'
        
         formalParseNodes <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (list copyRemoveAll)\x7fVisibility: public'
        
         keywords <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes keywordSlotNameWithFormals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = ( |
            | 
            formalParseNodes size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyKeywords: kws Formals: frmls = ( |
             r.
            | 
            r: copyRemoveAll.
            r keywords: kws.
            r formalParseNodes: frmls.
            kws with: frmls Do: [|:k. :f|  r addSubnode: k.  r addSubnode: f. ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         copySubnodesFrom: n = ( |
            | 
            ((resend.copySubnodesFrom: n)
            keywords: n keywords)
             formalParseNodes: n formalParseNodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNodesInSlot: s = ( |
            | 
            formalParseNodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllSubnodes = ( |
            | 
            ((resend.removeAllSubnodes)
             keywords: list copyRemoveAll)
             formalParseNodes:  list copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            (keywords gather: [|:kw| kw value] Into: sequence copyRemoveAll) asString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywordSlotNameWithoutFormals = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes keywordSlotNameWithoutFormals.

CopyDowns:
globals korzParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes keywordSlotNameWithoutFormals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = ( |
            | subnodeCount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyKeywords: kws = ( |
            | 
            copyRemoveAll addAllSubnodes: kws).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNodesInSlot: s = ( |
            | 
            s method objectBlockOrMethodBody ifPresent: [|:b|
              b slotListIfPresent: [|:sl| sl argumentsFromSlotList] 
                         IfAbsent: vector
            ]
            IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywords = ( |
            | subnodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            (keywords gather: [|:kw| kw value] Into: sequence copyRemoveAll) asString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         method = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'method' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'method' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes method.

CopyDowns:
globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes method parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMethod = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         object = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes object.

CopyDowns:
globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes object parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzObject = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes slot.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes slot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         allSlotsDo: blk = ( |
            | blk value: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         assignmentAndValueIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount  >  hasDot asInteger succ
              ifTrue: [pb value: (subnodes at: nameNodeIndex succ) With: subnodes at: nameNodeIndex succ succ]
               False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n Assignment: aOrNil Value: vOrNil Dot: dOrNil = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: n.
            nil = aOrNil ifFalse: [
              r addSubnode: aOrNil.
              r addSubnode: vOrNil.
            ].
            nil = dOrNil ifFalse: [
              r addSubnode: dOrNil.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dotIfPresent: pb IfAbsent: ab = ( |
            | 
            lastSubnode isKorzSlotSeparator ifTrue: [pb value: lastSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNodes = ( |
            | 
            nameNode formalParseNodesInSlot: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         guardIfPresent: pb IfAbsent: ab = ( |
            | 
            firstSubnode isKorzSlotGuard ifTrue: [pb value: firstSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasDot = ( |
            | lastSubnode isKorzSlotSeparator).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzArgumentSlot = ( |
            | 
            nameNode isArgumentSlotName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzAssignableSlot = ( |
            | 
            assignmentAndValueIfPresent: [|:a|
                a isKorzConstantSlotAssignment not
              ]
              IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzDataSlot = ( |
            | 
            assignmentAndValueIfPresent: [|:a. :v|
              v isKorzMethod not
            ]
            IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMethodSlot = ( |
            | 
            assignmentAndValueIfPresent: [|:asg. :val|
              val isKorzMethod
            ]
            IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlot = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         method = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameNode = ( |
            | 
            subnodeAt: nameNodeIndex).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         nameNodeIndex = ( |
            | 
            0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: modifying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceMethodBodyWith: methodBodyParseTree IfFail: fb = ( |
            | 
            assignmentAndValueIfPresent: [|:a. :v|
              v replaceBodyWith: methodBodyParseTree IfFail: fb.
            ] IfAbsent: [fb value: 'no body'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | nameNode selectorString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsWithGuardsDo: blk = ( |
            | 
            blk value: self With: korzParser parseNodes slotGuard copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectAnnotationSlot = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes slot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes objectAnnotationSlot.

CopyDowns:
globals korzParser parseNodes slot. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes objectAnnotationSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         objectAnnotationSlotName = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes objectAnnotationSlotName.

CopyDowns:
globals korzParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes objectAnnotationSlotName parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         annotationToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAnnotation: a = ( |
            | copyRemoveAll addSubnode: a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBlockOrMethodBody = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes objectBlockOrMethodBody.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         hasExpressionSeries <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         hasSlotList <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes objectBlockOrMethodBody parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotContents = ( |
            | 
            slotListIfPresent: [|:sl| sl argumentSlotCount] IfAbsent: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copySlotList: slOrNil ExpressionSeries: esOrNil = ( |
             r.
            | 
            r: copyRemoveAll.
            nil = slOrNil ifTrue: [r hasSlotList:          false]  False: [r addSubnode: slOrNil. r hasSlotList:         true].
            nil = esOrNil ifTrue: [r hasExpressionSeries:  false]  False: [r addSubnode: esOrNil. r hasExpressionSeries: true].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         copySubnodesFrom: n = ( |
            | 
            ((resend.copySubnodesFrom: n)
              hasSlotList:          n hasSlotList)
              hasExpressionSeries:  n hasExpressionSeries).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionSeriesIfPresent: pb IfAbsent: ab = ( |
            | 
            hasExpressionSeries ifTrue: [pb value: lastSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasExpressions = ( |
            | 
            expressionSeriesIfPresent: [|:es| es hasSubnodes] IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         locals = ( |
            | 
            slotListIfPresent: [|:sl| sl localsFromSlotList] IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllSubnodes = ( |
            | 
            (resend.removeAllSubnodes hasSlotList: false) hasExpressionSeries: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotListIfPresent: pb IfAbsent: ab = ( |
            | 
            hasSlotList ifTrue: [pb value: firstSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         pop = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes pop.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes pop parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e Dot: d = ( |
            | 
            (copyRemoveAll addSubnode: e) addSubnode: d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dot = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzPop = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverContext = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes guardComponentHolder copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes receiverContext.

CopyDowns:
globals korzParser parseNodes guardComponentHolder. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes receiverContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         componentNodes = ( |
             r.
            | 
            r: subnodes copy.
            r removeFirst.
            r removeLast.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         componentsDo: blk = ( |
            | 
            subnodes doFirst: [] Middle: blk Last: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzReceiverContext = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         open: o Close: c = ( |
            | 
            (mySubnodes addFirst: o) addLast: c.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         return = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes return.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes return parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReturn: r Expression: e = ( |
            | 
            (copyRemoveAll addSubnode: r) addSubnode: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzReturn = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         returnToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotGuard = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes guardComponentHolder copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes slotGuard.

CopyDowns:
globals korzParser parseNodes guardComponentHolder. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes slotGuard parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         append: aSlotGuardNode = ( |
             r.
            | 
            r: copy.
            aSlotGuardNode componentsDo: [|:c| r addSubnode: c].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         appendComponents: comps = ( |
             r.
            | 
            r: copy.
            comps do: [|:c| r addComponent: c].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         componentNodes = ( |
            | subnodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         componentsDo: blk = ( |
            | 
            doSubnodes: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         isKorzSlotGuard = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'guardComponentHolder' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slot lists\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotList = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes slotSeries copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes slotList.

CopyDowns:
globals korzParser parseNodes slotSeries. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes slotList parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentsFromSlotList = ( |
             r.
            | 
            r: list copyRemoveAll.
            slotsWithGuardsDo: [|:sl. | 
              sl nameNode isArgumentSlotName ifTrue: [r addLast: sl nameNode selectorString]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         closeBracket = ( |
            | 
            lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o SlotsAndGroups: s Close: c = ( |
            | 
            ((copyRemoveAll
              addSubnode: o)
              addAllSubnodes: s)
              addSubnode: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dotIfPresent: pb IfAbsent: ab = ( |
            | 
            ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlotList = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         localsFromSlotList = ( |
             r.
            | 
            r: list copyRemoveAll.
            [david prepending].
            halt.
            slotsWithGuardsDo: [|:sl. | 
              sl nameNode isArgumentSlotName ifFalse: [
                sl nameNode isKorzUnarySlotName ifFalse: [error: sl nameNode selectorString, ': not unary?'].
                r addLast: sl nameNode selectorString
              ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         openBracket = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         removeAnnotationAndDotIfPresent: list = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsAndGroups = ( |
             r.
            | 
            r: subnodes copy.
            r removeFirst.
            r removeLast.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         subexpression = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes subexpression.

CopyDowns:
globals korzParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes subexpression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveSlots = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionSeriesIfFail: fb = ( |
            | 
            objectBlockOrMethodBodyIfPresent: [|:b|
              b expressionSeriesIfPresent: [|:es| es]
                IfAbsent: [fb value: 'parsed to subexpression with no expression series?']
            ]
            IfAbsent: [fb value: 'parsed to this with no expression series?']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSubexpression = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         unarySend = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes unaryOrBinarySend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes unarySend.

CopyDowns:
globals korzParser parseNodes unaryOrBinarySend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes unarySend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReceiver: rcvr Delegatee: delOrNil Selector: sel = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: rcvr.
            delOrNil = nil  ifFalse: [ r addSubnode: delOrNil ].
            r addSubnode: sel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         selectorNode = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         subnodeCountWithDelegatee = 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         unarySlotName = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals korzParser parseNodes unarySlotName.

CopyDowns:
globals korzParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser parseNodes unarySlotName parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n = ( |
            | copyName: n Star: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n Star: s = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: n.
            nil = s  ifFalse: [ r addSubnode: s ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalParseNodesInSlot: s = ( |
            | 
            vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isArgumentSlotName = ( |
            | 
            nameToken isKorzArgument).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzUnarySlotName = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            nameToken value canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         starIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount > 1  ifTrue: [pb value: lastSubnode]
                               False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         korzParseNodes = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzParseNodes.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz/korzParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.8 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzParseNodes' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'bracketedList' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         interiorNodes = ( |
             r.
            | 
            r: subnodes copy.
            r removeFirst.
            r removeLast.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: manipulating subnodes\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         at: i PutSubnode: n = ( |
            | 
            mySubnodes: (mySubnodes asVector at: i Put: n) asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzBlock = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzGuardComponent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzImplicitReceiver = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMessageSend = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzObject = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzPop = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzReceiverContext = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzReturn = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlotGroup = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlotGuard = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlotList = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSubexpression = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Korz\x7fModuleInfo: Module: korzParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzUnarySlotName = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 



 '-- Side effects'

 globals modules korzParseNodes postFileIn
