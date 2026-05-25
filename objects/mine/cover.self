
applications _AddSlotsIfAbsent: ( | 
    cover = ().
    flag = ().
    counter = ().
| )

counter _Define: ( | 
    p* = traits clonable.
    value <- 0.
    reset = (value: 0).
    increment = (
	"use prim to avoid recursion"
	value: value _IntAdd: 1 IfFail: [value "peg at max"]).
    thisObjectPrints = true.
    printString = ('{', value printString, '}').
    storeStringIfFail: fb = ( 'counter copy value: ', value storeString).
| )

flag _Define: ( | 
    p* = traits clonable.
    value <- false.
    reset = (value: false).
      set = (value: true).
    thisObjectPrints = true.
    printString = ('{', value printString, '}').
    storeStringIfFail: fb = ( 'flag copy value: ', value storeString).
| )

cover _Define: ( |
    p* = traits clonable.
    insertCounters = (
	browse all do: [|:m|
	    m type = 'method' ifTrue: [addCounterTo: m].
	].
	self).

    test = (
	[
	    addCounterTo: (reflect: traits block) contentsAt: 'loop'.
	    ^ self.
	] loop).
	
		

    test1 = (
	testCoverageIn: ('smallInt.sm' & 'float.sm') asSet
	    With: [tests arithmeticTest]).
    test2 = (
	testCoverageIn: ('module.sm' & 'modules.sm' & 'fileOut.sm') asSet
	    With: [transporter fileOut visitAll]).
    test3 = (
	countIn: ('smallInt.sm' & 'float.sm') asSet
	    With: [tests arithmeticTest]).
    test4 = (
	countIn: ('annotation.sm' & 'slot.sm') asSet
	    With: [(reflect: defaultBehavior) asVector sort]).

    _ collectMethodsIn: ms  = (
	| meths|
	meths: list copyRemoveAll.
	ms do: [|:m|
	    meths addLast: m.
	    m allLiteralsDo: [|:lit. m|
		m: reflect: lit.
		m isReflecteeBlock ifTrue: [
		    meths addLast: m valueSlot contents.
		].
	    ].
	].
	meths).

    _ collectUncoveredMethod: m Into: meths = (
	m literals last value ifFalse: [
	    meths addLast: m
	] True: [
	    m literals do: [|:lit. m. |
		m: reflect: lit.
		m isReflecteeBlock ifTrue: [
		    collectUncoveredMethod: m valueSlot contents Into: meths
		].
	    ].
	].
	self).

  ^ countIn: files With: b = (
	| 
	  allMethods. sortedMethods.
	|
	allMethods: 
	    addUnaryMessage: (
	        message copy receiver: counter copy Selector: 'increment'
          ) ToFiles: files ThenDo: b.

	sortedMethods: allMethods copySortBy: ( |
	    element: e1 Precedes: e2 = (
		e1 literals last value > e2 literals last value).
	    | ).
	'\n\n invocation counts:\n\n' print.
	sortedMethods do: [|:m|
	    (
		m literals last value printString,
		    ' ', m file, ': ', m line printString
	    ) printLine.
	].
	self).

  _ addUnaryMessage: msg ToFiles: fileNames ThenDo: block = (
	"prepends msg to all methods in files (copying receiver),
	 runs block, and returns the methods"
	| 
	  outerMethods. allMethods. fset. methodsToExclude.
	|
	memory garbageCollect.
	fset: fileNames asSet.
	outerMethods: browse all filterBy: [|:m. |
	    (m type = 'method') && [fset includes: m file]
	] Into: list copyRemoveAll.

	allMethods: collectMethodsIn: outerMethods.
	(
	    'found ', allMethods size printString, ' methods, ', 
		outerMethods size printString, ' outer methods'
	) printLine.
	methodsToExclude: (
	    ((reflect: msg receiver) lookupKey: msg selector)
	      copyMappedBy: [|:s| s contents]
	) asSet.
        outerMethods: outerMethods filterBy: 
	    [|:m| (methodsToExclude includes: m) not].
	outerMethods do: [|:m|
	    m define: 
		addMessage:
		  (msg copy receiver: msg receiver copy)
		SourcePrefix: 
		  '("', 
		  msg receiver printString,
		  '") ', 
                  msg selector, 
                  '.\n'
		To: m.
	    '.' print.
	].
	('added ', msg printString) printLine.
	block value.

	allMethods: collectMethodsIn: outerMethods. "get revised blocks"
	allMethods).


  ^ testCoverageIn: files With: b = (
	| 
	  allMethods. coveredMethodCount. uncoveredCulledMethods. 
	|
	allMethods: 
	    addUnaryMessage: (
	        message copy receiver: flag copy Selector: 'set'
          ) ToFiles: files ThenDo: b.

	coveredMethodCount: 0. 
	allMethods do: [|:m| 
	    m literals last value ifTrue: [
		coveredMethodCount: coveredMethodCount succ.
	    ].
	].
	(
	    'Coverage = ', 
		((coveredMethodCount /= allMethods size) * 100) printString, 
		'%\n'
	) print.

	uncoveredCulledMethods: list copyRemoveAll.
	allMethods do: [|:m| 
	    m type = 'method'  ifTrue: [
		collectUncoveredMethod: m Into: uncoveredCulledMethods.
	    ].
	].
	'Never ran:\n' print.
	files asVector sort do: [|:f. mlines. blines|
	    mlines: list copyRemoveAll.
	    blines: list copyRemoveAll.
	    uncoveredCulledMethods do: [|:m| 
		m file = f ifTrue: [
		    (m isReflecteeBlockMethod ifTrue: [blines] False: [mlines])
			addLast: m line.
		].
	    ].
	    'methods:' printLine.
	    mlines asVector sort do: [|:n| (f, ': ', n printString) printLine].
	    'blocks:'  printLine.
	    blines asVector sort do: [|:n| (f, ': ', n printString) printLine].
	].
	self).
	

  _ addMessage: msg SourcePrefix: sourcePrefix To: m = (
	| oldLitSize. newLits. newCodes. newm. convertedLits |
	oldLitSize: m literals size.

	newLits: msg arguments copySize: msg arguments size + 2.
	newLits at: newLits size - 1  Put: msg receiver copy.
	newLits at: newLits size - 2  Put: msg selector.
	newCodes: list copyRemoveAll.

	newCodes addAll:
	    codeForOp: bytecodeFormat opcodes literal 
                Index: (newLits size - 1) + oldLitSize.
        msg arguments size do: [|:i|
	    newCodes addAll:
		codeForOp: bytecodeFormat opcodes literal Index: i + oldLitSize.
	].
	newCodes addAll:
	    codeForOp: bytecodeFormat opcodes send 
                Index: (newLits size - 2) + oldLitSize.

	convertedLits: m literals copyMappedBy: [|:lit. m|
	    m: reflect: lit.
	    m isReflecteeBlock ifFalse: [lit] True: [
		(
		    m copySetMethod: 
			addMessage: msg
			    SourcePrefix: sourcePrefix
			        To: m valueSlot contents
		) reflectee
	    ]
	].
	newm:
	    m copyBytecodes: newCodes asByteVector, m codes
	    Literals: convertedLits, newLits
	    File: m file
	    Line: m line
	    Source: sourcePrefix, m source.
	newm: newm copyAddSlots: m.
	"(m file, ': ', m line printString) printLine."
	newm).

    _ codeForOp: opArg Index: index = (
	| r. i. op. |
	r: list copyRemoveAll.
	i: index.
	op: opArg.
	[
	    r addFirst: bytecodeFormat opcode: op Index: i && bytecodeFormat indexMask.
	    i: i >> bytecodeFormat indexBitSize.
	    0 = i ifTrue: [^ r asByteVector].
	    op: bytecodeFormat opcodes index.
	] loop).
| )

globals modules raw _AddSlotsIfAbsent: (| cover = () | )

globals modules raw cover _AddSlots: ( |
       parent* = lobby.
       contents = '
	 globals applications cover
	 globals applications flag
	 globals applications counter
	 '.
       revision = 'Sun-$Revision: 30.1    | )
