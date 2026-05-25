 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser argDclParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'miniParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parse = ( |
            | 
            result: resultProto copyRemoveAll.
            nodesToParse isEmpty ifTrue: [failBecause: 'identifier expected in arg declaration'].
            nodesToParse first isLyIdentifier ifFalse: [failBecause: 'identifier expected in arg declaration'].
            result name: nodesToParse removeFirst. 
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argDclParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         resultProto = ( |
            | 
            parseNodes argDeclaration).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser argStatementParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         dclParserProto = ( |
            | 
            argDclParser).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         keyword = 'arg'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'varOrArgStatementParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'argStatementParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         resultProto = ( |
            | 
            parseNodes argStatement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: lexing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         characterSets = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'characterSets' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser characterSets.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'characterSets' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         lineTerminators = bootstrap setObjectAnnotationOf: ( '\x0d
' asCharacterSet) From: ( |
             {} = 'Comment: A character set defined by its extension;
whatever characters you specify in a string.\x7fModuleInfo: Creator: globals lyParser characterSets lineTerminators.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'characterSets' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'characterSets' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'Category: lexing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         lexer = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'spaces' From:
             bootstrap remove: 'tokenTraits' From:
             bootstrap remove: 'tokens' From:
             globals parseKit lexer copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> () From: ( |
             {} = 'Comment: Unimplemented: Unicode escapes\x7fModuleInfo: Creator: globals lyParser lexer.

CopyDowns:
globals parseKit lexer. copy 
SlotsToOmit: parent spaces tokenTraits tokens.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fComment: \'applications/lyParser/boids_from_scratch.ly\' asFileContents\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         actualLyFile = bootstrap setObjectAnnotationOf: ( '// http://www.kfish.org/boids/pseudocode.html

object Boid {
  var position = 0 /* @0 */, velocity = 0 /* @0 */, neighbors, flock;
  
  function move_to_new_position(centroid) {
    compute_neighbors();
    velocity += move_toward_centroid_of_all_others(centroid)
              + keep_away_from_neighbors()
              + match_velocity_with_neighbors();
    position += velocity;
  }
  
  function is_near(b) { return this != b  &&  position.distance_to(b.position) <= 100; }
  
  function compute_neighbors() {
    return flock.is_near(this --selectly);  
  }
  
  function move_toward_centroid_of_all_others(centroid) {
    var perceived_centroid = (centroid * flock..size()  -  position) / (flock..size() - 1);
    return (perceived_centroid - position) / 100;
  }
  
  function keep_away_from_neighbors() {
    return -(neighbors.position - position).yourself( --totally );
  }
  
  function match_velocity_with_neighbors() {
    return (neighbors.velocity(--averagely) - velocity) / 8;
  }
}

var flock = Boid.inflate(1000 --fuzzily);
flock.flock = flock;
while (1) {
  flock.draw();
  var centroid = flock.position(--averagely);
  flock.move_to_new_position();
}' copyMutable) From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer parent actualLyFile.

CopyDowns:
globals byteVector. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         nameSpace* = bootstrap stub -> 'globals' -> 'lyParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         testActual = ( |
            | 
            testString: actualLyFile).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testChars = ( |
            | 
            testString: '
            \'A\'
            \'a\'
            \'\\b\'
            \'\\t\'
            \'\\n\'
            \'\\f\'
            \'\\r\'
            \'\\\"\'
            \'\\\'\'
            \'\\\\\'
            \'\\0\'
            \'\\7\'
            \'\\12\'
            \'\\321\'
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testEOFInComment = ( |
            | 
            testString: ' /* blort
            and more').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testGoodOps = ( |
             txt = '= > < ! ~ ? :
== <= >= != && || ++
+ - * / & | ^ % << >> >>>
+= -= *= /= &= |= ^= %= <<= >>= >>>='.
            | 

            testString: txt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testIDs = ( |
            | 
            testString: '
            foobar bazz12 $er _snort_
            abstract boolean break byte case catch
            char class const continue
            default do double else extends final finally float for goto
            if implements import instanceof int interface long native new package
            private protected public return short static super switch synchronized this
            throw throws transient try void volatile while
            true false null').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testImpossible = ( |
            | 
            testString: '
            @
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testLineComments = ( |
            | 
            testString: '// the whole line

              // another one
            // the last line').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testNumbers = ( |
            | 
            testString: '
            .123 .12e2 .12E-3 0.123
            .123f .12e2F .12E-3d 0.123D
            0.123E4 0.123e-5
            0
            123
            0x123
            0123
            13l
            0xaL
            012l
            123.456
            123.456e6
            123.456e-6
            12.3
            17e+2
            ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testStrings = ( |
            | 
            testString: '
            "Aa \\b \\t \\n \\f \\r \\\\ \\\" \\\' \\0 \\7 \\12 \\321"').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         testTraditionalComments = ( |
            | 
            testString: '
            /* in one line */
            /* across lines
            more */
            /* this comment /* // /** ends here: */').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> () From: ( | {
         'Category: change these to lex your language\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         spaces = ' 	\f\x0d
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> () From: ( | {
         'Category: change these to lex your language\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         tokenTraits = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokenTraits.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         charAndStringTokens = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokenTraits charAndStringTokens.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> () From: ( | {
         'Category: scanning\x7fComment: Advance lexer to first character after me.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         advancePastMeIfFail: fb = ( |
             c.
            | 
            in advance. "first quote"
            [
              c: in nextIfEOF: [ "eat char, or \ or close-quote"
                illegalTokenReason: 'EOF in middle of string or character literal'
                  FailBlock: fb
              ].
              (lyParser characterSets lineTerminators includes: c)  ifTrue: [
                illegalTokenReason: 'line terminator in middle of string or character literal'
                  FailBlock: fb
              ].
              initialCharacterSet includes: c
            ] whileFalse: [ 
              c = '\\'  ifTrue: [ value: value & (eatEscapeIfFail: [|:e| ^ fb value: e]) ]
                         False: [ value: value & c ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         condenseValueIfFail: fb = ( |
            | 
            "value is a collector, collapse into a string"
            value: value flatString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> () From: ( | {
         'Category: scanning\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         eatEscapeIfFail: fb = ( |
             c.
             lyAndSelfEscs = 'btnfr\"\'\\' asCharacterSet.
             ods = '0' asCharacterSet  =>  '7'.
            | 
            c: in peek.
            case
              if: [lyAndSelfEscs includes: c] Then: [
                in advance.
                ('\'\\', c, '\'') eval
              ]
              If: [ods includes: c] Then: [ 
                | n <- '8r' |
                (c <= '3' ifTrue: 3 False: 2) "max length of octal num."
                  do: [(ods includes: in peek)  ifTrue:  [ n: n, in next ] ].
                n eval asCharacter
              ]
              Else: [ 
                in advance. "included error in extent"
                illegalTokenReason: 'bad escape sequence in string or character'
                  FailBlock: fb
              ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokenTraits' -> 'valueTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         integerTokens = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'integerTokens' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokenTraits integerTokens.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'integerTokens' -> () From: ( | {
         'Category: scanning\x7fComment: Advance lexer to first character after me.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         advancePastMeIfFail: fb = ( |
            | 
            [myDigits includes: in peek]
              whileTrue: [ in advance].
            in peek uncapitalize = 'l'
             ifTrue: [
              isLong: true.
               in advance.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         numberTokens = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokenTraits numberTokens.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'integerTokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> () From: ( | {
         'Category: constructing\x7fComment: Called when the last character has been found.
(Input stream points to first character AFTER
this token.)
My job is to boil down the input characters of this
token as need be.
For instance, for an integer, I would calculate the
integer value from the characters.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         condenseValueIfFail: fb = ( |
            | 
            value: sourceForSelf evalIfFail: [|:e|
              error: 'Self could not parse ', sourceForSelf, '  ',
                     e printString].

             self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isNumber = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokenTraits' -> 'valueTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         sourceForSelf = ( |
             s.
            | 
            s: source.
            s last isLetter ifTrue: [
              "remove Ly float/int type suffix"
              s: s copyWithoutLast.
            ].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> () From: ( | {
         'Category: change these to lex your language\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         tokens = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: literals\x7fCategory: characters and strings\x7fComment: CharacterLiteral\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         charLiteral = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'initialCharacterSet:' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens charLiteral.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet initialCharacterSet: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = '\'' asCharacterSet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens charLiteral parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         condenseValueIfFail: fb = ( |
            | 
            resend.condenseValueIfFail: [|:e| ^ fb value: e].
            value size = 1 ifFalse: [
              illegalTokenReason: 'Character literals length is ', value size printString, ' but must be 1'
                FailBlock: fb
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'charLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (\'\')'
        
         value <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: literals\x7fCategory: numbers\x7fCategory: integers\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         decimalLiteral = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'initialCharacterSet:' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens decimalLiteral.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet initialCharacterSet: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = '1' asCharacterSet  =>  '9'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (false)'
        
         isLong <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens decimalLiteral parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fComment: if no type suffix and if number ends in
a dot or e, is really a float\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         condenseValueIfFail: fb = ( |
             floatChars = '.eE' asCharacterSet.
            | 
            (floatChars includes: in peek )
            && [source last isDigit] "no L suffix"
             ifTrue: [ 
              (lyParser lexer tokens floatLiteral copyFrom: self)
               scanIfFail: fb
            ]
            False: [ resend.condenseValueIfFail: fb]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         myDigits = bootstrap stub -> 'globals' -> 'parseKit' -> 'characterSets' -> 'digits' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'integerTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'decimalLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (0)'
        
         value <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: literals\x7fCategory: numbers\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         floatLiteral = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens floatLiteral.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (true)'
        
         isDouble <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens floatLiteral parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: Enter here after scanning the part before the 
decimal point, with the input stream either
at the point or the e.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         advancePastMeIfFail: fb = ( |
             c.
             ees = 'eE' asCharacterSet.
             suffixes = 'fFdD' asCharacterSet.
            | 
            ('.'      =         in peek)  ifTrue: [scanFractionIfFail: [|:e| ^ fb value: e]].
            (ees      includes: in peek)  ifTrue: [scanExponentIfFail: [|:e| ^ fb value: e]].
            (suffixes includes: in peek)  ifTrue: [isDouble: 'd' = in next uncapitalize].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'numberTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         scanExponentIfFail: fb = ( |
             signs = '+-' asCharacterSet.
            | 
            in advance. "e"
            (signs includes: in peek) ifTrue: [
              in peekSecond isDigit ifFalse: [
                in advance.
                ^ illegalTokenReason: 'Must be a digit after a + or - in exponent'
                  FailBlock: fb
              ].
              in advance. "="
            ].
            in peek isDigit ifFalse: [
              in advance.
              ^ illegalTokenReason: 'Exponet must have at least one digit'
                FailBlock: fb
            ].
            [in advance] untilFalse: [in peek isDigit].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: called when input stream is pointing to a dot
to scan the fractional part.
\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         scanFractionIfFail: fb = ( |
            | 
            in advance. "."
            [in peek isDigit] whileTrue: [
              in advance
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         sourceForSelf = ( |
             s.
            | 
            s: resend.sourceForSelf.
            "Self needs an initial 0"
            s first = '.' 
              ifTrue: ['0', s]
               False: [s]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'floatLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (0)'
        
         value <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: literals\x7fCategory: numbers\x7fCategory: integers\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         hexLiteral = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens hexLiteral.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (false)'
        
         isLong <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens hexLiteral parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         myDigits = ('0' asCharacterSet  =>  '9') + (('a' asCharacterSet  =>  'f') + ('A' asCharacterSet  =>  'F')).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'integerTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         sourceForSelf = ( |
            | 
            "remove 0x, add 16r"
            '16r', (resend.sourceForSelf copyFrom: 2)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'hexLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (0)'
        
         value <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         identifier = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens identifier.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens identifier parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: Advance lexer to first character after me.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         advancePastMeIfFail: fb = ( |
            | 
            in advance. "past 1st"
            [lyLettersOrDigits includes: in peekIfEOF: ' ']
              whileTrue: [in advance].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fComment: Called when the last character has been found.
(Input stream points to first character AFTER
this token.)
My job is to boil down the input characters of this
token as need be.
For instance, for an integer, I would calculate the
integer value from the characters.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         condenseValueIfFail: fb = ( |
             p.
             s.
            | 
            s: source.
            p: case if: [keywords        includes: s]  Then:  [lyParser lexer tokens keyword]
                  Else: [^ self].
            p copyFrom: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: character sets\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         initialCharacterSet = ( |
            | lyLetters).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyIdentifier = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         keywords = bootstrap setObjectAnnotationOf: ( (('arg')
	& ('break')
	& ('case')
	& ('continue')
	& ('default')
	& ('do')
	& ('else')
	& ('extends')
	& ('float')
	& ('for')
	& ('function')
	& ('if')
	& ('object')
	& ('return')
	& ('super')
	& ('switch')
	& ('this')
	& ('var')
	& ('while')) asSet) From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens identifier parent keywords.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: character sets\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         lyDigits = '0' asCharacterSet  =>  '9'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: character sets\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         lyLetters = (('a' asCharacterSet  =>  'z') + ('A' asCharacterSet  =>  'Z')) + ('_$' asCharacterSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'Category: character sets\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         lyLettersOrDigits = ('0' asCharacterSet  =>  '9') + ((('a' asCharacterSet  =>  'z') + ('A' asCharacterSet  =>  'Z')) + ('_$' asCharacterSet)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'identifier' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: pseudo-tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialDot = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens initialDot.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = '.' asCharacterSet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens initialDot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialDot' -> 'parent' -> () From: ( | {
         'Comment: Basic routine to scan this token.
On entry, the input stream is pointing at the first
character in this token, but we have already 
decided that this is the token to scan.
On exit, the input stream points to the first character
after this token.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         scanIfFail: fb = ( |
             c.
             proto.
            | 
            "really a more specific token"
            c: in peekSecond.
            c = '.' ifTrue: [
              "handle .. token"
              in advance.
              c: in peekSecond.
            ].
            proto: c isDigit ifTrue: [ lyParser lexer tokens floatLiteral ]
                              False: [ lyParser lexer tokens separator ].
            (proto copyFrom: self) scanIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: pseudo-tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialSlash = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'initialCharacterSet:' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens initialSlash.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet initialCharacterSet: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = '/' asCharacterSet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens initialSlash parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialSlash' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: Basic routine to scan this token.
On entry, the input stream is pointing at the first
character in this token, but we have already 
decided that this is the token to scan.
On exit, the input stream points to the first character
after this token.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         scanIfFail: fb = ( |
             c.
             proto.
            | 
            "really a more specific token"
            c: in peekSecond.
            proto:
              case if: [c = '*'] Then: [ lyParser lexer tokens traditionalComment ]
                   If: [c = '/'] Then: [ lyParser lexer tokens  singleLineComment ]
                                 Else: [ lyParser lexer tokens operator ].
            (proto copyFrom: self) scanIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: pseudo-tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialZero = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'initialCharacterSet:' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens initialZero.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet initialCharacterSet: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = '0' asCharacterSet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens initialZero parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'initialZero' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: Basic routine to scan this token.
On entry, the input stream is pointing at the first
character in this token, but we have already 
decided that this is the token to scan.
On exit, the input stream points to the first character
after this token.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         scanIfFail: fb = ( |
             adv <- 1.
             c.
             proto.
             xX = 'xX' asCharacterSet.
            | 
            "really a more specific token"
            c: in peekSecond.
            proto: 
             case if: [ c isDigit      ]  Then: [ lyParser lexer tokens octalLiteral ]
                  If: [ xX includes: c ]  Then: [ adv: 2.
                                                  lyParser lexer tokens hexLiteral   ]
                  If: [ c = '.'        ]  Then: [ lyParser lexer tokens floatLiteral ]
                                          Else: [ lyParser lexer tokens decimalLiteral   ].
            in advance: adv.
            (proto copyFrom: self) scanIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         keyword = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens keyword.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens keyword parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = ( |
            | 
            expressionStarters includes: source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         expressionStarters = [ | x =  ( bootstrap setObjectAnnotationOf: vector _Clone From: ( |
                     {} = 'ModuleInfo: Creator: globals lyParser lexer tokens keyword parent expressionStarters.
'.
                    | ) ) _Clone: 2 Filler: 0| 
             x _At: 0  Put: ().
             x _At: 1  Put: ().
             x] value.
        } | ) 

 ((bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent') \/-> 'expressionStarters') -> () _At: 0 Put: (
     'this')

 ((bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent') \/-> 'expressionStarters') -> () _At: 1 Put: (
     'super')

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyKeyword: k = ( |
            | 
            k = source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'keyword' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: literals\x7fCategory: numbers\x7fCategory: integers\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         octalLiteral = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens octalLiteral.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (false)'
        
         isLong <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens octalLiteral parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         myDigits = '0' asCharacterSet  =>  '7'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'integerTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> 'parent' -> () From: ( | {
         'Category: constructing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         sourceForSelf = ( |
            | 
            "remove 0, add 8r"
            '8r', (resend.sourceForSelf copyFrom: 1)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'octalLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (0)'
        
         value <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         operator = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens longestMatch copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> () From: ( |
             {} = 'Comment: Invented for Ly operators, 
I am a general token that matches
the longest matching element in \"legalOperators\"
where legalOperators is just a set of strings.
Send initializePrototype to me when my module is filed in.\x7fModuleInfo: Creator: globals lyParser lexer tokens operator.

CopyDowns:
globals parseKit lexer tokens longestMatch. copy 
SlotsToOmit: initialCharacterSet parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> () From: ( | {
         'Category: set-up\x7fComment: a set of characters that are permitted
to start this kind of token\x7fModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (parseKit characterSets empty)\x7fVisibility: public'
        
         initialCharacterSet <- bootstrap stub -> 'globals' -> 'parseKit' -> 'characterSets' -> 'empty' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens operator parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         assignmentOperators = bootstrap setObjectAnnotationOf: ( (('%=')
	& ('&=')
	& ('*=')
	& ('+=')
	& ('-=')
	& ('/=')
	& ('<<=')
	& ('=')
	& ('>>=')
	& ('>>>=')
	& ('^=')
	& ('|=')) asSet) From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens operator parent assignmentOperators.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         infixOperators = bootstrap setObjectAnnotationOf: ( (('!=')
	& ('%')
	& ('&&')
	& ('&')
	& ('*')
	& ('+')
	& ('-')
	& ('/')
	& ('<')
	& ('<<')
	& ('<=')
	& ('==')
	& ('>')
	& ('>=')
	& ('>>')
	& ('>>>')
	& ('^')
	& ('|')
	& ('||')) asSet) From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens operator parent infixOperators.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: set-up\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         initInitialCharacterSet = ( |
            | 
            resend.initInitialCharacterSet.
            "omit / so initialSlashToken can
             dispatch between me and comment tokens"
            initialCharacterSet: 
              initialCharacterSet - '/').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isColon = ( |
            | source = ':').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyAssignmentOperator = ( |
            | assignmentOperators includes: source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyInfixOperator = ( |
            | infixOperators includes: source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyOperator = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyOperator: op = ( |
            | source = op).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyPostfixOperator = ( |
            | postfixOperators includes: source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyPrefixOperator = ( |
            | prefixOperators includes: source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: set-up\x7fComment: I manually input a set from 3.12 of the JLS.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         legalOperators = bootstrap setObjectAnnotationOf: ( (('!')
	& ('!=')
	& ('%')
	& ('%=')
	& ('&&')
	& ('&')
	& ('&=')
	& ('*')
	& ('*=')
	& ('+')
	& ('++')
	& ('+=')
	& ('-')
	& ('--')
	& ('-=')
	& ('/')
	& ('/=')
	& (':')
	& ('<')
	& ('<<')
	& ('<<=')
	& ('<=')
	& ('=')
	& ('==')
	& ('>')
	& ('>=')
	& ('>>')
	& ('>>=')
	& ('>>>')
	& ('>>>=')
	& ('?')
	& ('^')
	& ('^=')
	& ('|')
	& ('|=')
	& ('||')
	& ('~')) asSet) From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens operator parent legalOperators.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'longestMatch' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         postfixOperators = [ | x =  ( bootstrap setObjectAnnotationOf: vector _Clone From: ( |
                     {} = 'ModuleInfo: Creator: globals lyParser lexer tokens operator parent postfixOperators.
'.
                    | ) ) _Clone: 1 Filler: 0| 
             x _At: 0  Put: ().
             x] value.
        } | ) 

 ((bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent') \/-> 'postfixOperators') -> () _At: 0 Put: (
     '++')

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'operator' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         prefixOperators = bootstrap setObjectAnnotationOf: ( (('!')
	& ('+')
	& ('++')
	& ('-')
	& ('~')) asSet) From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens operator parent prefixOperators.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         separator = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens separator.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = ',;()[]{}' asCharacterSet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens separator parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         couldStartLyExpression = ( |
            | source = '(').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isCloseParen = ( |
            | source = ')').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isComma = ( |
            | source = ',').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isDot = ( |
            | source = '.').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLyDotDot = ( |
            | 
            source = '..').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isLySeparator = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isOpenParen = ( |
            | source = '(').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isSemicolon = ( |
            | source = ';').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'separator' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         subtreeWithoutCurlies = ( |
            | 
            [todo cleanup "I don't think this belongs here. -- dmu 7/05"].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         singleLineComment = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens singleLineComment.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens singleLineComment parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: Advance lexer to first character after me.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         advancePastMeIfFail: fb = ( |
            | 
            [
              lyParser characterSets lineTerminators includes: in peekIfEOF: [^ self]
            ] whileFalse: [ in advance ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         contents = ( |
            | source copyFrom: 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isComment = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'singleLineComment' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: literals\x7fCategory: characters and strings\x7fComment: StringLiteral\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         stringLiteral = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'initialCharacterSet' From:
             bootstrap remove: 'initialCharacterSet:' From:
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens stringLiteral.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: initialCharacterSet initialCharacterSet: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> () From: ( | {
         'Category: change these for types of tokens\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         initialCharacterSet = '\"' asCharacterSet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens stringLiteral parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokenTraits' -> 'charAndStringTokens' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'stringLiteral' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (\'\')'
        
         value <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> () From: ( | {
         'Category: comments\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         traditionalComment = bootstrap define: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit lexer tokens token copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens traditionalComment.

CopyDowns:
globals parseKit lexer tokens token. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals lyParser lexer tokens traditionalComment parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fComment: Advance lexer to first character after me.\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         advancePastMeIfFail: fb = ( |
            | 
            in advance: 2. "pass /*"
            [
                 ('*' = (in peekIfEOF:       [^eofError: fb]))
              && ['/' = (in peekSecondIfEOF: [^eofError: fb])]
            ] whileFalse: [in advance].
            in advance: 2. "*/"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         contents = ( |
            | 
            source copyFrom: 2 UpTo: size - 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> 'parent' -> () From: ( | {
         'Category: scanning\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         eofError: fb = ( |
            | 
            illegalTokenReason: 'EOF in middle of /*...*/ comment'
              FailBlock: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isComment = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> 'lexer' -> 'tokens' -> 'traditionalComment' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'lexer' -> 'tokens' -> 'token' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'lyParser' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         lyLexer = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules lyLexer.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/lyParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            lyParser lexer tokens operator initializePrototype.
            lyParser lexer forceInit.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'lyLexer' -> () From: ( | {
         'ModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: public'
        
         isDotDot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: lyLexer InitialContents: FollowSlot\x7fVisibility: private'
        
         lyTests* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> 'lyTests' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals parseKit parseNodes node parent lyTests.
'.
            | ) .
        } | ) 



 '-- Side effects'

 globals modules lyLexer postFileIn
