 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         miniParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser miniParser.

CopyDowns:
globals parseKit miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser miniParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         ifFirstNodeIs: testBlock ParseWith: parserProto IfFound: fb = ( |
            | 
                  nodesToParse isEmpty not
            &&  [ testBlock value: nodesToParse first ]
              ifTrue: [ fb value: parserProto copyParseNonEmpty: nodesToParse
                                                         IfFail: [|:e| ^ myFailBlock value: e] ]
               False: [ self ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'lyParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseArgumentList = ( |
            | 
            "first node to parse is a paren list"
            argumentListParser copyParseNonEmpty: nodesToParse removeFirst subnodes copy
                                          IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseBlock = ( |
            | 
            blockParser copyParseNonEmpty: nodesToParse removeFirst subnodes copy IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpression = ( |
            | 
            expressionParser
              copyParse: nodesToParse 
              AtOrAfter: errorNode
                 IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpression1 = ( |
            | 
            expression1Parser copyParse: nodesToParse
                              AtOrAfter: errorNode
                                 IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpression2 = ( |
            | 
            expression2Parser copyParse: nodesToParse
                              AtOrAfter: errorNode
                                 IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpression3 = ( |
            | 
            expression3Parser copyParse: nodesToParse
                              AtOrAfter: errorNode
                                 IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpression: nodes = ( |
             e.
            | 
            e: expressionParser copyParse: nodes
                                AtOrAfter: errorNode
                                   IfFail: [|:e| ^ myFailBlock value: e].
            nodes isEmpty ifFalse: [
              failAll: nodes
              Because: 'Extra junk found at end of expresion'
            ].
            e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpression: nodes UpTo: chars = ( |
             ns.
            | 
            ns: list copyRemoveAll.
            [nodes isEmpty
            || [chars includes: nodes first source]]
              whileFalse: [ns addLast: nodes removeFirst].
            parseExpression: ns).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpressionParenList = ( |
             e.
             exprNodes.
             pl.
            | 
            nodesToParse isEmpty ifTrue: [
              failBecause: 'expected ` ( expression ) \' after'
            ].
            pl: nodesToParse removeFirst.
            errorNode: pl.
            pl isParenList && [pl subnodeCount >= 3]  ifFalse: [
              failBecause: 'Expected ` ( expression ) \' instead of'
            ].
            exprNodes: pl subnodes copy.
            errorNode: exprNodes removeFirst.
            exprNodes removeLast.

            e: parseExpression: exprNodes.
            ((parseNodes parenList copyRemoveAll
                addSubnode: pl firstSubnode)
                addSubnode: e)
                addSubnode: pl lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parsePrimary = ( |
            | 
            primaryParser copyParse: nodesToParse
                          AtOrAfter: errorNode
                             IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseSemicolon = ( |
            | 
            nodesToParse isEmpty  ifTrue: [
              failBecause: 'Expected semicolon after'
            ].
            nodesToParse first isSemicolon  ifFalse: [
              failNode: nodesToParse first Because: 'Extra junk found in statement'
            ].
            nodesToParse removeFirst).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         adverbParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'adverbParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'adverbParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser adverbParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'adverbParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'adverbParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser adverbParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'adverbParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'adverbParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
            parseNodes adverb copyMinusMinus: nodesToParse removeFirst Expression: parseExpression).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: declaration statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         argDclParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser argDclParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         varOrArgStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser varOrArgStatementParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser varOrArgStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         breakIntoTopLevelDcls = ( |
            | 
            topLevelDcls:
              (dclBoundaryParser
                copyParse: nodesToParse
                AtOrAfter: result keyword
                   IfFail: myFailBlock) subnodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         createResultNode = ( |
            | 
            resultProto copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
             semi.
             var.
            | 
            result: createResultNode.
            nodesToParse size < 3 ifTrue: [failBecause: 'Expecting at least "', keyword, ' <name>;"'].
            (nodesToParse first isLyKeyword: keyword) ifFalse: [failBecause: 'Expected "', keyword, '" keyword'].
            var: nodesToParse removeFirst.
            nodesToParse last isSemicolon ifFalse: [failBecause: 'Expected ";" at end of ', keyword, ' statement'].
            semi: nodesToParse removeLast.
            result keyword: var.
            parseVarOrArgDeclarations.
            result semicolon: semi.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseTopLevelDcls = ( |
            | 
            topLevelDcls do: [|:n|
              result addSubnode: dclParserProto copyParseNonEmpty: n subnodes IfFail: myFailBlock
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseVarOrArgDeclarations = ( |
            | 
            breakIntoTopLevelDcls.
            parseTopLevelDcls).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         topLevelDcls <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         argStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser varOrArgStatementParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser argStatementParser.

CopyDowns:
globals lyParser varOrArgStatementParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentListParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'argumentListParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'argumentListParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser argumentListParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argumentListParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'argumentListParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser argumentListParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argumentListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argumentListParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
             argNodes.
             left.
             right.
            | 
            (nodesToParse size >= 2)
            && [nodesToParse first isOpenParen
            && [nodesToParse last isCloseParen]]
             ifFalse: [
              failAll: nodesToParse
              Because: 'Expected something in parentheses'
            ].
            left: nodesToParse removeFirst.
            errorNode: left.
            right: nodesToParse removeLast.

            argNodes: list copyRemoveAll.
             nodesToParse isEmpty || [nodesToParse first isLyOperator: '--'] ifFalse: [
              [ |:exit. e. c. stops = ('--' & ',') asVector |
                e: parseExpression: nodesToParse UpTo: stops.
                nodesToParse isEmpty || [nodesToParse first isLyOperator: '--'] ifTrue: [
                  argNodes addLast: parseNodes argument copyExpression: e.
                  exit value.
                ].
                c: nodesToParse removeFirst.
                c isComma ifFalse: [ failNode: c Because: 'Expected comma instead of' ].
                argNodes addLast:
                  parseNodes argument copyExpression: e Comma: c.
                errorNode: c.
              ] loopExit.
            ].

            nodesToParse isEmpty ifTrue: [
             ^ parseNodes argumentList copyOpen: left
                                   Arguments: argNodes
                                       Close: right
            ].

            (nodesToParse first isLyOperator: '--') ifTrue: [
              ^ parseNodes argumentListWithAdverb 
                  copyOpen: left 
                  Arguments: argNodes 
                  Adverb: (adverbParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock) 
                  Close: right
            ].

            myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: classes of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         statementClassPowersetParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser statementClassPowersetParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser statementClassPowersetParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fCategory: helpers\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         ifFirstIs: keyword ThenParseWith: parserProto FoundBlock: foundBlock = ( |
            | 
            nodesToParse isEmpty ifTrue: [^ self].
            (nodesToParse first isLyKeyword: keyword) ifFalse: [^ self].
            foundBlock value: parserProto copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isArgOK = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isFunctionOK = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isImperativeOK = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isObjectOK = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isVarOK = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         parse = ( |
            | 
            isVarOK ifTrue: [     parseVarStatementIfFound: [|:r| ^ r]].
            isArgOK ifTrue: [     parseArgStatementIfFound: [|:r| ^ r]].
            isFunctionOK ifTrue: [parseFunctionStatementIfFound: [|:r| ^ r]].
            isObjectOK ifTrue: [  parseObjectStatementIfFound: [|:r| ^ r]].

            isImperativeOK ifTrue: [parseImperativeStatement]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseArgStatementIfFound: fb = ( |
            | 
            ifFirstIs: 'arg' ThenParseWith: argStatementParser FoundBlock: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fCategory: helpers\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseBlockOrSimpleStatement = ( |
            | 
            nodesToParse first isCurlyList ifTrue: [^parseBlock].
            parseImperativeStatement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fCategory: imperatives\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseForStatementIfFound: fb = ( |
            | 
            nodesToParse isEmpty not
            && [nodesToParse first isLyKeyword: 'for']
              ifFalse: [^ self].

            fb value:
              forStatementParser copyParseNonEmpty: nodesToParse IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseFunctionStatementIfFound: fb = ( |
            | 
            ifFirstIs: 'function' ThenParseWith: functionStatementParser FoundBlock: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fCategory: imperatives\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseIfStatementIfFound: fb = ( |
             condInParens.
             else.
             elseKW.
             if.
             then.
            | 
            nodesToParse isEmpty not
            && [ nodesToParse first isLyKeyword: 'if']
             ifFalse: [^ self].
            if: nodesToParse removeFirst.

            errorNode: if.
            condInParens: parseExpressionParenList.

            errorNode: condInParens.
            then: parseBlockOrSimpleStatement.

            errorNode: then.
            nodesToParse isEmpty not
            && [ nodesToParse first isLyKeyword: 'else']
             ifFalse: [
              ^ fb value: parseNodes ifStatement 
                  copyIf: if ConditionInParens: condInParens Then: then
            ].
            elseKW: nodesToParse removeFirst.

            errorNode: elseKW.
            else: parseBlockOrSimpleStatement.

            fb value: parseNodes ifStatement
              copyIf: if ConditionInParens: condInParens Then: then 
                               ElseKeyword: elseKW ElseStatement: else).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseImperativeStatement = ( |
            | 
            parseIfStatementIfFound:    [|:r| ^ r].
            parseWhileStatementIfFound: [|:r| ^ r].
            parseForStatementIfFound:   [|:r| ^ r].

            statementWithoutTrailingSubstatementParser
              copyParse: nodesToParse
              AtOrAfter: errorNode
                 IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseObjectStatementIfFound: fb = ( |
            | 
            ifFirstIs: 'object' ThenParseWith: objectStatementParser FoundBlock: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fCategory: imperatives\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseVarStatementIfFound: fb = ( |
            | 
            ifFirstIs: 'var' ThenParseWith: varStatementParser FoundBlock: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> () From: ( | {
         'Category: statements\x7fCategory: imperatives\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseWhileStatementIfFound: fb = ( |
             exprInParens.
             stmt.
             while.
            | 
            nodesToParse isEmpty not
            && [ nodesToParse first isLyKeyword: 'while' ]
             ifFalse: [ ^ self ].
            while: nodesToParse removeFirst.

            errorNode: while.
            exprInParens: parseExpressionParenList.

            errorNode: exprInParens.
            stmt: parseBlockOrSimpleStatement.

            fb value: parseNodes whileStatement
              copyWhile: while
                ConditionInParens: exprInParens
                Statement: stmt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: classes of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         blockBodyStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockBodyStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementClassPowersetParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockBodyStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser blockBodyStatementParser.

CopyDowns:
globals lyParser statementClassPowersetParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockBodyStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockBodyStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser blockBodyStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockBodyStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: bunches of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         statementSequenceParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser statementSequenceParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser statementSequenceParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         breakIntoTopLevelStatements = ( |
            | 
            topLevelStatements:
              (statementBoundaryParser
                copyParse: nodesToParse
                AtOrAfter: errorNode
                   IfFail: myFailBlock) subnodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         createResultNode = ( |
            | 
            resultNodeProto copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
            result: createResultNode.
            stripBraces.
            breakIntoTopLevelStatements.
            parseTopLevelStatements.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseStatement: stmt = ( |
            | 
            result addSubnode: 
              statementParserProto 
                copyParseNonEmpty: stmt subnodes copy "has {} or ;"
                           IfFail: myFailBlock.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseTopLevelStatements = ( |
            | 
            topLevelStatements do: [|:stmt| 
              stmt isLast ifFalse: [ "ignore eofToken"
                parseStatement: stmt
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         stripBraces = ( |
            | 
            result openBrace: nodesToParse removeFirst.
            result closeBrace: nodesToParse removeLast.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         topLevelStatements <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: bunches of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         blockParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementSequenceParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser blockParser.

CopyDowns:
globals lyParser statementSequenceParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser blockParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultNodeProto = ( |
            | 
            parseNodes block).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         statementParserProto = ( |
            | 
            blockBodyStatementParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: unimplemented\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         breakStatementParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'breakStatementParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser breakStatementParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: bunches of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         compilationUnitParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementSequenceParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser compilationUnitParser.

CopyDowns:
globals lyParser statementSequenceParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser compilationUnitParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultNodeProto = ( |
            | parseNodes compilationUnit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         statementParserProto = ( |
            | 
            functionBodyStatementParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'compilationUnitParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         stripBraces = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: unimplemented\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         continueStatementParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'continueStatementParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser continueStatementParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: declaration statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         dclBoundaryParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser dclBoundaryParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser dclBoundaryParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         addAnUnparsedDclNode = ( |
            | result addSubnode: anotherUnparsedDclNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         anotherUnparsedDclNode = ( |
            | parseNodes node copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         checkForEmptyDcl = ( |
            | 
            result hasSubnodes not || [result lastSubnode hasSubnodes not]
                   ifTrue: [failBecause: 'Declaration expected']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'dclBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
            result: parseNodes node copyRemoveAll.
            addAnUnparsedDclNode.
            [nodesToParse isEmpty] whileFalse: [|n|
              n: nodesToParse removeFirst.
              n isComma ifFalse: [ result lastSubnode addSubnode: n ]
                           True: [
                 checkForEmptyDcl.
                 addAnUnparsedDclNode.
                 errorNode: n.
              ]
            ].
            checkForEmptyDcl.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: unimplemented\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         doStatementParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'doStatementParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser doStatementParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         expression1Parser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser expression1Parser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser expression1Parser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         matchQuestionMark: q From: from To: to = ( |
            | 
            [|n|
              from isEmpty ifTrue: [
                failNode: q
                 Because: 'Could not find colon to match with question mark'
              ].
              n: from first.
              case 
                if: [ n isColon ] Then: [ ^ self ]
                If: [ n isLyOperator: '?' ]
                Then: [ to addLast: from removeFirst. "?"
                        matchQuestionMark: n
                                     From: from
                                       To: to.
                        to addLast: from removeFirst. ":"
                ]
                Else: [ to addLast: from removeFirst ].
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression1Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             c.
             e1.
             e2.
             e3.
             ns.
             q.
            | 
            e1: parseExpression2.
            nodesToParse isEmpty not
            && [nodesToParse first isLyOperator: '?']
             ifFalse: [^ e1].

            q: nodesToParse removeFirst.

            errorNode: q.
            ns: nodesToParse copyRemoveAll.
            matchQuestionMark: q From: nodesToParse To: ns.
            e2: parseExpression: ns.

            nodesToParse isEmpty not
            && [nodesToParse first isLyOperator: ':']
             ifFalse: [ failNode: e2 Because: 'Colon expected after'].

            c: nodesToParse removeFirst.
            errorNode: c.
            e3: parseExpression1.

            parseNodes expressionIf
              copyE1: e1 Question: q E2: e2 Colon: c E3: e3).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         expression2Parser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression2Parser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression2Parser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser expression2Parser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression2Parser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression2Parser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser expression2Parser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression2Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression2Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             r.
            | 
            r: parseExpression3.
            nodesToParse isEmpty  ifTrue: [^ r].
            nodesToParse first isLyInfixOperator  ifTrue: [
              [
                r: parseNodes infixExpression 
                     copyExpression: r
                           Operator: nodesToParse removeFirst
                         Expression: parseExpression3.
              ] untilFalse: [ 
                     nodesToParse isEmpty not
                && [ nodesToParse first isLyInfixOperator ]].
              ^ r
            ].
            (nodesToParse first isLyKeyword: 'inheritsfrom')  ifTrue: [
              errorNode: nodesToParse removeFirst.
              ^ parseNodes infixExpression
                copyExpression: r
                      Operator: errorNode
                    Expression: parseType
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         expression3Parser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser expression3Parser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser expression3Parser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            nodesToParse isEmpty ifTrue: [halt: 'how can this work?'. ^ parsePrimary ].
            parsePrefixOpIfFound: [|:r| ^ r].
            parsePrimaryCase).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'Category: selectors\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseDotSelector = ( |
             dot.
             expected = 'Expected identifier, `this\', `super\', or `new\' '.
             n.
            | 
            dot: nodesToParse removeFirst.
            errorNode: dot.
            nodesToParse isEmpty ifTrue: [
              failBecause: expected, 'after'.
            ].
            n: nodesToParse removeFirst.
            errorNode: n.
            case
              if: [ n isLyIdentifier       ] Then: [ parseSelectorDot: dot ID:    n ]
              If: [ n isLyKeyword: 'this'  ] Then: [ parseSelectorDot: dot This:  n ]
              If: [ n isLyKeyword: 'super' ] Then: [ parseSelectorDot: dot Super: n ]
              Else: [ failBecause: expected, 'instead of' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parsePrefixOpIfFound: fb = ( |
             e.
             op.
            | 
            nodesToParse first isLyPrefixOperator ifFalse: [^self].
            op: nodesToParse removeFirst.
            errorNode: op.
            e: parseExpression3.
            fb value: 
              parseNodes prefixExpression 
                copyOperator: op
                  Expression: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parsePrimaryCase = ( |
             post.
             r.
             sel.
            | 
            r: parsePrimary.
            parseSelectorIfFound: [|:s|
              r: parseNodes postfixExpression copyExpression: r Operator: s
            ].
            [nodesToParse isEmpty not && [nodesToParse first isLyPostfixOperator]]
             whileTrue: [
              r: parseNodes postfixExpression
                   copyExpression: r Operator: nodesToParse removeFirst
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'Category: selectors\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSelectorDot: dot ID: id = ( |
            | 
            parseNodes messageSelector copyDot: dot Name: id Arguments:
                 nodesToParse isEmpty not && [ nodesToParse first isParenList ]
                    ifTrue: [  parseArgumentList ]
                     False: [  parseNodes noArgumentList ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'Category: selectors\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSelectorDot: dot Super: s = ( |
             args.
             d.
             id.
            | 
            nodesToParse isEmpty ifTrue: [
              failBecause: 'Expected either arguments in parentheses or period after'
            ].
            nodesToParse first isParenList ifTrue: [
              ^ parseNodes messageSelector copyDot: dot Name: s Arguments: parseArgumentList
            ].
            nodesToParse first isDot  ifFalse: [
              failNode: nodesToParse first
               Because: 'Expected either arguments in parentheses or period instead of'
            ].
            d: nodesToParse removeFirst.
            nodesToParse isEmpty not && [nodesToParse first isLyIdentifier]
             ifFalse: [ failNode: d Because: 'Expected identifier after' ].
            id: nodesToParse removeFirst.
            nodesToParse isEmpty not && [nodesToParse first isParenList]
             ifFalse: [
              ^ parseNodes qualifiedSuperSelector copyDot: dot Super: s Dot: d Name: id
            ].
            args: parseArgumentList.
            parseNodes qualifiedSuperInvocationSelector
              copyDot: dot Super: s Dot: d Name: id Arguments: args).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'Category: selectors\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSelectorDot: dot This: t = ( |
            | 
            parseNodes fieldSelector copyDot: dot Name: t).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'Category: selectors\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSelectorIfFound: fb = ( |
            | 
            case if:   [ nodesToParse isEmpty ]             Then: [^ self]
                 If:   [ nodesToParse first isDot ]         Then: [^ fb value: parseDotSelector ]
                 If:   [ nodesToParse first isLyDotDot]     Then: [^ fb value: parseDotSelector ]
                 If:   [ nodesToParse first isSquareList ]  Then: [^ fb value: parseSquareSelector ]
                 Else: [ ^ self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expression3Parser' -> 'parent' -> () From: ( | {
         'Category: selectors\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSquareSelector = ( |
             e.
             lft.
             rt.
             sql.
             sqlns.
            | 
            sql: nodesToParse removeFirst.
            sqlns: sql subnodes copy.
            lft: sqlns removeFirst.
            rt:  sqlns removeLast.
            e: expressionParser copyParse: sqlns AtOrAfter: lft IfFail: [|:e| ^ myFailBlock value: e].
            sqlns isEmpty ifFalse: [failNode: e Because: 'Extra junk after'].
            parseNodes arrayAccess copyLeft: lft Expression: e Right: rt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser expressionParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser expressionParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
            nodesToParse isEmpty ifTrue: [
              failBecause: 'expression expected after'
            ].
                nodesToParse first isSemicolon
            || [nodesToParse first isComma]
             ifTrue: [
              failNode: nodesToParse first
               Because: 'expected expression before'
            ].
            parseExpressionRightToLeft: parseExpression1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'expressionParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseExpressionRightToLeft: e1 = ( |
             op.
            | 
            nodesToParse isEmpty not
            && [ nodesToParse first isLyAssignmentOperator ]
              ifFalse: [^ e1].

            op: nodesToParse removeFirst.
            errorNode: op.

            parseNodes infixExpression
              copyExpression:  e1
                    Operator:  op
                  Expression:  parseExpressionRightToLeft: parseExpression1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: function statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'formalsParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'formalsParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser formalsParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'formalsParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'formalsParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser formalsParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'formalsParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'formalsParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
            result: parseNodes formals copyRemoveAll.
            [ |id. comma|
              nodesToParse isEmpty ifTrue: [^ result].
              nodesToParse first isLyIdentifier ifFalse: [failBecause: 'formal parameter identifier expected'].
              id: nodesToParse removeFirst.
              result names addLast: id.
              result addSubnode: id.
              nodesToParse isEmpty ifTrue: [^ result].
              errorNode: id.
              nodesToParse isComma ifFalse: [failBecause: 'expected comma after formal parameter'].
              comma: nodesToParse removeFirst.
              result separators addLast: comma.
              result subnodes addLast: comma.
            ] loop).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: bunches of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         functionBodyParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementSequenceParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser functionBodyParser.

CopyDowns:
globals lyParser statementSequenceParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser functionBodyParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultNodeProto = ( |
            | 
            parseNodes functionBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         statementParserProto = ( |
            | 
            functionBodyStatementParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: classes of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         functionBodyStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementClassPowersetParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser functionBodyStatementParser.

CopyDowns:
globals lyParser statementClassPowersetParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser functionBodyStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isArgOK = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionBodyStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         functionOrObjectStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser functionOrObjectStatementParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser functionOrObjectStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
             curlyList.
            | 
            result: resultProto copyRemoveAll.
            parseDesiredKeyword.
            result name: nodesToParse removeFirst.
            parseFormalsIfFunction.
            nodesToParse first isCurlyList ifFalse: [failBecause: 'Expected stuff in curly braces after ', desiredKeyword, ' name'].
            curlyList: nodesToParse removeFirst subnodes copy asList.
            result body: bodyParserProto copyParseNonEmpty: curlyList IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseDesiredKeyword = ( |
            | 
            nodesToParse isEmpty not  &&  [nodesToParse first isLyKeyword: desiredKeyword] ifFalse: [failBecause: 'Expecting first token to be ', desiredKeyword].
            result keyword: nodesToParse removeFirst.
            nodesToParse first isLyIdentifier ifFalse: [failBecause: 'Expected identifier after ', desiredKeyword]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: function statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         functionStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser functionOrObjectStatementParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser functionStatementParser.

CopyDowns:
globals lyParser functionOrObjectStatementParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser functionStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         bodyParserProto = ( |
            | 
            functionBodyParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         desiredKeyword = 'function'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseFormalsIfFunction = ( |
             formals.
            | 
            nodesToParse first isParenList ifFalse: [failNode: result name Because: 'Expected parenthesized formal paramater list after function name'].
            formals: nodesToParse removeFirst subnodes copy asList.
            result openParen: formals removeFirst.
            result closeParen: formals removeLast.
            result formals: formalsParser copyParse: formals AtOrAfter: result openParen IfFail: myFailBlock.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'functionStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultProto = ( |
            | parseNodes functionDeclaration).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: bunches of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBodyParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementSequenceParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser objectBodyParser.

CopyDowns:
globals lyParser statementSequenceParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser objectBodyParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementSequenceParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultNodeProto = ( |
            | 
            parseNodes objectBody).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         statementParserProto = ( |
            | 
            objectBodyStatementParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: classes of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBodyStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser statementClassPowersetParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser objectBodyStatementParser.

CopyDowns:
globals lyParser statementClassPowersetParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser objectBodyStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isArgOK = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> 'parent' -> () From: ( | {
         'Category: override to restrict\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         isImperativeOK = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectBodyStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'statementClassPowersetParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         objectStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser functionOrObjectStatementParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser objectStatementParser.

CopyDowns:
globals lyParser functionOrObjectStatementParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser objectStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         bodyParserProto = ( |
            | objectBodyParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         desiredKeyword = 'object'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'functionOrObjectStatementParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseFormalsIfFunction = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'objectStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultProto = ( |
            | 
            parseNodes objectStatement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: expressions\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         primaryParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser primaryParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser primaryParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
             n.
             w1 = 'Expected a parenthesized expression, \"this\", \"super\", a literal, '.
             w2 = 'an identifier, a basic type, or \"void\" '.
            | 
            nodesToParse isEmpty ifTrue: [failBecause: w1, w2, 'after'].

            n: nodesToParse first.

            case
              if: [n isParenList           ] Then: [ parseExpressionParenList]
              If: [n isCurlyList          ] Then: [ parseBlock]
              If: [n isLyKeyword: 'this' ] Then: [ parseIdentifierPrimary ]
              If: [n isLyKeyword: 'super'] Then: [ parseIdentifierPrimary ]
              If: [n isLiteral             ] Then: [ nodesToParse removeFirst ]
              If: [n isLyIdentifier      ] Then: [ parseIdentifierPrimary ]

              Else: [ failNode: n Because: w1, w2, 'instead of' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> 'parent' -> () From: ( | {
         'Category: identifier\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseArrayClassAccessName: n DimExpr: de = ( |
             class.
             des.
             dot.
            | 
            des: list copyRemoveAll addLast: de.
            [nodesToParse isEmpty not
             && [nodesToParse first isSquareList
             && [nodesToParse first subnodeCount = 2]]
            ] whileTrue: [ 
              des addLast: parseDimensionExpression:
                nodesToParse removeFirst subnodes copy
            ].
            errorNode: des last.
            nodesToParse isEmpty not
            && [ nodesToParse first isDot
            && [
                dot: nodesToParse removeFirst.
                nodesToParse isEmpty not
            && [nodesToParse first isLyKeyword: 'class']]]
             ifFalse: [
              failBecause: 'Expected expression inside or `.class\' after'
            ].
            class: nodesToParse removeFirst.
            parseNodes dotClassType
              copyPreDot: (parseNodes arrayClass copyName: n DEs: des)
                     Dot: dot 
                   Class: class).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> 'parent' -> () From: ( | {
         'Category: identifier\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseArrayOrArrayClassAccessName: n = ( |
             de.
            | 
            de: parseDimensionExpression:
               nodesToParse removeFirst subnodes copy.
            de hasExpression
             ifFalse: [ parseArrayClassAccessName:       n DimExpr: de ]
                True: [ parseNodes arrayAccess copyName: n DimExpr: de ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'primaryParser' -> 'parent' -> () From: ( | {
         'Category: identifier\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseIdentifierPrimary = ( |
             name.
            | 
            name: nodesToParse removeFirst.
            nodesToParse isEmpty ifTrue: [^ name].
            errorNode: name.
            nodesToParse first isSquareList ifTrue: [
              ^ parseArrayOrArrayClassAccessName: name
            ].
            nodesToParse first isParenList ifTrue: [
              ^ parseNodes methodInvocation copyName: name Arguments: parseArgumentList
            ].

            name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         returnStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser returnStatementParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (nil)'
        
         expr.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser returnStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
                (nodesToParse size >= 2) 
            && [(nodesToParse first isLyKeyword: 'return')
            && [ nodesToParse last  isSemicolon ]]
              ifFalse: [failBecause: 'Expected "return ... ;"'].
            return: nodesToParse removeFirst.
            semicolon: nodesToParse removeLast.
            nodesToParse isEmpty ifTrue: [^ parseNodes expressionlessReturn copyReturn: return Semicolon: semicolon].
            expr: expressionParser copyParse: nodesToParse AtOrAfter: return IfFail: myFailBlock.
            nodesToParse isEmpty ifFalse: [failNode: nodesToParse first Because: 'Extra stuff found after return expression'].
            parseNodes expressionfullReturn copyReturn: return Expression: expr Semicolon: semicolon).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (nil)'
        
         return.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'returnStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (nil)'
        
         semicolon.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceToNoncommentParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'sourceToNoncommentParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit sourceToNoncommentParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'sourceToNoncommentParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser sourceToNoncommentParser.

CopyDowns:
globals parseKit sourceToNoncommentParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'sourceToNoncommentParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser sourceToNoncommentParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'lyParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'sourceToNoncommentParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'sourceToNoncommentParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         statementBoundaryParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> () From: ( |
             {} = 'Comment: Ly statements either end in semicolons or
curly blocks.\x7fModuleInfo: Creator: globals lyParser statementBoundaryParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (nil)'
        
         nodesInStatement.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser statementBoundaryParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         finish = ( |
            | 
            nodesInStatement isEmpty ifTrue: [^self].

               (nodesInStatement size = 1)
            && [nodesInStatement first isToken
            && [nodesInStatement first isLast "eofToken"]]
              ifTrue: [ 
                result addSubnode: nodesInStatement first.
              ^ self
            ].

            failAll: nodesInStatement
            Because: 'Statement must end with either semicolon or curly braces').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
            | 
            result: parseKit parseNodes node copyRemoveAll.
            nodesInStatement: list copyRemoveAll.

            nodesToParse do: [|:n| parseNode: n].
            finish.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseNode: n = ( |
            | 
               (n isCurlyList && [priorWasEquals not])
            || [n isSemicolon]
              ifTrue: [ parseStatementEnd: n ]
               False: [ parseOther: n ].
            priorWasEquals:  n isLyOperator: '='.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseOther: n = ( |
            | nodesInStatement addLast: n. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parseStatementEnd: n = ( |
             s.
            | 
            nodesInStatement addLast: n.
            s: node copyRemoveAll.
            s addAllSubnodes: nodesInStatement.
            result addSubnode: s.
            nodesInStatement removeAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementBoundaryParser' -> () From: ( | {
         'Comment: To handle 
\"a = {3};\" case, ignore {} after an =\x7fModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (false)\x7fVisibility: private'
        
         priorWasEquals <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: classes of statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         statementWithoutTrailingSubstatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser statementWithoutTrailingSubstatementParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser statementWithoutTrailingSubstatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parse = ( |
             expectedWhat = 'Expected {, ;, expression, switch, do, break, continue, return'.
            | 

            nodesToParse isEmpty ifTrue: [
              failBecause: expectedWhat, ' after'
            ].
            parseNestedBlockIfFound:            [|:r| ^ r].
            parseEmptyStatementIfFound:         [|:r| ^ r].
            parseSwitchStatementIfFound:        [|:r| ^ r].
            parseDoStatementIfFound:            [|:r| ^ r].
            parseBreakStatementIfFound:         [|:r| ^ r].
            parseContinueStatementIfFound:      [|:r| ^ r].
            parseReturnStatementIfFound:        [|:r| ^ r].
            parseExpressionStatementIfFound:    [|:r| ^ r].

            failAll: nodesToParse
            Because: expectedWhat, ' instead of').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseBreakStatementIfFound: fb = ( |
            | 
            ifFirstNodeIs: [|:n| n isLyKeyword: 'break']
                ParseWith: breakStatementParser
                  IfFound: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseContinueStatementIfFound: fb = ( |
            | 
            ifFirstNodeIs: [|:n| n isLyKeyword: 'continue']
                ParseWith: continueStatementParser
                  IfFound: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseDoStatementIfFound: fb = ( |
            | 
            ifFirstNodeIs: [|:n| n isLyKeyword: 'do']
                ParseWith: doStatementParser
                  IfFound: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseEmptyStatementIfFound: fb = ( |
            | 
                 nodesToParse isEmpty not
            && [ nodesToParse first isSemicolon ]
             ifFalse: [^ self].

            fb value: parseNodes emptyStatement 
                        copySemicolon: nodesToParse removeFirst).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseExpressionStatementIfFound: fb = ( |
             e.
             s.
            | 
            nodesToParse isEmpty ifTrue: [^ self].
            nodesToParse first couldStartLyExpression ifFalse: [^ self].
            e: parseExpression.
            errorNode: e.
            s: parseSemicolon.
            fb value: parseNodes expressionStatement copyExpression: e Semicolon: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseNestedBlockIfFound: fb = ( |
            | 
            nodesToParse isEmpty not && [ nodesToParse first isCurlyList ]
              ifFalse: [ ^ self].
            halt.
            fb value:  
              parseNodes blockStatement copyBlock:
                blockParser copyParseNonEmpty: nodesToParse removeFirst subnodes copy
                                       IfFail: myFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseReturnStatementIfFound: fb = ( |
            | 
            ifFirstNodeIs: [|:n| n isLyKeyword: 'return' ]
               ParseWith:  returnStatementParser
                 IfFound: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'statementWithoutTrailingSubstatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parseSwitchStatementIfFound: fb = ( |
            | 
            ifFirstNodeIs: [|:n| n isLyKeyword: 'switch']
                ParseWith: switchStatementParser
                  IfFound: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: unimplemented\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         switchStatementParser = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'switchStatementParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser switchStatementParser.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fCategory: declaration statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         varDclParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser miniParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser varDclParser.

CopyDowns:
globals lyParser miniParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser varDclParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         parse = ( |
            | 
            result: resultProto copyRemoveAll.
            nodesToParse isEmpty ifTrue: [failBecause: 'identifier expected in variable declaration'].
            nodesToParse first isLyIdentifier ifFalse: [failBecause: 'identifier expected in variable declaration'].
            result name: nodesToParse removeFirst. 
            nodesToParse isEmpty ifTrue: [^ result].
            (nodesToParse first isLyOperator: '=') ifFalse: [failNode: nodesToParse first Because: 'expected = after name'].
            result equals: nodesToParse removeFirst.
            errorNode: result equals.
            result initialValueExpression: expressionParser copyParse: nodesToParse AtOrAfter: result equals IfFail: myFailBlock.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varDclParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultProto = ( |
            | 
            nodesToParse size = 1 ifTrue: [parseNodes uninitializedVariableDeclaration] False: [parseNodes initializedVariableDeclaration]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fCategory: miniparsers\x7fCategory: statements\x7fCategory: specific statements\x7fModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         varStatementParser = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser varOrArgStatementParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> () From: ( |
             {} = 'Comment: handy place for Ly-specific
miniparser utilities\x7fModuleInfo: Creator: globals lyParser varStatementParser.

CopyDowns:
globals lyParser varOrArgStatementParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser varStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         dclParserProto = ( |
            | varDclParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         keyword = 'var'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'varStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         resultProto = ( |
            | parseNodes varStatement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         lyMinis = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules lyMinis.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/lyParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyMinis' -> () From: ( | {
         'ModuleInfo: Module: lyMinis InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 



 '-- Side effects'

 globals modules lyMinis postFileIn
