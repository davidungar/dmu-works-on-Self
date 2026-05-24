"$Revision: 30.1 $"
"all tokeizers must acceppt processToken to term current one
fix handling of octal, hex"
"stdize warnings, compte number value in tokenizer"

prototypes  applications _AddSlotsIfAbsent: ( | cpp = () | )
traits      applications _AddSlotsIfAbsent: ( | cpp = () | )

prototypes  applications cpp _AddSlotsIfAbsent: ( | 
    stages     = ().
    tokenizers = ().
    tokens     = ().
"xxx" test = (stages main test).
| )
traits      applications cpp _AddSlotsIfAbsent: ( | 
    stages     = ().
    tokenizers = ().
    tokens     = ().
| )

traits cpp stages _AddSlotsIfAbsent: ( |
         stage                 = ().
         abstractSource        = ().
         source                = ().
         abstractSink          = ().
         sink                  = ().
         filter                = ().
         fileReader            = ().
         fileWriter            = ().
         main                  = ().
         charsToTokens         = ().
         trigraphExpander      = ().
         escapedNewlineDeleter = ().
         charCatcher	       = ().
	 whiteFilter	       = ().
| )

prototypes cpp  stages _AddSlotsIfAbsent: ( |
         endCap		       = ().
         source		       = ().
         sink		       = ().
         filter		       = ().
         fileReader	       = ().
         fileWriter	       = ().
         main		       = ().
         charsToTokens         = ().
         trigraphExpander      = ().
         escapedNewlineDeleter = ().
         charCatcher	       = ().
	 whiteFilter	       = ().
| )

cpp stages _AddSlotsIfAbsent: ( |
         endCap = ().
| )

cpp stages endCap _Define: ( |
    parent* = traits oddball.
    input     = (self).
    output    = (self).
    input:  i = (self).
    output: o = (self).
| )

traits cpp stages stage _Define: ( |
    parent*     = traits clonable.
    names*      = cpp.
    stageNames* = cpp stages.
| )

traits cpp stages abstractSource _Define: ( |
    parent* = traits cpp stages stage.

    run                = (output run.                 self).
    put:  c            = (output process: c.          self).
    putc: c            = (put: c first). "convert to char so isDigit works"
    process: c         = (put: c.                     self).
    eof                = (output eof.		      self).
    finish             = (output finish.              self).
    outputFileName: fn = (output outputFileName: fn.  self).

    -> f = (f insertAfter: self Before: output).
| )

traits cpp stages source _Define: ( |
    parent*          = traits cpp stages abstractSource.
    run              = (output run finish.  self).
| )
        
cpp stages source _Define: ( |
    parent* = traits cpp stages source.
    output <- cpp stages endCap.
| )

traits cpp stages abstractSink _Define: ( |
    parent* = traits cpp stages stage.

    beFirstTokenizer: s = (s bypass.  -> s.  self).


    inputFileName      = (input inputFileName).
    inputLineNumber    = (input inputLineNumber).
| )

traits cpp stages sink _Define: ( |
    parent*            = traits cpp stages abstractSink.

    run                = (self).
    eof		       = (self).
    finish             = (self).

    outputFileName: fn = (input -> (fileWriter copy open: fn)).

    insertAfter: i Before: o = (
	i output: self.
	input: i).
| )
        
cpp stages sink  _Define: ( |
    parent* = traits cpp stages sink.
    input <- cpp stages endCap.
| )

traits cpp stages filter _Define: ( |
    sourcing*  = traits cpp  stages abstractSource.
    sinking*   = traits cpp  stages abstractSink.

    insertAfter: i Before: o = (
           input: i.
          output: o.
        i output: self.
        o  input: self.
        self).

    bypass = (
         input  output: output.
        output   input:  input.
        self).
| )


cpp stages filter _Define: ( |
    parent* = traits cpp stages filter.            
  
    input  <- cpp stages endCap.
    output <- cpp stages endCap.
| )


traits cpp stages fileReader _Define: ( |
    parent* = traits cpp stages filter.

    inputFileName     = ( file name).
    inputLineNumber   = ( lineNumber).

    open: fn = ( file: os_file openForReading: fn).

    process: inc = ( run.  put: inc).

    run = (
        [file atEOF] whileFalse: [ | s |
            s: file read.
	    s do: [|:c|
                put: c.
        	c = '\n' ifTrue: [lineNumber: lineNumber + 1].
            ].
        ].
        file close.
        bypass.
        self).
| )

cpp stages fileReader _Define: cpp stages filter copy _AddSlots: ( |
    parent*    =  traits cpp stages fileReader.
  _ file       <- os_file.
    lineNumber <- 1.
| )

traits cpp stages fileWriter _Define: ( |
    parent* = traits cpp stages filter.

    fileName     = ( file name).
    open: fn     = ( file: os_file openForWriting: fn).

    process: c = ( file write: c printString, '\n'.  self).
    finish     = ( file close.  output finish.  self).
| )

cpp stages fileWriter _Define: cpp stages filter copy _AddSlots: ( |
    parent* = traits cpp stages fileWriter.

  _ file       <- os_file.
| )


traits cpp stages main _Define: ( |
    parent* = traits cpp stages source.

    readFileNamed: rn WriteFileNamed: wn = (
        makePipe.
        -> (fileReader copy open: rn).
        outputFileName: wn.
        run).

  _ makePipe = (
       -> trigraphExpander       copy 
       -> escapedNewlineDeleter  copy
       -> charsToTokens          copy
       -> tokenizers comment     copy 
       -> tokenizers charConst   copy 
       -> tokenizers stringLit   copy 
       -> tokenizers whiteSpace  copy   "an optimization"
       -> tokenizers identifier  copy   "treat keywords as identifiers"
       -> tokenizers operator    copy 
       -> tokenizers integer     copy 
       -> tokenizers float       copy 
       -> charCatcher            copy  "tokens from now on"

       -> whiteFilter            copy    


       -> sink                   copy.
       self).

    test = (
        copy readFileNamed: 'testfile.h' WriteFileNamed: 'out').
| )

cpp stages main _Define: cpp stages source copy _AddSlots: ( |
    parent* = traits cpp stages main.
| )


traits cpp stages trigraphExpander _Define: ( |
    parent* = traits cpp stages filter.

    noQ = ( |
        process: c = ( state:  c = '?'  ifTrue: [oneQ] False: [put: c.  noQ]).
    | ).
    oneQ = ( |
        eof  = (putc: '?'.  state: noQ.  eof).
        process: c = (
           state:  c = '?'  ifTrue: [twoQ] False: [putc: '?'.  put: c.  noQ]).
    | ).
    twoQ = ( |
        eof =  (putc: '?'.  state: oneQ.  eof).
        process: c = (
            (trigraphs includesKey: c) ifTrue: [
                putc: trigraphs at: c.
                state: noQ.
            ] False: [
                putc: '?'.  " dump first '?'"
                state: oneQ.        " c might be a '?'"
                process: c.
            ]).
    | ).
                 
  _ trigraphs = ((((((((( dictionary copyRemoveAll 
                   at: '='  Put: '#' )
                   at: '/'  Put: '\\')
                   at: '\'' Put: '^' )
                   at: '('  Put: '[' )
                   at: ')'  Put: ']' )
                   at: '!'  Put: '|' )
                   at: '<'  Put: '{' )
                   at: '>'  Put: '}' )
                   at: '-'  Put: '~' ).
| )

cpp stages trigraphExpander _Define: cpp stages filter copy _AddSlots: ( |
    parent** =  traits cpp stages trigraphExpander.
  _ state*   <- traits cpp stages trigraphExpander noQ.
| )

traits cpp stages escapedNewlineDeleter _Define: ( |
    parent* = traits cpp stages filter.

    noB = ( |
      process: c = (
          state:  c = '\\'  ifTrue: [b] False: [put: c.  noB]).
    | ).
    b = ( |
      eof = (putc: '\\'.   state: noB.  eof).
      process: c = (
          c = '\n' ifTrue: [state: noB] False: [
              putc: '\\'.  
	      state: noB.
	      process: c]).
    | ).
| )

cpp stages escapedNewlineDeleter _Define: cpp stages filter copy _AddSlots: ( |
    parent** =  traits cpp stages escapedNewlineDeleter.
    state*   <- traits cpp stages escapedNewlineDeleter noB.
| )

traits cpp stages charsToTokens _Define: ( |
    parent* = traits cpp stages filter.

    process: c = (
        put: (
	        c = '\n' ifTrue: [tokens newline]  False: [tokens char]
	     ) copy source: c).
| )

cpp stages charsToTokens _Define: cpp stages filter copy _AddSlots: ( |
    parent* =  traits cpp stages charsToTokens.
| )

traits cpp stages charCatcher _Define: ( |
    parent* = traits cpp stages filter.

    process: c = (
	c isCharToken ifFalse: [put: c] True: [
            warning: 'illegal character <', c source, '> ', 
	        inputFileName, ': ', inputLineNumber printString]).
| )

cpp stages charCatcher _Define: cpp stages filter copy _AddSlots: ( |
    parent* =  traits cpp stages charCatcher.
| )

"xxx"
traits cpp stages whiteFilter _Define: ( |
    parent* = traits cpp stages filter.

    processToken: c = (c isWhiteSpace ifFalse: [put: c].  self).
| )

cpp stages whiteFilter _Define: cpp stages filter copy _AddSlots: ( |
    parent* =  traits cpp stages whiteFilter.
| )

"========================================================="

traits cpp tokenizers _AddSlotsIfAbsent: ( |
  tokenizer = ().
    comment      = ().
    charOrString = ().
    whiteSpace	 = ().
    identifier = ().
    operator   = ().
    integer    = ().
    float      = ().
| )

cpp tokenizers _AddSlotsIfAbsent: ( |
  tokenizer = ().
    comment    = ().
    charConst  = ().
    stringLit  = ().
    whiteSpace	 = ().
    identifier = ().
    operator   = ().
    integer    = ().
    float      = ().
| )

traits cpp tokenizers tokenizer _Define: ( |
    parent*    = traits cpp stages filter.

    " overriden "

    beFirstTokenizer: s = (input beFirstTokenizer: s.  self).

    "to be used"

    beFirst = ( beFirstTokenizer: self ).

    reset    = (storedTokens removeAll.  state: init).
    >> t     = (storedTokens: storedTokens addLast: t source).
    flush    = (storedTokens do: [|:t| put: t].  reset).


    buildToken     = (tokenProto copy source: storedTokens asString).

    putToken     = (
        put: buildToken.
	reset).


    eofFlush = ( flush.     reset.  out eof ).
    eofToken = ( putToken.  reset.  out eof ).
    eofError = ( eofWarn.   reset.  out eof ).

    eofWarn = (
            warning: inputFileName, ' ends in the midst of a ', 
		     tokenProto tokenType,  ' token'.).

    " to be overridden"

    tokenProto = (tokens token).
| )

cpp tokenizers tokenizer _Define: cpp stages filter copy _AddSlots: ( |
    parent** =  traits cpp tokenizers tokenizer.
    storedTokens     <- list copyRemoveAll.
    state* <- ().
| )

traits cpp tokenizers comment _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    tokenProto = (tokens comment).

    init = ( |
	process: c = (
	    c = '/'  ifFalse:  [put: c]  
	                True:  [
		beFirst.
                >> c.
		state:  slash]).
    | ).
    slash = ( |
	eof = (eofFlush).
	process: c = (
	    c = '*' ifTrue: [>> c.  state: slashStar ]  False: [
            c = '/' ifTrue: [>> c.  state: slashSlash]  False: [
	                     flush.  process: c]]).
    | ).
    slashStar = ( |
        eof = (eofError).
        process: c = ( >> c.  c = '*'  ifTrue: [state: star2].  self).
    | ).
    slashSlash = ( |
        eof = (eofToken).
        process: c = ( >> c.  c = '\n'  ifTrue:  [putToken].  self).
    | ).
    star2 = ( |
        eof = (eofError).
        process: c = ( 
	    c = '/'  ifFalse: [ state: slashStar.  process: c] 
                        True: [ >> c.		  putToken  ]).
    | ).
| )

cpp tokenizers comment _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers comment.
    state*   <- traits cpp tokenizers comment init.
| )

traits cpp tokenizers charOrString _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    init = ( |
	process: c = (
	    c = singleOrDouble ifFalse:  [put: c]   True:  [
		beFirst.
		>> c.
		state: quote]).
    | ).
    quote = ( |
        eof = (eofError).
	process: c = (
            >> c.
 	    c = singleOrDouble  ifTrue: [^putToken].
            c = '\\'            ifTrue: [^state: backSl].
	    self).
    | ).
    backSl = ( |
        eof = (eofError).
        process: c = ( >> c.  state: quote).
    | ).
| )

cpp tokenizers charConst _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers charOrString.
    state*   <- traits cpp tokenizers charOrString init.
    singleOrDouble = '\''.
    tokenProto = (tokens charConst).
| )
      		
cpp tokenizers stringLit _Define: cpp tokenizers charConst copy _AddSlots: ( |
    singleOrDouble = '"'.
    tokenProto = (tokens stringLit).
| )
      		
traits cpp tokenizers whiteSpace _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    tokenProto = (tokens whiteSpace).

    process: c = (
         (' \t\v\f' includes: c) ifTrue: [processWhite: c] 
                                  False: [processBlack: c]).
    init = ( |
         processWhite: c = ( >> c.  state: white).
	 processBlack: c = ( put: c).
    | ).
    white = ( |
        eof = (eofToken).
        processWhite: c = ( >> c).
        processBlack: c = (putToken.  process: c).
    | ).
| )

cpp tokenizers whiteSpace _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers whiteSpace.
    state*   <- traits cpp tokenizers whiteSpace init.
| )

traits cpp tokenizers identifier _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    tokenProto = (tokens identifier).

    init = ( |
        process: c = (
            c isLetter || [c = '_'] ifFalse: [ put: c] 
				       True: [ >>   c.  state: letterOrDig]).
    | ).
    letterOrDig = ( |
        eof = (eofToken).
        process: c = (
            c isLetter || [(c = '_')  ||  c isDigit]
	      ifTrue:  [ >> c]  False:  [putToken.  process: c]).
    | ).
| )

cpp tokenizers identifier _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers identifier.
    state*   <- traits cpp tokenizers identifier init.
| )


traits cpp tokenizers operator _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    tokenProto = (tokens operator).

    " from the book: "
  _ singles = '! % ^ & * ( ) - + = { } | ~ [ ] \\ ; : " < > ? , . / #'.
  _ doubles = '-> ++ -- .* << >> <= >= == != && || *= /= %= += -= &= ^= |= :: ##'.
  _ triples = '->* <<= >>='.

    "iterate over a string of ops"
  _ do: b String: s By: len = (| i <- 0 |
	[i  <=  (s size - len succ)] whileTrue: [| op <- '' |
	    len do: [|:j| op: op, (s at: i + j)].
	    b value: op asString.
	    i: i + len succ.
        ].
	self).

  _ doSingles: b = (do: b String: singles By: 1).
  _ doDoubles: b = (do: b String: doubles By: 2).
  _ doTriples: b = (do: b String: triples By: 3).

    singleSet = set copyRemoveAll.
    doubleSet = set copyRemoveAll.
    tripleSet = set copyRemoveAll.

    maybe2Or3 = set copyRemoveAll. "first char of 2s and 3s"
    maybe3    = set copyRemoveAll. "first 2 chars of 3s"

    initialize = (
	doSingles: [|:op| singleSet add: op].
	doDoubles: [|:op| doubleSet add: op.  maybe2Or3 add: op first.].
	doTriples: [|:op| tripleSet add: op.  maybe2Or3 add: op first.
		          		      maybe3    add: op copyWithoutLast].
    ).
| ) initialize    



traits cpp tokenizers operator _AddSlots: ( |
    init = ( |
        process: c = ( | src |
            >> c.
	    src: storedTokens asString.
	    (maybe2Or3 includes: src) ifTrue: [ ^ state: one ].
	    (singleSet includes: src) ifTrue: [ ^ putToken ].
            storedTokens removeAll.
	    put: c).
    | ).
    one = ( |
        eof = (eofToken).

        process: c = ( | src <- '' |
	    >> c.
	    src: storedTokens asString.

	    (maybe3    includes: src) ifTrue: [ ^ state: two ].
	    (doubleSet includes: src) ifTrue: [ ^ putToken ].

	    storedTokens removeLast.
            (singleSet includes: src copyWithoutLast) 
		ifTrue: [putToken] False: [flush].
	    process: c).
    | ).
    two = ( |
        eof = (eofToken).

	process: c = ( | src <- ''. b |
	    >> c.
	    src: storedTokens asString.

 	    (tripleSet includes: src) ifTrue: [ ^ putToken ].
	    storedTokens removeLast.
	    (doubleSet includes: storedTokens asString)  ifTrue: [
	        putToken.
	      ^ process: c.
            ].
	    b: storedTokens removeLast.
	    (singleSet includes: storedTokens asString) ifTrue: [
		putToken.
	        process: b.
	      ^ process: c.
            ].
	    flush).
    | ).
| ) 

cpp tokenizers operator _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers operator.
    state*   <- traits cpp tokenizers operator init.
| )

traits cpp tokenizers integer _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    buildToken = (result source: storedTokens asString).

    init = ( |
        process: c = (
            c isDigit  ifFalse: [ ^put: c ].

	    result: tokens integer copy.
	    c = '0'    ifTrue:  [ 
	        >> c.
		state: leadingZero.
            ] False: [ 
	        state: digit.
                process: c]).
    | ).
    leadingZero = ( |
        eof = (eofToken).

        process: c = (
	    c uncapitalize = 'x' ifTrue: [ 
	        >> c.  
		result beHex.
	     ^ state: digit].
       
	    c isDigit ifFalse: [ putToken. ^ put: c].

	    result beOctal.
	    state: digit.
	    c ifOctalDigit: [
	        process: c
	    ] Else: [
	        warning: 'bad digit in octal number'.
		>> c.
            ]).
    | ).
    digit = ( |
        eof = (eofToken).

        process: c = (
            result append: c IfDigit: [ >> c ] 
	                        Else: [ state: noSuffix.  process: c]).
    | ).
    noSuffix = ( |
        eof = (eofToken).

	process: c = (
            c uncapitalize = 'l'  ifTrue: [ >> c.  result beLong. ^state: long].
            c uncapitalize = 'u'  ifTrue: [ >> c.  result beUns.  ^state: uns ].
	    putToken).
    | ).
    long = ( |
        eof = (eofToken).
	process: c = (
            c uncapitalize = 'u'  ifTrue: [ >> c.  result beUns].
	    putToken).
    | ).
    uns = ( |
        eof = (eofToken).
	process: c = (
            c uncapitalize = 'l'  ifTrue: [ >> c.  result beLong].
	    putToken).
    | ).
| )

cpp tokenizers integer _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers integer.
    state*     <- traits cpp tokenizers integer init.
    result     <- nil. "cpp tokens integer."
| )

traits cpp tokenizers float _Define: ( |
    parent* = traits cpp tokenizers tokenizer.

    buildToken = (result source: storedTokens asString).

    init = ( |
        process: c = (
	    c = '.'  ifTrue: [
	        result: tokens float copy.
	        >> c.
	      ^ state: nakedPoint.
            ].
            c couldBePartOfFloat ifFalse: [^put: c].
	    >> c.
	    result: tokens float copy value: c value asFloat.
	    state: intPart).
    | ).
    nakedPoint = ( |
        eof = (eofError).

        process: c = ( | f <- 0.0 |
            c couldBePartOfFloat ifFalse: [
	        warning: 'naked period found'.
	        flush.
            ] True: [ state: point ].
	    process: c).
    | ).
    intPart = ( |
	eof = (eofFlush).

        process: c = (
            c              = '.'  ifTrue: [  >> c.  ^ state: point].
	    c uncapitalize = 'e'  ifTrue: [  >> c.  ^ state: e].
            flush).
    | ).
    point = ( |
	eof = (eofToken).

        process: c = (	
	    c couldBePartOfFloat ifFalse: [putToken.  ^ process: c].
	    >> c.
	    c source reverseDo: [| :d | 
		f: (f /= 10.0) + (d asByte - '0' asByte)
	    ].
  	    result value: result value + f.
	    state: fract).
    | ).
    fract = ( |
	eof = (eofToken).

        process: c = (
	    c uncapitalize = 'e'  ifFalse: [state: exp.  ^ process: c].
	    >> c.
	    state: e).
    | ).
    e = ( |
        eof = (eofError).

        process: c = (
	    c = '-' ifTrue: [signOfExp: -1.  >> c.  ^ state: eSign].
	    signOfExp: 1.
            state: eSign.
	    process: c).
    | ).
    eSign = ( |
	eof = (eofError).
	process: c = (
	    c couldBePartOfFloat ifFalse: [
		warning: 'no exponent after e'.
	        putToken.
	      ^ process: c.
            ].
	    >> c.
	    result value: result value * (10 power: (signOfExp * c value)).
	    state: exp).
    | ).
    exp = ( |
        eof = (eofToken).

	process: c = (
            c uncapitalize = 'l'  ifTrue: [ >> c. result beLong.   ^ putToken].
            c uncapitalize = 'f'  ifTrue: [ >> c. result beSingle. ^ putToken].
	    putToken.
	    process: c).
    | ).
| )

cpp tokenizers float _Define: cpp tokenizers tokenizer copy _AddSlots: ( |
    parent** =  traits cpp tokenizers float.
    state*     <- traits cpp tokenizers float init.
    result     <- nil. "cpp tokens float."
    signOfExp  <- 1.
| )

"==================================================="

traits cpp tokens _AddSlotsIfAbsent: ( |
   token       = ().
    char       = ().
    comment    = ().
    charConst  = ().
    stringLit  = ().
    whiteSpace = ().
    identifier = ().
    operator   = ().
    newline    = ().
    integer    = ().
    float      = ().
| )

cpp tokens _AddSlotsIfAbsent: ( |
  token       = ().
    char       = ().
    comment   = ().
    charConst = ().
    stringLit  = ().
    whiteSpace = ().
    identifier = ().
    operator   = ().
    newline    = ().
    integer    = ().
    float      = ().
| )


traits cpp tokens token _Define: ( |
    parent** = traits clonable.
    names**  = cpp.

    printString = (tokenType, '(', source, ')').
    tokenType = 'token'.
    isWhiteSpace = false.
    isCharToken = false.

    couldBePartOfFloat = false.
| )

cpp tokens token _Define: ( |
    parent* = traits cpp tokens token.
    source <- ''.
  _ thisObjectPrints = true.
| )

traits cpp tokens char _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'char'.
    isCharToken = true.

    isDigit = (source isDigit).

    ifOctalDigit: db Else: eb = (
        ('0' <= source)  &&  [source <= '7']  ifFalse: eb  True: [
	    db value: source asByte - '0' asByte]).

    ifDecimalDigit: db Else: eb = (
        source isDigit  ifFalse: eb  True: [
	    db value: source asByte - '0' asByte]).

    ifHexDigit: db Else: eb = (
        source isDigit ifTrue: [^db value: source asByte - '0' asByte].
        ('a' <= source)  &&  [source <= 'f']  ifTrue: [
	    ^db value: (source asByte - 'a' asByte)  +  10
        ].
        ('A' <= source)  &&  [source <= 'F']  ifTrue: [
	    ^db value: (source asByte - 'F' asByte)  +  10
        ].
	eb value).

    isLetter = (source isLetter).
    asByte = (source asByte).
    uncapitalize = (source uncapitalize).
    compare: x IfLess: lt Equal: e Greater: g Incomparable: i = (
        source compare: x IfLess: lt Equal: e Greater: g Incomparable: i).
| )

cpp tokens char _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens char.
| )

traits cpp tokens comment _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'comment'.
| )

cpp tokens comment _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens comment.
| )

traits cpp tokens charConst _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'charConst'.
| )

cpp tokens charConst _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens charConst.
| )

traits cpp tokens stringLit _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'stringLit'.
| )

cpp tokens stringLit _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens stringLit.
| )

traits cpp tokens whiteSpace _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'whiteSpace'.
    isWhiteSpace = true.
| )

cpp tokens whiteSpace _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens whiteSpace.
| )

traits cpp tokens identifier _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'identifier'.
| )

cpp tokens identifier _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens identifier.
| )

traits cpp tokens operator _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'operator'.
| )

cpp tokens operator _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens operator.
| )

traits cpp tokens newline _Define: ( |
    parent* = traits cpp tokens token.
    tokenType = 'newline'.
    copy = (self).
    printString = ('newline()').
| )

cpp tokens newline _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens newline.
| )

traits cpp tokens integer _Define: ( |
    parent* = traits cpp tokens token.

    octal = ( |
        tokenType = ('octal').
	base = 8.
      _ if: t IsDigit: db Else: eb = (t ifOctalDigit: db Else: eb).
    | ).
    decimal = ( |
        tokenType = ('decimal').
	base = 10.
      _ if: t IsDigit: db Else: eb = (t ifDecimalDigit: db Else: eb).

        couldBePartOfFloat = (isLong not && [isSigned]).
    | ).
    hex = ( |
        tokenType = ('hex').
	base = 16.
      _ if: t IsDigit: db Else: eb = (t ifHexDigit: db Else: eb).
    | ).

    beOctal   = (baseP: octal).
    beDecimal = (baseP: decimal).
    beHex     = (baseP: hex).

    beLong = ( isLong:  true).
    beUns  = ( isSigned: false).

    append: t IfDigit: tb Else: fb = (
       if: t IsDigit: [|:i| value: (value * base) + i.  tb value]
                Else: fb).
| )


cpp tokens integer _Define: ( |
    parent** = traits cpp tokens integer. "priorities for couldBePartOfFloat"
    baseP* <- ().
    value <- 0.
    isLong <- false.
    isSigned <- true.
| )

traits cpp tokens float _Define: ( |
    parent* = traits cpp tokens token.
    beLong = (isLong: true).
    beSingle = (isSingle: true).
| )

cpp tokens float _Define: cpp tokens token copy _AddSlots: ( |
    parent* = traits cpp tokens float.

    value <- 0.0.
    isSingle <- false.
    isLong  <- false.
| )

"cpp stages main test"


