 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         parseNodes = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractReturn = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes abstractReturn.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes abstractReturn parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         return = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         semicolon = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: var statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractVariableDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes abstractVariableDeclaration.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens identifier)'
        
         name <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes abstractVariableDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | 
            list copyRemoveAll addFirst: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         adverb = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes adverb.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes adverb parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         adverb = ( |
            | 
            firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         copyMinusMinus: mm Expression: e = ( |
            | 
            (copyRemoveAll addSubnode: mm) addSubnode: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         expression = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'adverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: arg statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes argDeclaration.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens identifier)'
        
         name <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes argDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | 
            mySubnodes copy addFirst: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         varOrArgStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes varOrArgStatement.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens keyword)'
        
         keyword <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes varOrArgStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | (mySubnodes copy addFirst: keyword) addLast: semicolon).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens separator)'
        
         semicolon <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: arg statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes varOrArgStatement copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes argStatement.

CopyDowns:
globals lyParser parseNodes varOrArgStatement. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes argStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argument = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes argument.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes argument parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         commaIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount = 2
              ifTrue: [pb value: lastSubnode]
               False:  ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e = ( |
            | 
            copyRemoveAll addSubnode: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e Comma: c = ( |
            | 
            (copyRemoveAll
            addSubnode: e)
            addSubnode: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentList = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes argumentList.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes argumentList parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
             a.
            | 
            a: subnodes copy.
            a removeFirst.
            a removeLast.
            a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         closeParen = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: op Arguments: a Close: cl = ( |
            | 
            ((copyRemoveAll
            addSubnode: op)
            addAllSubnodes: a)
            addSubnode: cl).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         openParen = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentListWithAdverb = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes argumentList copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes argumentListWithAdverb.

CopyDowns:
globals lyParser parseNodes argumentList. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes argumentListWithAdverb parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         adverb = ( |
            | subnodeAt: subnodes size - 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | 
            resend.arguments removeLast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: op Arguments: a Adverb: b Close: cl = ( |
            | 
            (((copyRemoveAll
            addSubnode: op)
            addAllSubnodes: a)
            addSubnode: b)
            addSubnode: cl).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentListWithAdverb' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: bunches o statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         statementsInCurlies = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes statementsInCurlies.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens separator)'
        
         closeBrace <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens separator)'
        
         openBrace <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes statementsInCurlies parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | (mySubnodes copy addFirst: openBrace) addLast: closeBrace).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: bunches o statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         block = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'block' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes statementsInCurlies copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'block' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes block.

CopyDowns:
globals lyParser parseNodes statementsInCurlies. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'block' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes block parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: bunches o statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         compilationUnit = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'compilationUnit' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'compilationUnit' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes compilationUnit.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'compilationUnit' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'compilationUnit' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes compilationUnit parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'compilationUnit' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes expressionStatement.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes expressionStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e Semicolon: s = ( |
            | 
            (copyRemoveAll
            addSubnode: e)
            addSubnode: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionStatement' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         semicolon = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionfullReturn = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes abstractReturn copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes expressionfullReturn.

CopyDowns:
globals lyParser parseNodes abstractReturn. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes expressionfullReturn parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReturn: r Expression: e Semicolon: s = ( |
            | 
            ((copyRemoveAll addSubnode: r) addSubnode: e) addSubnode: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | subnodeAt: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionfullReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionlessReturn = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionlessReturn' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes abstractReturn copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionlessReturn' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes expressionlessReturn.

CopyDowns:
globals lyParser parseNodes abstractReturn. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionlessReturn' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionlessReturn' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes expressionlessReturn parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionlessReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReturn: r Semicolon: s = ( |
            | 
            ((copyRemoveAll addSubnode: r) addSubnode: e) addSubnode: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'expressionlessReturn' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractReturn' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: function statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formals = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes formals.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         names <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes formals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | (resend.copy names: names copy) separators: separators copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | 
            (resend.copyRemoveAll names: names copyRemoveAll) separators: separators copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         separators <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: bunches o statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         functionBody = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionBody' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes statementsInCurlies copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionBody' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes functionBody.

CopyDowns:
globals lyParser parseNodes statementsInCurlies. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionBody' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionBody' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes functionBody parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         functionDeclarationOrObjectStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes functionDeclarationOrObjectStatement.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (nil)'
        
         body.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens keyword)'
        
         keyword <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens identifier)'
        
         name <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes functionDeclarationOrObjectStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | (keyword & name & body) asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: function statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         functionDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes functionDeclarationOrObjectStatement copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes functionDeclaration.

CopyDowns:
globals lyParser parseNodes functionDeclarationOrObjectStatement. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens separator)'
        
         closeParen <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser parseNodes formals)'
        
         formals <- bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'formals' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens separator)'
        
         openParen <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes functionDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | 
            (keyword & name & formals & body) asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         infixExpression = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes infixExpression.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes infixExpression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e1 Operator: op Expression: e2 = ( |
            | 
            ((copyRemoveAll
            addSubnode: e1)
            addSubnode: op)
            addSubnode: e2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression1 = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression2 = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         operator = ( |
            | 
            subnodeAt: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'infixExpression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: var statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         initializedVariableDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes abstractVariableDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes initializedVariableDeclaration.

CopyDowns:
globals lyParser parseNodes abstractVariableDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser lexer tokens operator)'
        
         equals <- bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (lyParser parseNodes node)'
        
         initialValueExpression <- bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes initializedVariableDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'initializedVariableDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         subnodes = ( |
            | (resend.subnodes addLast: equals) addLast: initialValueExpression).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         messageSelector = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes messageSelector.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes messageSelector parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyDot: d Name: n Arguments: a = ( |
            | 
            ((copyRemoveAll addSubnode: d) addSubnode: n) addSubnode: a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         methodInvocation = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes methodInvocation.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes methodInvocation parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n Arguments: a = ( |
            | 
            (copyRemoveAll
            addSubnode: n)
            addSubnode: a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameNode = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'methodInvocation' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fCategory: calls\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         noArgumentList = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'messageSelector' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: bunches o statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBody = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectBody' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes statementsInCurlies copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectBody' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes objectBody.

CopyDowns:
globals lyParser parseNodes statementsInCurlies. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectBody' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectBody' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes objectBody parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'statementsInCurlies' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes functionDeclarationOrObjectStatement copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes objectStatement.

CopyDowns:
globals lyParser parseNodes functionDeclarationOrObjectStatement. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes objectStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'objectStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'functionDeclarationOrObjectStatement' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         postfixExpression = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes postfixExpression.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes postfixExpression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e Operator: o = ( |
            | 
            (copyRemoveAll
            addSubnode: e)
            addSubnode: o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         operator = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'postfixExpression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         prefixExpression = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes prefixExpression.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes prefixExpression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOperator: o Expression: e = ( |
            | 
            (copyRemoveAll
            addSubnode: o)
            addSubnode: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | 
            lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         operator = ( |
            | 
            firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'prefixExpression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: var statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         uninitializedVariableDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'uninitializedVariableDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes abstractVariableDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'uninitializedVariableDeclaration' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes uninitializedVariableDeclaration.

CopyDowns:
globals lyParser parseNodes abstractVariableDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'uninitializedVariableDeclaration' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'uninitializedVariableDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes uninitializedVariableDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'uninitializedVariableDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'abstractVariableDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fCategory: var statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         varStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals lyParser parseNodes varOrArgStatement copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes varStatement.

CopyDowns:
globals lyParser parseNodes varOrArgStatement. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes varStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'varOrArgStatement' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> () From: ( | {
         'Category: statements\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         whileStatement = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals lyParser parseNodes whileStatement.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser parseNodes whileStatement parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         conditionInParens = ( |
            | subnodeAt: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         copyWhile: w ConditionInParens: c Statement: s = ( |
            | 
            ((copyRemoveAll addSubnode: w) addSubnode: c) addSubnode: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         statement = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'parseNodes' -> 'whileStatement' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         while = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         lyParseNodes = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules lyParseNodes.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/lyParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyParseNodes' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokenTraits' -> 'valueTokens' -> () From: ( | {
         'Category: Ly semantics\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyAssignmentOperator = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyDotDot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyIdentifier = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyInfixOperator = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyKeyword: k = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyOperator: op = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyPostfixOperator = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( | {
         'ModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyPrefixOperator = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'parenList' -> 'parent' -> () From: ( | {
         'Category: Ly semanticx\x7fModuleInfo: Module: lyParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 



 '-- Side effects'

 globals modules lyParseNodes postFileIn
