 '$Revision: 30.8 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         usMinis = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usMinis.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs/usParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.8 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usMinis' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         miniParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser miniParser.

CopyDowns:
globals parseKit miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser miniParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         eatEOF = ( |
            | 
            nodesToParse last isLast ifTrue: [
              nodesToParse removeLast.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         failInput: in At: extent Because: m = ( |
            | 
            [david halt].
            resend.failInput: in At: extent Because: m).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'usParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         annotatedSlotGroupParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'annotatedSlotGroupParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'annotatedSlotGroupParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser annotatedSlotGroupParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'annotatedSlotGroupParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'annotatedSlotGroupParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser annotatedSlotGroupParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'annotatedSlotGroupParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'annotatedSlotGroupParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parse = ( |
             anno.
             close.
             open.
             slotsAndGroups.
            | 
             open: nodesToParse removeFirst.
            close: nodesToParse removeLast.
            nodesToParse isEmpty ifTrue: [
              failNode:  open
               Because: 'expected annotation string after: '
            ].
            anno: nodesToParse removeFirst.
            anno isUsString ifFalse: [
              failNode: anno
               Because: 'expected annotation string instead of'
            ].
            slotsAndGroups: slotSeriesParser
              copyParse: nodesToParse
              AtOrAfter: anno
                 IfFail: [|:e| ^ myFailBlock value: e].

            parseNodes annotatedSlotGroup
                    copyOpen:  open 
                  Annotation:  anno
              SlotsAndGroups:  slotsAndGroups subnodes
                       Close:  close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         objectOrBlockParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectOrBlockParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> () From: ( | {
         'Category: object & block parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         closeBracket.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> () From: ( | {
         'Category: object & block parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         objectBlockOrMethodBody.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> () From: ( | {
         'Category: object & block parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         openBracket.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectOrBlockParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         emptyObject = ( |
            | 
            parseNodeProto copyOpen: openBracket Close: closeBracket).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionSeriesIfPresent: pb IfAbsent: ab = ( |
            | 
            objectBlockOrMethodBody ifNil: [^ ab value].
            objectBlockOrMethodBody expressionSeriesIfPresent: pb IfAbsent: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         hasSlotList = ( |
            | objectBlockOrMethodBody hasSlotList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseBracketsFrom: aNode IfFail: fb = ( |
            | 
            parseInnerBracketsFrom: aNode IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parseObjectBlockOrMethodBody = ( |
            | 
            objectBlockOrMethodBodyParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlotList = ( |
            | 
            slotListParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         blockParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'blockParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser objectOrBlockParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'blockParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser blockParser.

CopyDowns:
globals usParser objectOrBlockParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'blockParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'blockParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser blockParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | parseNodes block).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser expressionParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser expressionParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             d.
             r.
            | 
            nodesToParse last isUsStatementSeparator ifTrue: [
              d: nodesToParse last.
              nodesToParse removeLast.
            ].
            r: parseKeywordSends: nodesToParse.
            nodesToParse removeAll. "for callers"
            nil = d ifFalse: [ parseNodes pop copyExpression: r Dot: d]
                       True: [ r ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: keyword\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseAfterKeyword: nodes ArgumentsInto: parsedArgs KeywordsInto: kws = ( |
             args.
            | 
            "have parsed kw send through first kw"
            args: list copyRemoveAll.
            [|n|
              n: nodes removeFirst.
              case
              if:   [ n isUsCapKeyword ]
              Then: [
                args isEmpty ifTrue: [ failNode: kws last Because: 'expected argument for keyword:' ].
                parsedArgs addLast: parseBinarySends: args.
                args: list copyRemoveAll.
                kws addLast: n.
                nodes isEmpty ifTrue: [ failNode: n Because: 'no arguments for keyword:' ].
              ]
              If:    [ n isUsFirstKeyword ]
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: binary\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
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
              sel isUsOperator ifTrue: exit.
              rcvrNodes addLast: sel
            ] loopExit.

            parseRealBinarySendReceiverNodes: rcvrNodes Selector: sel Rest: nodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseBlock: nodes = ( |
            | blockParser copyParseNonEmpty: nodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseConstant: n = ( |
            | 
            "this is just the token itself"
            n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: keyword\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
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
              if:   [ n isUsCapKeyword ]
              Then: [ failNode: n Because: 'first keyword in a keyword send cannot be uppercase' ]
              If:   [ n isUsFirstKeyword not ]
              Then: [ rcvrNodes addLast: n ]
              If:   [ rcvrNodes isEmpty not  &&  [ rcvrNodes last isUsOperator ] ]
              Then: [
                      "special case: a + power: b"
                      "is really a binary send with keyword argument with implicit self"
                    ^ parseBinarySends: nodesArg
                    ]
              Else: [ ^ parseRealKeywordSendReceiverNodes: rcvrNodes  FirstKeyword: n RestNodes: nodes ].
            ].
            parseBinarySends: rcvrNodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseObjectOrParenthesizedExpression: nodes = ( |
            | 
            "in this context, (foo) is an expression, not a method"
            objectOrSubexpressionParser copyParseNonEmpty: nodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing primaries\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parsePrimary: nodesArg = ( |
             n.
            | 
            n: nodesArg removeFirst.
            nodesArg isEmpty ifFalse: [failAll: nodesArg Because: 'extra junk in expression primary'].
            n isSquareList ifTrue: [^ parseBlock: n subnodes copy].
            n isParenList  ifTrue: [^ parseObjectOrParenthesizedExpression: n subnodes copy].
            n isUsReceiver  ifTrue: [^ n].
            n isUsConstant "float int string" ifTrue: [^ parseConstant: n].

            failNode: n Because: 'unexpected primary:').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: binary\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseRealBinarySendReceiver: rcvr Delegatee: del Selector: sel Rest: rest = ( |
             arg.
            | 
            rest isEmpty not  &&  [rest first isUsFirstKeyword]  ifTrue: [
              "special case: a + foo: b"
            ^ parseNodes binarySend copyReceiver: rcvr Delegatee: del Selector: sel Argument: parseKeywordSends: rest
            ].

            arg: list copyRemoveAll.
            [rest isEmpty] whileFalse: [|n. newDel |
              n: rest removeFirst.
              case
               if:   [ n isUsOperator not ]  Then: [ arg addLast: n ]
               If:   [ n value != sel value ]
               Then: [ failFrom: rcvr To: n Because: 'no precedence for binary operators - please use parentheses' ]
               If:   [ arg isEmpty not  &&  [ arg last isUsDelegatee ] ]
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: binary\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseRealBinarySendReceiverNodes: rcvrNodes Selector: sel Rest: rest = ( |
             del.
             rcvr.
            | 
            rcvrNodes isEmpty not && [rcvrNodes last isUsDelegatee]  ifTrue: [ del: rcvrNodes removeLast ].

            rcvr: rcvrNodes isEmpty ifTrue: [ lexer tokens implicitSelf copyForFirstSelectorNode: sel ]
                                     False: [ parseUnarySends: rcvrNodes ].

            parseRealBinarySendReceiver: rcvr Delegatee: del Selector: sel Rest: rest).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: keyword\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseRealKeywordSendReceiverNodes: rcvrNodes FirstKeyword: kw RestNodes: rest = ( |
             del.
             kws.
             parsedArgs.
             parsedRcvr.
            | 

            rcvrNodes isEmpty not  &&  [ rcvrNodes last isUsDelegatee ]  ifTrue: [
              del: rcvrNodes removeLast
            ].
            parsedRcvr:  rcvrNodes isEmpty ifTrue: [lexer tokens implicitSelf copyFrom: kw]
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'Category: parsing sends\x7fCategory: unary\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseUnarySends: nodesArg = ( |
             del.
             nodes.
             rcvr.
             sel.
            | 
            nodesArg last isUsAbstractName  ifFalse: [^ parsePrimary: nodesArg ].
            nodes: nodesArg copy.
            sel: nodes removeLast.
            nodes isEmpty not && [nodes last isUsDelegatee]  ifTrue: [
              del: nodes removeLast.
            ].
            rcvr: nodes isEmpty ifTrue: [lexer tokens implicitSelf copyForFirstSelectorNode: sel]
                                 False: [parseUnarySends: nodes].
            parseNodes unarySend copyReceiver: rcvr Delegatee: del Selector: sel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionSeriesParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser expressionSeriesParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser expressionSeriesParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
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
            && [es last firstSubnode isUsReturnToken] ifTrue: [|exprNodes|
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         parseExpression: n = ( |
            | 
            expressionParser copyParseNonEmpty: n subnodes copy IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'expressionSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         splitIntoExpressions = ( |
             tops.
            | 
            tops: list copyRemoveAll.
            [ nodesToParse isEmpty ] whileFalse: [
              |top|
              top: parseNodes node copy.
              [|:exit. n|
                n: nodesToParse removeFirst.
                n isLast || [n isUsAccept]  ifTrue: [
                  top hasSubnodes  ifTrue: [ 
                    "save comment"
                    top setCommentsFrom: n.
                  ].
                  exit value.
                ].
                top addSubnode: n.
                n isUsStatementSeparator "dot" ifTrue: exit.
                nodesToParse isEmpty             ifTrue: exit.
              ] loopExit.
              top hasSubnodes ifTrue: [tops addLast: top].
            ].
            tops).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: top-level parsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         stringOrFileParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser stringOrFileParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser stringOrFileParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            expressionSeriesParser copyParse: nodesToParse
                                   AtOrAfter: errorNode
                                      IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: top-level parsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         fileParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'fileParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser stringOrFileParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'fileParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser fileParser.

CopyDowns:
globals usParser stringOrFileParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'fileParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser fileParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'fileParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         sourceToNoncommentParser = ( |
            | sourceFromFileToNoncommentParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBlockOrMethodBodyParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectBlockOrMethodBodyParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         expressionSeries.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (false)'
        
         hasExpressionSeries <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (false)'
        
         hasSlotList <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectBlockOrMethodBodyParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            nodesToParse isEmpty ifTrue: [ ^ emptyObject ].

            nodesToParse first isUsSlotListDelimiter ifTrue: [
              slotList: parseSlotList.
              hasSlotList: true.
            ].
            nodesToParse isEmpty  ifFalse: [
              expressionSeries: parseExpressionSeries.
              hasExpressionSeries: true.
            ].
            nodesToParse isEmpty ifFalse: [
              failNode: nodesToParse first Reason: 'extra stuff after method body'
            ].
            parseNodeProto copySlotList: slotList ExpressionSeries: expressionSeries).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parseExpressionSeries = ( |
            | 
            expressionSeriesParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | 
            parseNodes objectBlockOrMethodBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlotList = ( |
            | 
            slotListParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectBlockOrMethodBodyParser' -> () From: ( | {
         'Category: method body parsing\x7fModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         slotList.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectOrSubexpressionParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser objectOrBlockParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectOrSubexpressionParser.

CopyDowns:
globals usParser objectOrBlockParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectOrSubexpressionParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrBlockParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | 
             [qqq].
            expressionSeriesIfPresent: [parseNodes subexpression] IfAbsent: [parseNodes object]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: objects & blocks\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectOrMethodParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrMethodParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser objectOrSubexpressionParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrMethodParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectOrMethodParser.

CopyDowns:
globals usParser objectOrSubexpressionParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrMethodParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrMethodParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser objectOrMethodParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrMethodParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrSubexpressionParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'objectOrMethodParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNodeProto = ( |
            | 
            expressionSeriesIfPresent: [parseNodes method] IfAbsent: [parseNodes object]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: context\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotGuardParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'slotGuardParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotGuardParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotGuardParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotGuardParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotGuardParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotGuardParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotGuardParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotGuardParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         parse = ( |
             closeParen.
             guardNode.
             slotList.
            | 
            guardNode: parseNodes slotGuard copyRemoveAll.
            guardNode mySubnodes add: nodesToParse removeFirst.
            closeParen: nodesToParse removeLast.
            slotList: slotListParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock.
            (guardNode mySubnodes add: slotList copy) add: closeParen.
            guardNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotListParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotListParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         close.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         open.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotListParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         parse = ( |
             n.
             nodesInSlotList.
             slotsAndGroups.
            | 
            nodesToParse first isUsSlotListDelimiter ifFalse: [
              failNode: nodesToParse first Because: 'should be opening bar'
            ].
            open: nodesToParse removeFirst.
            nodesInSlotList: list copyRemoveAll.
            n: open.
            [|:exit|
              nodesToParse isEmpty ifTrue: [ 
                failFrom: open To: n Because: 'could not find `|\' at end of slot list'.
              ].
              n: nodesToParse removeFirst.
              n isUsSlotListDelimiter ifTrue: [close: n. exit value].
              nodesInSlotList addLast: n.
            ] loopExit.
            slotsAndGroups: slotSeriesParser copyParse: nodesInSlotList
                                             AtOrAfter: open
                                                IfFail: [|:e| ^ myFailBlock value: e].
            parseNodes slotList copyOpen: open SlotsAndGroups: slotsAndGroups subnodes Close: close).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         dot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         equalsOrArrow.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (false)'
        
         hasDot <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         nameNode.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         eatDot = ( |
            | 
            nodesToParse last isUsSlotSeparator ifTrue: [
              hasDot: true.
              dot: nodesToParse removeLast.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             contextGuard.
             guardNode.
             nodeProto.
            | 
            eatEOF.
            "Last node may be a dot. Be sure I eat all nodes"
            eatDot.
            nodesToParse isEmpty ifTrue: [
              failNode: dot Because: 'missing slot declaration before:'.
            ].
            nodesToParse first isParenList ifTrue: [
              contextGuard: nodesToParse removeFirst.
              guardNode: usParser slotGuardParser copyParseNonEmpty: contextGuard mySubnodes copy IfFail: myFailBlock
              ].
            splitAtEqualsOrArrow.
            nameNode: parseName.
            valueNode: parseValue.
            reconcileArgumentsInNameWithValue.
            nodeProto: nameNode isUsObjectAnnotation ifTrue: [parseNodes objectAnnotationSlot] False: [parseNodes slot].
            nodeProto copyName: nameNode Guard: guardNode Assignment: equalsOrArrow Value: valueNode Dot: dot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseExpression = ( |
            | 
            expressionParser copyParseNonEmpty: parseNodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseKeywordsAndArguments: nodes = ( |
             args.
             kws.
            | 
            kws: list copyRemoveAll addFirst: nodes removeFirst.

            nodes isEmpty || [nodes first isUsCapKeyword]  ifTrue: [
              nodes findFirst: [|:n| n isUsCapKeyword not]
                    IfPresent: [|:n| failNode: n Because: 'expected a capitalized keyword instead of']
                     IfAbsent: [].
              kws addAll: nodes.  nodes removeAll.
            ^ parseNodes keywordSlotNameWithoutFormals copyKeywords: kws
            ].

            args: list copyRemoveAll.
            [|n|
              n: nodes removeFirst.
              n isUsSimpleName ifFalse: [ failNode: n Because: 'expected argument name instead of' ].
              args addLast: n.
              nodes isEmpty ifTrue: [
              ^ parseNodes keywordSlotNameWithFormals copyKeywords: kws Formals: args
              ].
              n: nodes removeFirst.
              n isUsCapKeyword ifFalse: [ failNode: n Because: 'expected capitalized keyword instead of' ].
              kws addLast: n
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseName = ( |
             f.
             r.
            | 
            rawNameNodes isEmpty ifTrue: [ 
              failNode: equalsOrArrow Because: 'no slot name found before:'].
            f: rawNameNodes removeFirst.
            r: case
              if:   [ f isUsObjectAnnotation ]
              Then: [
                      rawNameNodes isEmpty ifFalse: [ 
                        failAll: rawNameNodes Because: 'extra junk after'
                      ].
                      nil = equalsOrArrow ifTrue: [ failNode: f Because: 'missing `=\' after'].
                      equalsOrArrow isUsConstantSlotAssignment ifFalse: [
                        failNode: equalsOrArrow Because: '`=\' expected instead of'
                      ].
                      parseNodes objectAnnotationSlotName copyAnnotation: f
              ]
              If:   [ f isUsDelegatee ]
              Then: [ failNode: f Because: 'missing space after' ]
              If:   [ f source first = '_' ]
              Then: [ failNode: f Because: '`_\' is reserved for primitives' ]
              If:   [ f isUsArgument ]
              Then: [ 
                      nil = equalsOrArrow  ifFalse: [
                        failNode: equalsOrArrow Because: 'cannot initialize an argument slot' 
                      ].
                      parseNodes unarySlotName copyName: f
              ]
              If:   [ f isUsAbstractName ]
              Then: [ |s|
                      rawNameNodes isEmpty not && [rawNameNodes first source = '*']
                       ifTrue: [s: rawNameNodes removeFirst].
                        parseNodes unarySlotName copyName: f Star: s
              ]
              If:   [ f isUsOperator ]
              Then: [ parseOperator: f AndArguments: rawNameNodes ]
              If:   [ f isUsFirstKeyword ]
              Then: [ parseKeywordsAndArguments: rawNameNodes addFirst: f ]
              If:   [ f isUsReceiver ] "case added for 'self' in slotGuard"
              Then: [ parseNodes unarySlotName copyName: f ]
              Else: [ failAll: ( rawNameNodes addFirst: f) 
                      Because: 'expected slot name but found:' ].

            rawNameNodes isEmpty  ifFalse: [
              failAll: rawNameNodes Because: 'extra junk found in slot name'
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseOperator: op AndArguments: nodes = ( |
             n.
            | 
            nodes isEmpty  ifTrue: [
              ^ parseNodes binarySlotNameWithoutFormal copyOperator: op
            ].
            n: nodes removeFirst.
            n isUsSimpleName ifFalse: [ failNode: n Because: 'expected argument name instead of:' ].
            nodes isEmpty ifFalse: [ failAll: nodes Because: 'extra junk after binary slot formal:' ].
            parseNodes binarySlotNameWithFormal copyOperator: op Formal: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         reconcileArgumentsInNameWithValue = ( |
             nameArgs.
             valueArgs.
            | 
            nameArgs: nameNode argumentCountAsSlotName.

            case
            if: [ nil = valueNode ] Then: [
              nameArgs = 0
               ifFalse: [ failNode: nameNode 
                          Because: 'slot name implies arguments but implicit initial value of nil takes no arguments' ].
            ]
            If: [ nameNode isArgumentSlotName ] Then: [
              failNode: nameNode Because: 'cannot initialize argument slot'.
            ]
            If: [ valueNode isUsMethod not ] Then: [
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

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         splitAtEqualsOrArrow = ( |
            | 
            rawNameNodes: list copyRemoveAll.
            "= or <- at start is slot name"
            rawNameNodes addFirst: nodesToParse removeFirst.
            equalsOrArrow: nil.
            [nodesToParse isEmpty] whileFalse: [| n|
              n: nodesToParse removeFirst.
              n isUsSlotAssignment ifTrue: [
                equalsOrArrow: n.
              ^ self
              ].
              rawNameNodes addLast: n
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         rawNameNodes <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         valueNode.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: slot lists\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         slotSeriesParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotSeriesParser.

CopyDowns:
globals usParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser slotSeriesParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            result: parseNodes node copyRemoveAll.
            [nodesToParse isEmpty] whileFalse: [
              result addSubnode: parseSlotOrAnnotatedGroup
            ].
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseAnnotatedGroup = ( |
             r.
            | 
            r: annotatedSlotGroupParser
              copyParseNonEmpty:  nodesToParse removeFirst subnodes copy
                         IfFail:  myFailBlock.
            nodesToParse isEmpty not && [nodesToParse first isUsSlotSeparator]  ifTrue: [
              r addDot: nodesToParse removeFirst.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlot = ( |
             slotNodes.
            | 
            slotNodes: list copyRemoveAll.
            [|:exit. n|
              nodesToParse first isCurlyList  ifTrue: exit.
              n: nodesToParse removeFirst.
              slotNodes addLast: n.
              n isUsSlotSeparator  ifTrue: exit.
              nodesToParse isEmpty ifTrue: exit
            ] loopExit.
            slotParser copyParseNonEmpty: slotNodes IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSlotOrAnnotatedGroup = ( |
            | 
            nodesToParse first isCurlyList
              ifTrue: [ parseAnnotatedGroup ]
               False: [ parseSlot ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'slotSeriesParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: InitializeToExpression: (nil)'
        
         slots.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: lexing miniparsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser sourceToNoncommentParser.

CopyDowns:
globals parseKit sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser sourceToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'usParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: lexing miniparsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceFromFileToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromFileToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromFileToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser sourceFromFileToNoncommentParser.

CopyDowns:
globals usParser sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromFileToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromFileToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser sourceFromFileToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromFileToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         inputStreamForSource: s = ( |
            | 
            (resend.inputStreamForSource: s) isForFile: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromFileToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: lexing miniparsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceFromStringToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromStringToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromStringToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser sourceFromStringToNoncommentParser.

CopyDowns:
globals usParser sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromStringToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromStringToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser sourceFromStringToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromStringToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         inputStreamForSource: s = ( |
            | 
            (resend.inputStreamForSource: s) isForFile: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'sourceFromStringToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: top-level parsers\x7fModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         stringParser = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'stringParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser stringOrFileParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'stringParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser stringParser.

CopyDowns:
globals usParser stringOrFileParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringParser' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'stringParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser stringParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'stringOrFileParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'stringParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usMinis InitialContents: FollowSlot'
        
         sourceToNoncommentParser = ( |
            | 
            sourceFromStringToNoncommentParser).
        } | ) 



 '-- Side effects'

 globals modules usMinis postFileIn
