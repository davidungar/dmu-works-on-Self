 '$Revision: 30.8 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         miniParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser miniParser.

CopyDowns:
globals parseKit miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser miniParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         eatEOF = ( |
            | 
            nodesToParse last isLast ifTrue: [
              nodesToParse removeLast.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         failInput: in At: extent Because: m = ( |
            | 
            [david halt].
            resend.failInput: in At: extent Because: m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'korzParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractContextParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser abstractContextParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser abstractContextParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            result: resultProto copyRemoveAll.
            [nodesToParse isEmpty] whileFalse: [
              result addComponent: parseGuardComponent.
            ].
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseGuardComponent = ( |
             nodesInComponent.
            | 
            nodesToParse first isKorzGuardComponentSeparator 
              ifTrue: [failNode: nodesToParse first Because: 'empty guard component'].
            nodesInComponent: list copyRemoveAll.
            [|:exit|
              nodesToParse isEmpty ifTrue: exit.
              nodesToParse first isKorzGuardComponentSeparator  ifTrue: [nodesToParse removeFirst. exit value].
              nodesInComponent addLast: nodesToParse removeFirst.
            ] loopExit.
            guardComponentParser copyParseNonEmpty: nodesInComponent IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         objectOrBlockParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectOrBlockParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> () From: ( | {
         'Category: object & block parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         closeBracket.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> () From: ( | {
         'Category: object & block parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         objectBlockOrMethodBody.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> () From: ( | {
         'Category: object & block parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         openBracket.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectOrBlockParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         emptyObject = ( |
            | 
            parseNodeProto copyOpen: openBracket Close: closeBracket).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionSeriesIfPresent: pb IfAbsent: ab = ( |
            | 
            objectBlockOrMethodBody ifNil: [^ ab value].
            objectBlockOrMethodBody expressionSeriesIfPresent: pb IfAbsent: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         hasSlotList = ( |
            | objectBlockOrMethodBody hasSlotList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            nodesToParse size >= 2 ifFalse: [error: 'should have open and close paren nodes'].
             openBracket: nodesToParse removeFirst. 
            closeBracket: nodesToParse removeLast.
            nodesToParse isEmpty ifTrue: [ ^ emptyObject ].

            objectBlockOrMethodBody: parseObjectBlockOrMethodBody.

            nodesToParse isEmpty ifFalse: [
              failNode: closeBracket Reason: 'extra stuff before:'
            ].
            objectBlockOrMethodBody slotListIfPresent: [|:slotList|
              parseNodeProto canHaveSlots ifFalse: [failNode: slotList Because: 'parenthesized subexpressions cannot have a slot list'].
              parseNodeProto canHaveArguments not && [slotList argumentSlotCount > 0]  ifTrue: [
                failNode: slotList Because: 'objects or blocks without code cannot have arguments'
              ].
            ] IfAbsent: [].
            parseNodeProto copyOpen: openBracket ObjectBlockOrMethodBodyOrNil: objectBlockOrMethodBody Close: closeBracket).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseBracketsFrom: aNode IfFail: fb = ( |
            | 
            parseInnerBracketsFrom: aNode IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parseObjectBlockOrMethodBody = ( |
            | 
            objectBlockOrMethodBodyParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlotList = ( |
            | 
            slotListParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         blockParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'blockParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser objectOrBlockParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'blockParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser blockParser.

CopyDowns:
globals korzParser objectOrBlockParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'blockParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'blockParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser blockParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | parseNodes block).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser expressionParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser expressionParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             d.
             r.
            | 
            nodesToParse last isKorzStatementSeparator ifTrue: [
              d: nodesToParse last.
              nodesToParse removeLast.
            ].
            r: parseKeywordSends: nodesToParse.
            nodesToParse removeAll. "for callers"
            nil = d ifFalse: [ parseNodes pop copyExpression: r Dot: d]
                       True: [ r ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: keyword\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseAfterKeyword: nodes ArgumentsInto: parsedArgs KeywordsInto: kws = ( |
             args.
            | 
            "have parsed kw send through first kw"
            args: list copyRemoveAll.
            [|n|
              n: nodes removeFirst.
              case
              if:   [ n isKorzCapKeyword ]
              Then: [
                args isEmpty ifTrue: [ failNode: kws last Because: 'expected argument for keyword:' ].
                parsedArgs addLast: parseBinarySends: args.
                args: list copyRemoveAll.
                kws addLast: n.
                nodes isEmpty ifTrue: [ failNode: n Because: 'no arguments for keyword:' ].
              ]
              If:    [ n isKorzFirstKeyword ]
              Then:  [
                "args seen so far plus rest is a sub-keyword send"
                args addLast: n.
                args addAll: nodes.
                parsedArgs addLast: parseKeywordSends: args.
                ^ self
              ]
              If:   [ nodes isEmpty not ]
              Then: [ args addLast: n ]
              Else: [ 
                args addLast: n.
                parsedArgs addLast: parseBinarySends: args.
                ^ self
              ].
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: binary\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseBinarySends: nodesArg = ( |
             nodes.
             rcvrNodes.
             sel.
            | 
            nodes: nodesArg copy.
            rcvrNodes: list copyRemoveAll.

            [|:exit|
              nodes isEmpty  ifTrue: [ ^ parseUnarySends: rcvrNodes ].
              sel: nodes removeFirst.
              sel isKorzOperator ifTrue: exit.
              rcvrNodes addLast: sel
            ] loopExit.

            parseRealBinarySendReceiverNodes: rcvrNodes Selector: sel Rest: nodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseBlock: nodes = ( |
            | blockParser copyParseNonEmpty: nodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseConstant: n = ( |
            | 
            "this is just the token itself"
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: keyword\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseKeywordSends: nodesArg = ( |
             nodes.
             rcvrNodes.
            | 
            rcvrNodes: list copyRemoveAll.
            nodes: nodesArg copy.
            nodes isEmpty ifTrue: [ failBecause: 'empty expression' ].
            [nodes isEmpty] whileFalse: [|n|
              n: nodes removeFirst.
              case
              if:   [ n isKorzCapKeyword ]
              Then: [ failNode: n Because: 'first keyword in a keyword send cannot be uppercase' ]
              If:   [ n isKorzFirstKeyword not ]
              Then: [ rcvrNodes addLast: n ]
              If:   [ rcvrNodes isEmpty not  &&  [ rcvrNodes last isKorzOperator ] ]
              Then: [
                      "special case: a + power: b"
                      "is really a binary send with keyword argument with implicit self"
                    ^ parseBinarySends: nodesArg
                    ]
              Else: [ ^ parseRealKeywordSendReceiverNodes: rcvrNodes  FirstKeyword: n RestNodes: nodes ].
            ].
            parseBinarySends: rcvrNodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseObjectOrParenthesizedExpression: nodes = ( |
            | 
            "in this context, (foo) is an expression, not a method"
            objectOrSubexpressionParser copyParseNonEmpty: nodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parsePrimary: nodesArg = ( |
             n.
            | 
            n: nodesArg removeFirst.
            nodesArg isEmpty ifFalse: [failAll: nodesArg Because: 'extra junk in expression primary'].
            n isSquareList ifTrue: [^ parseBlock: n subnodes copy].
            n isParenList  ifTrue: [^ parseObjectOrParenthesizedExpression: n subnodes copy].
            n isKorzReceiver  ifTrue: [^ n].
            n isKorzConstant "float int string" ifTrue: [^ parseConstant: n].
            n isCurlyList ifTrue: [^ parseReceiverContext: n subnodes copy].
            halt.
            failNode: n Because: 'unexpected primary:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: binary\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseRealBinarySendReceiver: rcvr Delegatee: del Selector: sel Rest: rest = ( |
             arg.
            | 
            rest isEmpty not  &&  [rest first isKorzFirstKeyword]  ifTrue: [
              "special case: a + foo: b"
            ^ parseNodes binarySend copyReceiver: rcvr Delegatee: del Selector: sel Argument: parseKeywordSends: rest
            ].

            arg: list copyRemoveAll.
            [rest isEmpty] whileFalse: [|n. newDel |
              n: rest removeFirst.
              case
               if:   [ n isKorzOperator not ]  Then: [ arg addLast: n ]
               If:   [ n value != sel value ]
               Then: [ failFrom: rcvr To: n Because: 'no precedence for binary operators - please use parentheses' ]
               If:   [ arg isEmpty not  &&  [ arg last isKorzDelegatee ] ]
               Then: [ newDel: arg removeLast ]
               If:   [ arg isEmpty ]
               Then: [ failNode: sel Because: 'no argument for binary selector' ]
               Else: [ |newRcvr| 
                       " a + b + c "
                       newRcvr:  parseNodes binarySend copyReceiver:  rcvr
                                                          Delegatee:  del
                                                           Selector:  sel
                                                           Argument:  parseUnarySends: arg.
                     ^ parseRealBinarySendReceiver: newRcvr
                                         Delegatee: newDel
                                          Selector: n
                                              Rest: rest
               ].
            ].
            arg isEmpty ifTrue: [ failNode: sel Because: 'no argument for binary selector:' ].
            parseNodes binarySend copyReceiver: rcvr Delegatee: del Selector: sel Argument:  parseUnarySends: arg).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: binary\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseRealBinarySendReceiverNodes: rcvrNodes Selector: sel Rest: rest = ( |
             del.
             rcvr.
            | 
            rcvrNodes isEmpty not && [rcvrNodes last isKorzDelegatee]  ifTrue: [ del: rcvrNodes removeLast ].

            rcvr: rcvrNodes isEmpty ifTrue: [ lexer tokens implicitRcvr copyForFirstSelectorNode: sel ]
                                     False: [ parseUnarySends: rcvrNodes ].

            parseRealBinarySendReceiver: rcvr Delegatee: del Selector: sel Rest: rest).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: keyword\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseRealKeywordSendReceiverNodes: rcvrNodes FirstKeyword: kw RestNodes: rest = ( |
             del.
             kws.
             parsedArgs.
             parsedRcvr.
            | 

            rcvrNodes isEmpty not  &&  [ rcvrNodes last isKorzDelegatee ]  ifTrue: [
              del: rcvrNodes removeLast
            ].
            parsedRcvr:  rcvrNodes isEmpty ifTrue: [lexer tokens implicitRcvr copyFrom: kw]
                                            False: [parseBinarySends: rcvrNodes           ].
            parsedArgs: list copyRemoveAll.
            kws:        list copyRemoveAll addFirst: kw.

            rest isEmpty ifTrue: [failNode: kw Because: 'no argument for keyword:'].

            parseAfterKeyword: rest ArgumentsInto: parsedArgs KeywordsInto: kws.

            parseNodes keywordSend copyReceiver: parsedRcvr
                                      Delegatee: del
                                       Keywords: kws
                                      Arguments: parsedArgs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseReceiverContext: nodes = ( |
            | 
            receiverContextParser copyParseNonEmpty: nodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: unary\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseUnarySends: nodesArg = ( |
             del.
             nodes.
             rcvr.
             sel.
            | 
            nodesArg last isKorzAbstractName  ifFalse: [^ parsePrimary: nodesArg ].
            nodes: nodesArg copy.
            sel: nodes removeLast.
            nodes isEmpty not && [nodes last isKorzDelegatee]  ifTrue: [
              del: nodes removeLast.
            ].
            rcvr: nodes isEmpty ifTrue: [lexer tokens implicitRcvr copyForFirstSelectorNode: sel]
                                 False: [parseUnarySends: nodes].
            parseNodes unarySend copyReceiver: rcvr Delegatee: del Selector: sel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionSeriesParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser expressionSeriesParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser expressionSeriesParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parse = ( |
             es.
             parsedEs.
             r.
             return.
            | 
            es: splitIntoExpressions.
            r: parseNodes expressionSeries copyRemoveAll.
            es isEmpty ifTrue: [^ r].
                es last hasSubnodes
            && [es last firstSubnode isKorzReturnToken] ifTrue: [|exprNodes|
              exprNodes: es last subnodes copy asList.
              return: exprNodes removeFirst.
              es addLast: es removeLast copyRemoveAll addAllSubnodes: exprNodes.
            ].
            parsedEs: es copyMappedBy: [|:n| parseExpression: n].
            nil = return  ifFalse: [
              parsedEs addLast: parseNodes return copyReturn: return 
                                                  Expression: parsedEs removeLast
            ].
            r addAllSubnodes: parsedEs).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parseExpression: n = ( |
            | 
            expressionParser copyParseNonEmpty: n subnodes copy IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         splitIntoExpressions = ( |
             tops.
            | 
            tops: list copyRemoveAll.
            [ nodesToParse isEmpty ] whileFalse: [
              |top|
              top: parseNodes node copy.
              [|:exit. n|
                n: nodesToParse removeFirst.
                n isLast || [n isKorzAccept]  ifTrue: [
                  top hasSubnodes  ifTrue: [ 
                    "save comment"
                    top setCommentsFrom: n.
                  ].
                  exit value.
                ].
                top addSubnode: n.
                n isKorzStatementSeparator "dot" ifTrue: exit.
                nodesToParse isEmpty             ifTrue: exit.
              ] loopExit.
              top hasSubnodes ifTrue: [tops addLast: top].
            ].
            tops).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: top-level parsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         stringOrFileParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser stringOrFileParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser stringOrFileParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            expressionSeriesParser copyParse: nodesToParse
                                   AtOrAfter: errorNode
                                      IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: top-level parsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         fileParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'fileParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser stringOrFileParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'fileParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser fileParser.

CopyDowns:
globals korzParser stringOrFileParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'fileParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'fileParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser fileParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'fileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'fileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         sourceToNoncommentParser = ( |
            | sourceFromFileToNoncommentParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         guardedArgumentParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser guardedArgumentParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         arrow.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser guardedArgumentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         nodesInValueExpression = ( |
            | 
            arrow isKorzScopedDimensionTerminator
              ifFalse: [nodesToParse]
                 True: [nodesToParse  copy addFirst: rawNameNodes first]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parse = ( |
             a.
             mod.
             ne.
             r.
            | 
            splitAtArrow.
            mod: parseModifier.
            ne: parseName.
            mod isNotNil && [(mod source = '-')  &&  [arrow isNotNil]]  ifTrue: [failNode: arrow Because: 'modifier is -, so should not have a binding'].
            a: arrow ifNotNil: [parseValue].
            r: parseNodes guardComponent copyModifier: mod Name: ne Arrow: arrow Value: a.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parseModifier = ( |
             mod.
            | 
            rawNameNodes size < 2 ifTrue: [^ nil].
            mod: rawNameNodes removeFirst.
            (mod source size = 1) && [possibleModifiers includes: mod source first]  
              ifFalse: [failNode: rawNameNodes first Because: 'illegal dimension name modifier'].
            mod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parseName = ( |
             n.
            | 
            [rawNameNodes isEmpty not] assert.
            rawNameNodes size > 1  ifTrue: [
              failFrom: rawNameNodes first 
                    To: rawNameNodes last 
               Because: 'dimension name in parser must be just one name'
            ].
            n: rawNameNodes first.
            n isKorzSimpleName ifFalse: [
              failNode: n Because: 'dimension name must be simple name'
            ].
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseValue = ( |
            | 
            [arrow isNotNil] assert.
            expressionParser copyParseNonEmpty: nodesInValueExpression IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         possibleModifiers = '-'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         splitAtArrow = ( |
            | 
            rawNameNodes: list copyRemoveAll.
            "-> at start is slot name"
            rawNameNodes addFirst: nodesToParse removeFirst.
            arrow: nil.
            [nodesToParse isEmpty] whileFalse: [| n|
              n: nodesToParse removeFirst.
                n isKorzDimensionTerminator  ||
              [ n isKorzScopedDimensionTerminator]  ifTrue: [
                arrow: n.
              ^ self
              ].
              rawNameNodes addLast: n
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         rawNameNodes <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         guardComponentParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardComponentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser guardedArgumentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardComponentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser guardComponentParser.

CopyDowns:
globals korzParser guardedArgumentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardComponentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardComponentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser guardComponentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardComponentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedArgumentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         guardedSlotGroupParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedSlotGroupParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedSlotGroupParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser guardedSlotGroupParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedSlotGroupParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedSlotGroupParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser guardedSlotGroupParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedSlotGroupParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'guardedSlotGroupParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parse = ( |
             close.
             guard.
             guardTerminator.
             nodesInGuard.
             open.
             slotsAndGroups.
            | 
             open: nodesToParse removeFirst.
            close: nodesToParse removeLast.

            nodesToParse isEmpty ifTrue: [
              failNode:  open
               Because: 'expected slot guard pieces after: '
            ].
            [korz].
            nodesInGuard: list copyRemoveAll.
            [nodesToParse isEmpty || [ nodesToParse first isKorzGuardTerminator] ] whileFalse: [
              nodesInGuard addLast: nodesToParse removeFirst
            ].

            guard: slotGuardParser copyParse: nodesInGuard copy AtOrAfter: open IfFail: myFailBlock.

            nodesToParse isEmpty ifTrue: [ failNode: nodesInGuard last Because: 'expected guard terminator (::) after this'].
            guardTerminator: nodesToParse removeFirst.

            slotsAndGroups: slotSeriesParser
              copyParse: nodesToParse copy
              AtOrAfter: guard
                 IfFail: [|:e| ^ myFailBlock value: e].

            parseNodes guardedSlotGroup
                    copyOpen:  open 
                       Guard:  guard
                  Terminator: guardTerminator
              SlotsAndGroups:  slotsAndGroups subnodes
                       Close:  close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBlockOrMethodBodyParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectBlockOrMethodBodyParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         expressionSeries.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (false)'
        
         hasExpressionSeries <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (false)'
        
         hasSlotList <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectBlockOrMethodBodyParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            nodesToParse isEmpty ifTrue: [ ^ emptyObject ].
            nodesToParse first isKorzSlotListDelimiter ifTrue: [
              slotList: parseSlotList.
              hasSlotList: true.
            ].
            nodesToParse isEmpty || [nodesToParse first isLast]  ifFalse: [
              expressionSeries: parseExpressionSeries.
              hasExpressionSeries: true.
            ].
            nodesToParse isEmpty || [nodesToParse first isLast]   ifFalse: [
              ^ failNode: nodesToParse first Because: 'extra stuff after method body'
            ].
            parseNodeProto copySlotList: slotList ExpressionSeries: expressionSeries).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parseExpressionSeries = ( |
            | 
            expressionSeriesParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | 
            parseNodes objectBlockOrMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlotList = ( |
            | 
            slotListParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         slotList.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectOrSubexpressionParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser objectOrBlockParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectOrSubexpressionParser.

CopyDowns:
globals korzParser objectOrBlockParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectOrSubexpressionParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrBlockParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | 
             [qqq].
            expressionSeriesIfPresent: [parseNodes subexpression] IfAbsent: [parseNodes object]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectOrMethodParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrMethodParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser objectOrSubexpressionParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrMethodParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectOrMethodParser.

CopyDowns:
globals korzParser objectOrSubexpressionParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrMethodParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrMethodParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser objectOrMethodParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrMethodParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrSubexpressionParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'objectOrMethodParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | 
            expressionSeriesIfPresent: [parseNodes method] IfAbsent: [parseNodes object]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverContextParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser abstractContextParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser receiverContextParser.

CopyDowns:
globals korzParser abstractContextParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser receiverContextParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parse = ( |
             close.
             open.
            | 
            open: nodesToParse removeFirst.
            close: nodesToParse removeLast.
            resend.parse open: open Close: close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'receiverContextParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         resultProto = ( |
            | parseNodes receiverContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotGuardParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotGuardParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser abstractContextParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotGuardParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotGuardParser.

CopyDowns:
globals korzParser abstractContextParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotGuardParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotGuardParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotGuardParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotGuardParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'abstractContextParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotGuardParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         resultProto = ( |
            | parseNodes slotGuard).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotListParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotListParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         close.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         nodesWithinSlotList.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         open.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotListParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parse = ( |
             slotsAndGroups.
            | 
            parseOpenMiddleClose.
            slotsAndGroups: slotSeriesParser copyParse: nodesWithinSlotList
                                             AtOrAfter: open
                                                IfFail: [|:e| ^ myFailBlock value: e].
            parseNodes slotList copyOpen: open SlotsAndGroups: slotsAndGroups subnodes Close: close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         parseOpenMiddleClose = ( |
             n.
             slotsAndGroups.
            | 
            nodesToParse first isKorzSlotListDelimiter ifFalse: [
              failNode: nodesToParse first Because: 'should be opening bar'
            ].
            open: nodesToParse removeFirst.
            nodesWithinSlotList: list copyRemoveAll.
            n: open.
            [|:exit|
              nodesToParse isEmpty ifTrue: [ 
                failFrom: open To: n Because: 'could not find `|\' at end of slot list'.
              ].
              n: nodesToParse removeFirst.
              n isKorzSlotListDelimiter ifTrue: [close: n. exit value].
              nodesWithinSlotList addLast: n.
            ] loopExit.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         dot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         equalsOrArrow.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (false)'
        
         hasDot <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         nameNode.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         checkAndParseArgument: n = ( |
            | 
            guardedArgumentParser 
              copyParse:
                ( case if: (n isKorzSimpleName) Then: [list copyRemoveAll add: n]
                       If: [n isCurlyList     ] Then: [n interiorNodes          ]
                                                Else: [failNode: n Because: 'expected argument name or { name -> coord } instead of' ]
                )
              AtOrAfter: n 
              IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         eatDot = ( |
            | 
            nodesToParse last isKorzSlotSeparator ifTrue: [
              hasDot: true.
              dot: nodesToParse removeLast.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             nodeProto.
            | 
            eatEOF.
            "Last node may be a dot. Be sure I eat all nodes"
            eatDot.
            nodesToParse isEmpty ifTrue: [
              failNode: dot Because: 'missing slot declaration before:'.
            ].
            nodesToParse first isParenList ifTrue: [
              error: 'use new slot guard syntax'.
            ].
            splitAtEqualsOrArrow.
            nameNode: parseName.
            valueNode: parseValue.
            reconcileArgumentsInNameWithValue.
            parseNodes slot copyName: nameNode Assignment: equalsOrArrow Value: valueNode Dot: dot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseExpression = ( |
            | 
            expressionParser copyParseNonEmpty: parseNodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseKeywordsAndArguments: nodes = ( |
             args.
             kws.
            | 
            kws: list copyRemoveAll addFirst: nodes removeFirst.

            nodes isEmpty || [nodes first isKorzCapKeyword]  ifTrue: [
              nodes findFirst: [|:n| n isKorzCapKeyword not]
                    IfPresent: [|:n| failNode: n Because: 'expected a capitalized keyword instead of']
                     IfAbsent: [].
              kws addAll: nodes.  nodes removeAll.
            ^ parseNodes keywordSlotNameWithoutFormals copyKeywords: kws
            ].

            args: list copyRemoveAll.
            [|n|
              n: checkAndParseArgument: nodes removeFirst.
              args addLast: n.
              nodes isEmpty ifTrue: [
              ^ parseNodes keywordSlotNameWithFormals copyKeywords: kws Formals: args
              ].
              n: nodes removeFirst.
              n isKorzCapKeyword ifFalse: [ failNode: n Because: 'expected capitalized keyword instead of' ].
              kws addLast: n
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseName = ( |
             f.
             r.
            | 
            rawNameNodes isEmpty ifTrue: [ 
              failNode: equalsOrArrow Because: 'no slot name found before:'].
            f: rawNameNodes removeFirst.
            r: case
              if:   [ f isKorzDelegatee ]
              Then: [ failNode: f Because: 'missing space after' ]
              If:   [ f source first = '_' ]
              Then: [ failNode: f Because: '`_\' is reserved for primitives' ]
              If:   [ f isKorzArgument ]
              Then: [ 
                      nil = equalsOrArrow  ifFalse: [
                        failNode: equalsOrArrow Because: 'cannot initialize an argument slot' 
                      ].
                      parseNodes unarySlotName copyName: f
              ]
              If:   [ f isKorzAbstractName ]
              Then: [ |s|
                      rawNameNodes isEmpty not && [rawNameNodes first source = '*']
                       ifTrue: [s: rawNameNodes removeFirst].
                        parseNodes unarySlotName copyName: f Star: s
              ]
              If:   [ f isKorzOperator ]
              Then: [ parseOperator: f AndArguments: rawNameNodes ]
              If:   [ f isKorzFirstKeyword ]
              Then: [ parseKeywordsAndArguments: rawNameNodes addFirst: f ]
              If:   [ f isKorzReceiver ] "case added for 'self' in slotGuard"
              Then: [ parseNodes unarySlotName copyName: f ]
              Else: [ failAll: ( rawNameNodes addFirst: f) 
                      Because: 'expected slot name but found:' ].

            rawNameNodes isEmpty  ifFalse: [
              failAll: rawNameNodes Because: 'extra junk found in slot name'
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseOperator: op AndArguments: nodes = ( |
             n.
            | 
            nodes isEmpty  ifTrue: [
              ^ parseNodes binarySlotNameWithoutFormal copyOperator: op
            ].
            n: checkAndParseArgument: nodes removeFirst.
            nodes isEmpty ifFalse: [ failAll: nodes Because: 'extra junk after binary slot formal:' ].
            parseNodes binarySlotNameWithFormal copyOperator: op Formal: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseValue = ( |
             nodes.
             parserProto.
            | 
            nil = equalsOrArrow ifTrue: [^ nil].
            parserProto: expressionParser.
            nodes: nodesToParse.
            case
              if:   [ nodesToParse isEmpty ]
              Then: [ failNode: equalsOrArrow Because: 'expected slot initial value after:' ]
              If:   [ nodesToParse size > 1 ]
              Then: [ "must be expression" ]
              If:   [ nodesToParse first isSquareList ]
              Then: [ parserProto:          blockParser.  nodes: nodesToParse removeFirst subnodes copy ]
              If:   [ nodesToParse first isParenList ]
              Then: [ parserProto: objectOrMethodParser.  nodes: nodesToParse removeFirst subnodes copy ].

            parserProto copyParseNonEmpty: nodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         reconcileArgumentsInNameWithValue = ( |
             nameArgs.
             valueArgs.
            | 
            nameArgs: nameNode argumentCountAsSlotName.

            case
            if: [ nil = valueNode ] Then: [
              nameArgs = 0
               ifFalse: [halt. failNode: nameNode 
                          Because: 'slot name implies arguments but implicit initial value of nil takes no arguments' ].
            ]
            If: [ nameNode isArgumentSlotName ] Then: [
              failNode: nameNode Because: 'cannot initialize argument slot'.
            ]
            If: [ valueNode isKorzMethod not ] Then: [
              nameArgs = 0  ifFalse: [ 
                failNode: nameNode 
                Because: 'slot name implies arguments but contents takes no arguments'
              ].
            ]
            If: [ equalsOrArrow source = '<-' ] Then: [
              failNode: equalsOrArrow Because: 'cannot put a method in an assignable slot' 
            ]
            If: [ valueArgs: valueNode argumentCountAsSlotContents.
                  ( nameArgs > 0 )  &&  [ nameNode suppliesAnyArgumentNames ]     ] Then: [
              valueArgs > 0  ifTrue: [
                 failNode: valueNode Because: 'method cannot declare argument names if they are also in the slot name' 
              ].
            ]
            If: [ nameArgs  !=  valueArgs ] Then: [
              failFrom: nameNode To: valueNode
               Because: 'slot name implies ', nameArgs printString,
                        ' arguments but slot contents takes ', valueArgs printString
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         splitAtEqualsOrArrow = ( |
            | 
            rawNameNodes: list copyRemoveAll.
            "= or <- at start is slot name"
            rawNameNodes addFirst: nodesToParse removeFirst.
            equalsOrArrow: nil.
            [nodesToParse isEmpty] whileFalse: [| n|
              n: nodesToParse removeFirst.
              n isKorzSlotAssignment ifTrue: [
                equalsOrArrow: n.
              ^ self
              ].
              rawNameNodes addLast: n
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         rawNameNodes <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         valueNode.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotSeriesParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotSeriesParser.

CopyDowns:
globals korzParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser slotSeriesParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            result: parseNodes node copyRemoveAll.
            [nodesToParse isEmpty || [nodesToParse first isLast]] whileFalse: [
              result addSubnode: parseSlotOrGuardedGroup
            ].
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseGuardedGroup = ( |
             r.
            | 
            r: guardedSlotGroupParser
              copyParseNonEmpty:  nodesToParse removeFirst subnodes copy
                         IfFail:  myFailBlock.
            nodesToParse isEmpty not && [nodesToParse first isKorzSlotSeparator]  ifTrue: [
              r addDot: nodesToParse removeFirst.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlot = ( |
             slotNodes.
            | 
            slotNodes: list copyRemoveAll.
            [|:exit. n|
              nodesToParse first isLast ifTrue: exit.
              n: nodesToParse removeFirst.
              slotNodes addLast: n.
              n isKorzSlotSeparator  ifTrue: exit.
              nodesToParse isEmpty ifTrue: exit
            ] loopExit.
            slotParser copyParseNonEmpty: slotNodes copy IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlotOrGuardedGroup = ( |
            | 
            nodesToParse first isCurlyList
              ifTrue: [ parseGuardedGroup ]
               False: [ parseSlot ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'slotSeriesParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (nil)'
        
         slots.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: lexing miniparsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser sourceToNoncommentParser.

CopyDowns:
globals parseKit sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser sourceToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'korzParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: lexing miniparsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceFromFileToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromFileToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromFileToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser sourceFromFileToNoncommentParser.

CopyDowns:
globals korzParser sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromFileToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromFileToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser sourceFromFileToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromFileToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         inputStreamForSource: s = ( |
            | 
            (resend.inputStreamForSource: s) isForFile: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromFileToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: lexing miniparsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceFromStringToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromStringToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromStringToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser sourceFromStringToNoncommentParser.

CopyDowns:
globals korzParser sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromStringToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromStringToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser sourceFromStringToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromStringToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         inputStreamForSource: s = ( |
            | 
            (resend.inputStreamForSource: s) isForFile: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceFromStringToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: top-level parsers\x7fModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         stringParser = bootstrap define: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korzParser stringOrFileParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser stringParser.

CopyDowns:
globals korzParser stringOrFileParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringParser' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korzParser stringParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korzParser' -> 'stringOrFileParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korzParser' -> 'stringParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         sourceToNoncommentParser = ( |
            | 
            sourceFromStringToNoncommentParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         korzMinis = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korzMinis.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz/korzParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.8 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korzMinis' -> () From: ( | {
         'ModuleInfo: Module: korzMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules korzMinis postFileIn
