"Sun-$Revision: 30.1 $"

"Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

  "traits <system> mirror"
  "Behavior for reflection objects."
  "Mirrors behave like vectors of slots."

  "<prototypes mirrors> activation, assignment, block, byteVector,
   method, mirror, smallInt, float, process, slots,
   canonicalString, vector"
  "Prototypical reflection objects."

traits system _AddSlotsIfAbsent: ( | ^ mirror = () | )
traits mirror _Define: ( |
    _ parent**		= traits clonable.
    _ collectionness***	= traits indexable.

    _ testing* = ( |
	^ isReflecteeActivation = false.
	^ isReflecteeAssignment = false.
	^ isReflecteeBlock      = false.
	^ isReflecteeByteVector = false.
	^ isReflecteeFloat      = false.
	^ isReflecteeInteger    = false.
	^ isReflecteeMethod     = false.
	^ isReflecteeMirror	= false.
	^ isReflecteeProcess    = false.
	^ isReflecteeSlots      = false.
	^ isReflecteeString     = false.
	^ isReflecteeVector     = false.
	^ isReflecteeVectorish	= false.
    | ).

    _ accessing* = ( |
	_ primitives* = ( |
	    ^ reflectee = ( _MirrorReflectee ). "object reflected by me"
	    ^ size  = ( _MirrorSize ).     "# of slots in the mirrored object"
            ^ sizeWithFakeSlots = (size + fakeSlotsSize).

	    _ primitiveFailedError: error Name: name Resend: db = (
		primitiveFailedError: error Name: name ).

	    ^ nameAt: i = (
	        _MirrorNameAt: i IfFail: [ | :error. :name. |
		    primitiveFailedError: error Name: name
 		      Resend: [ nameAt: i ] ] ).
	    ^ contentsAt: i = (
	        _MirrorContentsAt: i IfFail: [ | :error. :name. |
		    primitiveFailedError: error Name: name
		      Resend: [ contentsAt: i ] ] ).
	    ^ isParentAt: i = (
	        _MirrorIsParentAt: i IfFail: [ | :error. :name. |
		    primitiveFailedError: error Name: name
		      Resend: [ isParentAt: i ] ] ).
	    ^ isAssignableAt: i = (
	        _MirrorIsAssignableAt: i IfFail: [ | :error. :name. |
		    primitiveFailedError: error Name: name
		      Resend: [ isAssignableAt: i ] ] ).
	    ^ isArgumentAt: i = (
	        _MirrorIsArgumentAt: i IfFail: [ | :error. :name. |
		    primitiveFailedError: error Name: name
		      Resend: [ isArgumentAt: i ] ] ).
	    ^ parentPriorityAt: i = (
	        _MirrorParentGroupAt: i IfFail: [ | :error. :name. |
		    ('reflectTypeError' isPrefixOf: error) ifTrue: [ ^ 0 ].
		    primitiveFailedError: error Name: name
		      Resend: [ parentPriorityAt: i ] ] ).
	    ^ visibilityAt: i = (
	        _MirrorVisibilityAt: i 
			  IfPrivate: privateSlot
			   IfPublic: publicSlot
		       IfUndeclared: undeclaredSlot
		             IfFail: [ | :error. :name. |
				       primitiveFailedError: error Name: name
				       Resend: [ visibilityAt: i ] ] ).
	| ).

	_ slotAccess* = ( |
	    ^ slotAt: i = (
		| comment = 'return a slot object for slot i' |
		(slotProtoFor: i) copyMirror: self Index: i).

	    ^ slotNamed: n = (
	        slotNamed: n IfAbsent: [error: 'slot ', n, ' is absent'] ).
	    ^ slotNamed: n IfAbsent: block = (
		slotAt: indexOfName: n IfAbsent: [ 
		    "Ugh, a hack! -- dmu"
		    "helps out the UI, but we may have to rethink fake slots"
		    fakeSlotsDo: [|:fs| fs name = n ifTrue: [^fs]].
		    ^ block value 
                ] ).

	    ^ indexOfName: n = (
	        indexOfName: n IfAbsent: [ error: 'slot ', n, ' is absent' ] ).

	    ^ indexOfName: n IfAbsent: block = (
		size do: [ | :i | (nameAt: i) = n ifTrue: [ ^ i ]].
		block value ).

	    ^ at: i = (slotAt: i).

	    _ slotProtoFor: i = (
		(isArgumentAt: i) ifTrue: [slots argument] False: [
		(isParentAt:   i) ifTrue: [slots parent  ] False: [
		((contentsAt:  i) isReflecteeMethod)
		    ifTrue: [slots method] False: [slots plain]]]).

	    ^ includesName: name = (
		indexOfName: name IfAbsent: [ ^false ].
		true ).

	    ^ arguments = (
		| comment = 'returns names of arguments'.  r <-  list |
		r: r copy.
		size do: [| :i |
		    (isArgumentAt: i) ifTrue: [r addLast: nameAt: i].
		].
		r).
	| ).
    | ).

    _ comparing* = ( |
	^ comment =
('Two different mirrors on the same object are indistinguishable; that
is, they are both == and = to each other. The hash of a mirror is the
identity hash of its reflectee.').

	^ == x  = ( _MirrorReflecteeEq: x IfFail: false ).
	^ = x   = ( == x ).
	^ hash  = ( _MirrorReflecteeIdentityHash ).
    | ).

    _ iterating* = ( |
	^ parentGroupsDo: block = (
	  | comment = 'iterate over each parent priority group, exploiting the fact that slots are sorted'.
	    pri <- -1.
	    group <- dictionary.
	  | 
	    group: group copy.
	    size do: [ | :i |
		(isParentAt: i) ifFalse: [
		    group isEmpty ifFalse: block value: group. ^ self
		].
		pri = (parentPriorityAt: i) ifFalse: [
		    "have accumulated all parents at pri"
		    group isEmpty ifFalse: [
			"process this group and start empty"
			block value: group.
			group: dictionary copy. ].
		    pri: parentPriorityAt: i. ].
		group at: (nameAt: i) Put:  contentsAt: i].
	    group isEmpty ifFalse: block value: group. self).

	^ fakeSlotsDo: block = ( self ).
	^ fakeSlotsSize = 0.
	^ allLiteralsDo: b = ( self ).
        ^ messagesDo: b = (self).
        ^ messages = (|s <- set|  s: s copy.  messagesDo: [|:m| s add: m].  s).

	^ namesDo: block = (
	   size do: [ | :i | block value: nameAt: i ] ).
    | ).

    _ printing* = ( |
	_ parent* = mixins printing.

	_ defaultPrintDepth = 1.
	_ mirrorPrefix = 'mirror on ('.

	^ printStringSize: s Depth: d = (
	    (d > 0) && (s > mirrorPrefix size) ifFalse: [
		^ 'a mirror' copyAtMostWithEllipsis: s ].
	    mirrorPrefix,
	    (nameSize: s - (mirrorPrefix size + 1) Depth: d pred),
	    ')' ).
    | ).

    _ naming* = ( |
	^ safeName = ( pathCache safeNameForReflectee: self ).
	^ safeNameSize: s = ( safeName copyAtMostWithEllipsis: s ).

         ^ id = (reflectee _ObjectID).
         ^ idAndName = ( idAndNameSize: infinity ).
         ^ idAndNameSize: size = (
              | string <- ''. padSize = 3. leftParen = '<'. rightParen = '>' |
                   isReflecteeInteger 
              || [ isReflecteeFloat   ] ifTrue: [ ^reflectee printString ].
                   isReflecteeString    ifTrue: [ ^nameSize: size max: 7 ].
              string: id printString.
              (string size + padSize) >= size 
                 ifTrue: [ leftParen, string, rightParen] 
                  False: [ (safeNameSize: (size - (string size + padSize))),
                           ' ', leftParen, string, rightParen] ).

	^ name = (
	    nameSize: infinity PrintString:
		ifPrints ifTrue: [
		    reflectee printString.
		] False: '' ).
	^ nameSize: s = (
	    nameSize: s PrintString:
		ifPrints ifTrue: [
		    reflectee printStringSize: s.
		] False: '' ).
	^ nameDepth: d = (
	    nameSize: infinity PrintString:
		ifPrints ifTrue: [
		    reflectee printStringDepth: d.
		] False: '' ).
	^ nameSize: s Depth: d = (
	    nameSize: s PrintString:
		ifPrints ifTrue: [
		    reflectee printStringSize: s Depth: d.
		] False: '' ).

	_ ifPrints = ( includesName: 'thisObjectPrints' ).
	_ nameOrNull = ( pathCache nameForReflectee: self ).

	_ nameSize: s PrintString: ps = (
	    | ns. r |
	    ns: nameOrNull.
	    ns isEmpty ifTrue: [
		r: ps isEmpty ifTrue: '<an object>' False: ps.
	    ] False: [
		ps isEmpty ifTrue: [
		    r: ns
		] False: [
		    (ns isPrefixOf: ps) ifTrue: [
			r: 'The ', ps.		"suppress redundant name"
		    ] False: [
			r: '<', ns, '>', ps.	"show both"
		    ].
		].
	    ].
	    r copyAtMostWithEllipsis: s ).
    | ).

    _ reflection* = ( |
	"Based on the reference manual"

	^ inheritsFrom: objMirror = ( (= objMirror) || [
	    parentGroupsDo: [ | :pg | pg do: [ | :p |
		(p inheritsFrom: objMirror) ifTrue: [^true]]].
	    false]).

        ^ lookupKey: sel = (lookupKey: sel Holder: self).

	^ lookupKey: sel Holder: smh = (
	    lookupKey: sel Receiver: self Holder: smh Visited: set copy).

	^ lookupKey: sel Receiver: rec Holder: smh Visited: v = (
	    | m <- set. visited. |
	    m: m copy.
	    (v includes: self) ifTrue: [^m].
	    ((includesName: sel) &&
		[slotIsVisible: sel Receiver: rec Holder: smh]) ifTrue: [
		    m add: slotNamed: sel].
	    visited: v copy add: self.
	    parentGroupsDo: [ | :pg |
		m isEmpty ifFalse: [^m].
		pg do: [ | :p | m addAll:
		    (p lookupKey: sel
		       Receiver: rec
		       Holder: smh
		       Visited: visited)]].
	    ^m).

	^ slotIsVisible: key Receiver: rec Holder: smh = (
	    ((slotNamed: key) visibility isVisible) ||
		[(rec inheritsFrom: smh) && [rec inheritsFrom: self]]).
    | ).

    _ evaluating* = ( |
        ^ evaluate: m = ( _MirrorEvaluate: m ).
    | ).

    _ programming* = ( |
        _ flushCaches = (
	    "after a programming action, fix up pathCache here"
            self).

	^ removeAllSlots = (
	    [size > 0] whileTrue: [removeSlots: (at: 0) key]. self ).

	^ removeSlot: name = ( | slot |
	    slot: slotNamed: name IfAbsent: [^ self].
	    removeSlots: name ).

        _ basicRemoveSlot: name = ( removeAt: (slotNamed: name) index ).

	^ removeSlots: name = (
	    "remove this slot; if assignable, also remove assignment slot"
	    (slotNamed: name) isAssignable ifTrue: [ | assignName |
		assignName: (name, ':') canonicalize.
		basicRemoveSlot: assignName.
            ].
	    basicRemoveSlot: name.
	    flushCaches.
	    self
	).

	^ addSlotsIfAbsent: obj = (
	    (reflect: obj) do: [| :slot |
                slotNamed: slot key IfAbsent: [addSlot: slot]].
	    self ).

	^ addSlot: slot = (
	    atName: slot key Put: slot value Visibility: slot visibility
	        ParentPriority: slot parentPriority ). 

	^ changeContentsOf: name To: objMirr IfFail: fblock = ( | s |
	    s: slotNamed: name.
	    s isAssignable && [objMirr isReflecteeMethod] ifTrue: [
	        removeSlot: name, ':'.
            ].
	    atName: name Put: objMirr Visibility: s visibility
		ParentPriority: s parentPriority IfFail: fblock.
	    self ).

	_ primitives* = ( |
	    ^ define: newObj = ( _MirrorDefine: newObj ).
	    ^ addSlots: newObj = ( _MirrorAddSlots: newObj ).

	    ^ removeAt: index = (flushCaches.  _MirrorRemoveAt: index ).
	    ^ removeAt: index IfFail: block = (
                flushCaches.
	        _MirrorRemoveAt: index IfFail: block).

	    ^ removeAtName: n = ( removeAt: indexOfName: n ).
	    ^ removeAtName: n IfFail: block = (
		removeAt: (indexOfName: n IfAbsent: [^block value])
		  IfFail: block ).

	    ^ atName: n Put: objMirr Visibility: vis ParentPriority: p = (
	        atName:         n
		   Put:         objMirr
		   Visibility:  vis
		   ParentPriority:  p 
		   IfFail: [|:e| error: e, ': could not replace slot: ', n, 
		                        ' in: ', name]).

	    ^ atName: name  Put: objMirr  Visibility: vis  ParentPriority: p 
	      IfFail: failBlock = (
	        flushCaches.
shell x: shell x + [
	        _MirrorAtName:  name canonicalize
		          Put:  objMirr
		   Visibility:	vis asPrefix first asString
		  ParentGroup:  p
		       IfFail:  failBlock 
] time
).

	    ^ atName: name Put: objMirr ParentPriority: p = (
		 atName:            name
		   Put:             objMirr
		   Visibility:      undeclaredSlot
		   ParentPriority:  p ).

	    ^ atName: name Put: objMirr = (
		 atName:            name
		   Put:             objMirr
		   Visibility:      undeclaredSlot
		   ParentPriority:  0 ).

	    ^ atName: name Put: objMirr IfFail: block= (
		 atName:            name
		   Put:             objMirr
		   Visibility:      undeclaredSlot
		   ParentPriority:  0
		   IfFail:          block ).
        | )
    | )
| )

traits _AddSlotsIfAbsent: ( | ^ mirrors = () | )

traits mirrors _AddSlotsIfAbsent: ( |
    ^ assignment = mirrors assignment parent.
| )
traits mirrors assignment _Define: ( |
    _ parent* = traits mirror.

    ^ isReflecteeAssignment = true.
    _ ifPrints = false.
    _ nameOrNull = '<-'.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ block = mirrors block parent | )
traits mirrors block _Define: ( |
    _ parent* = traits mirror.

    ^ isReflecteeBlock = true.
    ^ valueSlot = ( slotAt: 1 ).
    _ ifPrints = false.
    _ nameOrNull = '<a block>'.

    ^ allLiteralsDo: b = (valueSlot value allLiteralsDo: b.  self).
    ^ messagesDo:    b = (valueSlot value messagesDo:    b.  self).
    ^ messages         = (valueSlot value messages.          self).

    ^ lexicalParent = (
	(_MirrorLexicalParentIfFail: [^mirrors deadActivation]) init: infinity
       ).

    ^ fakeSlotsDo: block = (
	block value: slots fake lexicalParent copyMirror: self.
	resend.fakeSlotsDo: block ).

    ^ fakeSlotsSize = ( 1 + resend.fakeSlotsSize).
| )


traits mirrors _AddSlotsIfAbsent: ( |
    ^ method = mirrors method parent.
| )

traits mirrors method _Define: ( |
    _ parent* = traits mirror.
    ^ reflectee = ( error: 'Cannot access a method reflected in a mirror' ).

    ^ codes    = ( _MirrorCodes  ).
    ^ literals = ( _MirrorLiterals  ).
    ^ source   = ( _MirrorSource ).
    ^ file     = ( _MirrorFile ).
    ^ line     = ( _MirrorLine  ).

    ^ isReflecteeMethod = true.

    _ ifPrints = false.

    _ nameOrNull = (
        ( methodParagraph copyForMethod: self) asSlotContents asString ).

    ^ fakeSlotsDo: block = (
           block value: slots fake codes    copyMirror: self.
           block value: slots fake literals copyMirror: self.
           block value: slots fake source   copyMirror: self.
           block value: slots fake file     copyMirror: self.
           block value: slots fake line     copyMirror: self.
      ).

     ^ fakeSlotsSize = 5.

    ^ allLiteralsDo: b = (
	literals reflectee do: [|:lit|
	    b value: lit With: self.
	    (reflect: lit) allLiteralsDo: b.
	].
	self).

    _ opWidth    = 3.
    _ indexWidth = 5.
    _ indexMask  = (1 << 5) - 1.

    _ opOf:    bc = (bc >> indexWidth).
    _ indexOf: bc = (bc && indexMask).

    _ ops = ( |
        index        = 0.
        pushSelf     = 1.
        literal      = 2.
        return       = 3.
        delegatee    = 4.
        send         = 5.
        implicitSend = 6.
        resendOp     = 7.
    | ).

    _ literalString: i = (| lit <- '' |
       lit: literals reflectee at: i.
       (reflect: lit) isReflecteeString ifTrue: lit False: [
           (reflect: lit) name].
      ).

      "Converts the bytecode to a dictionary where bytecode positions
       are keys and strings describing bytecodes are values."
    ^ codeAsDictionary = (| index <- 0. result <- dictionary |
        result: result copy.
        byteCodesDo:[| :bci. :op. :literal|
            result at: bci Put:
                (op = ops pushSelf  ifTrue: [ 'self' ]                 False: [
                 op = ops return    ifTrue: [ 'return' ]               False: [
                 op = ops literal   ifTrue: [ 'literal:   ', literal ] False: [
                 op = ops delegatee ifTrue: [ 'delegatee: ', literal ] False: [
                 op = ops send      ifTrue: [ 'send:      ', literal ] False: [
                 op = ops implicitSend
                                    ifTrue: [ 'implicit:  ', literal ] False: [
                 op = ops resendOp  ifTrue: [ 'resend:    ', literal ] False: [
                     'unknown byte code' ]]]]]]])].
        result).


    ^ doLexicalScopes: blk IfFail: failBlk = (| activation |
         "Evaluates blk in each lexical scope of this activation
          and returns the receiver of the outer most method activation"
         activation: self.
         [ activation isLive ifFalse: failBlk.
           blk value: activation. 
           activation isReflecteeMethodActivation
         ] whileFalse: [ activation: activation lexicalParent].
         activation receiver.
      ).

    ^ doLexicalScopes: blk = ( doLexicalScopes: blk IfFail: [^nil] ).

    ^ isNameInLexicalScopes: name = (
        "Returns true if name is local to this activation or
         one of the lexical scopes, false is returned otherwise"
        doLexicalScopes: [|:act | (act includesName: name) ifTrue: [^true]].
        false
      ).

    _ byteCodesDo: blk = (| inx <- 0. currentBci <- 0. nextBci <- 0. len <- 0 |
         len: codes reflectee size.
         codes reflectee do: [|:bc. :bci.  op <- 0. literal <- '' |
	    op: opOf: bc.
            inx: (indexOf: bc) || (inx << indexWidth).
      	    op = ops index  ifFalse: [
              nextBci: bci succ.
              (op = ops send)          ||      [
              (op = ops implicitSend)  ||      [
              (op = ops resendOp)]]    ifTrue: [
		  literal: literals reflectee at: inx ].
              "Return 0 if nextBci is past last byte code"
              nextBci >= len ifTrue: [ nextBci: 0 ].
              blk value: currentBci With: op With: literal With: nextBci.
              currentBci: nextBci.
              inx: 0]]
      ).

    ^ isSimpleByteCodeAt: index = (
        "Determines if the bytecode referred by index is simple, that is 
         the debugger should not stop here during a step command"
         byteCodesDo:[| :bci. :op. :literal|
             bci >= index ifTrue: [
                ^ (op = ops send)          ||      [
                  (op = ops implicitSend)  ||      [
                  (op = ops resendOp)]]    ifTrue: [
	             isNameInLexicalScopes: literal ] False: true]].
         false
      ).

    ^ statementBoundaries = (| boundaries <- list |
         boundaries: boundaries copy.
         byteCodesDo: [| :bci. :op. :literal. :next |
	    op = ops pushSelf  ifTrue: [ boundaries add: next ] False: [
            op = ops literal   ifTrue: [ boundaries add: next ] False: [
            op = ops return    ifTrue: [ "nothing"            ] False: [
            op = ops delegatee ifTrue: [ "nothing"            ] False: [
                (prototypes selector copyStr: literal) numOfArguments
                 + (op = ops send ifTrue: 1 False: 0) do: [ boundaries removeLast].
                boundaries add: next]]]
	    ]
	].
        boundaries asVector
      ).

    ^ isBeginningOfStatement: bci = (
        bci = 0 ifTrue: true False: [ statementBoundaries includes: bci ]
      ).

    ^ effectOfByteCode: index Do: blk= (
        "Takes a byte code index and computes the effect on the expression stack
         when evaluating the byte code at bci. blk is evaluated with the result:
            next bci, number of elements poped, and number of elements pushed."
         byteCodesDo: [| :bci. :op. :literal. :next. pop <- 0. push <- 0 |
             bci >= index ifTrue: [
                 op = ops pushSelf  ifTrue: [ push: 1 ]   False: [
                 op = ops literal   ifTrue: [ push: 1 ]   False: [
                 op = ops return    ifTrue: [ "nothing" ] False: [
                 op = ops delegatee ifTrue: [ "nothing" ] False: [
	             push: 1.
                     pop:  (prototypes selector copyStr: literal) numOfArguments
                           + (op = ops send ifTrue: 1 False: 0)]]]].
	         blk value: next With: pop With: push.
	         ^true
	    ]
	].
	false
      ).


    ^ messagesDo: b = (| locals <- set |
        locals: locals copy.
        size do: [|:i| locals add: nameAt: i].

        byteCodesDo:[| :bci. :op. :literal |
            (op = ops send)          ||      [
            (op = ops implicitSend)  ||      [
            (op = ops resendOp)]]    ifTrue: [
                (locals includes: literal) ifFalse: [b value: literal]]].

        literals reflectee do: [|:lit|
	    (reflect: lit) messagesDo: [|:m|
	        (locals includes: m) ifFalse: [b value: m].
            ].
	].

	self).
| )

traits mirrors _AddSlotsIfAbsent: ( |
    ^ blockMethod = mirrors blockMethod parent
| )
traits mirrors blockMethod _Define: ( |
    _ parent* = traits mirrors method.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ activation = (). | )
traits mirrors activation _Define: ( |
    _ parent* = traits mirrors method.
    _ mirrorPrefix = ''.

    ^ init: i = (number: i).

    ^ reflectee = (
        error: 'Cannot access an activation reflected in a mirror' ).

    ^ sender = (| activation |
        activation: _MirrorSenderIfFail: [ | :error. :name. |
	    ^primitiveFailedError: error Name: name Resend: [ sender ] ].
        activation init: number succ ).

    ^ hasSender = (
	" perhaps a _MirrorHasSender primitive would be better "
	_MirrorSenderIfFail: [ | :error. :name. |
	    ('noSenderError' isPrefixOf: error) ifTrue: [ ^ false ].
	    primitiveFailedError: error Name: name Resend: [ hasSender ] ].
	true ).

    ^ selectorAndArguments = (
        selector reflectee asSelector intersperse: arguments.
    ).

    _ nameOrNull = (
        isLive ifTrue: [ selectorAndArguments, ' = ', resend.nameOrNull ]
                False: [ mirrors deadActivation name ] ).

    ^ receiver = (
        _MirrorReceiverIfFail: [ | :error. :name. |
	    primitiveFailedError: error Name: name Resend: [ receiver ] ] ).
    ^ expressionStack = (
        _MirrorExpressionStackIfFail: [ | :error. :name. |
	    primitiveFailedError: error Name: name
					Resend: [ expressionStack ] ] ).
    ^ selector = (
        _MirrorSelectorIfFail: [ | :error. :name. |
	    primitiveFailedError: error Name: name Resend: [ selector ] ] ).
    ^ position = (
        _MirrorByteCodePositionIfFail: [ | :error. :name. |
	    primitiveFailedError: error Name: name Resend: [ position ] ] ).
    ^ isLive = (
        _MirrorByteCodePositionIfFail: [ | :error. :name. |
	    ^ primitiveFailedError: error Name: name Resend: [ isLive ] ].
	true ).

    ^ isReflecteeActivation = true.

    ^ isReflecteeMethodActivation = false.

    _ primitiveFailedError: error Name: name Resend: db = (
	('noActivationError' isPrefixOf: error) ifTrue: [
	    parent: traits mirrors deadActivation.
	    ^ db value ].
	resend.primitiveFailedError: error Name: name Resend: db ).

    ^ fakeSlotsDo: block = (
	block value: slots fake receiver        copyMirror: self.
	block value: slots fake expressionStack copyMirror: self.
	block value: slots fake position        copyMirror: self.
	resend.fakeSlotsDo: block ).

    ^ fakeSlotsSize = (3 + resend.fakeSlotsSize).
| )

mirrors _AddSlotsIfAbsent: (| deadActivation = () |)

traits mirrors _AddSlotsIfAbsent: ( | ^ deadActivation = () | )

traits mirrors deadActivation _Define: ( |
    _ parent* = traits mirrors activation.

    "all dead activations are equal to each other"
    ^ = x = ( x equalsDeadActivationMirror: self ).
    _ equalsDeadActivationMirror: x = ( true ).

    ^ init: i = (
         resend.init: i.
         parent: liveParent.
         self
      ).

    ^ nameAt: i = ( '' ).
    ^ contentsAt: i = ( reflect: () ).
    ^ isParentAt: i = ( false ).
    ^ isAssignableAt: i = ( false ).
    ^ isArgumentAt: i = ( false ).
    ^ parentPriorityAt: i = ( false ).
    ^ visibilityAt: i = ( undeclaredSlot ).

    ^ code = ( | source = '' | ).
    ^ size = 0.
    ^ hash = 0.

    ^ fakeSlotsDo: block = ( self ).
    ^ fakeSlotsSize = 0.

    ^ sender = mirrors deadActivation.
    ^ hasSender = false.
    _ nameOrNull = '<a dead activation>'.
    ^ receiver = reflect: ().
    ^ expressionStack = reflect: vector copySize: 0.
    ^ selector = reflect: ''.
    ^ position = reflect: 0.
    ^ isLive = false.
    ^ methodHolder = ( self ).
| )

mirrors deadActivation _Define: ( |
    ^ parent* = traits mirrors deadActivation.
    _ thisObjectPrints = true.
    ^ number <- 0.
| )

traits mirrors _AddSlotsIfAbsent: ( |
    ^ methodActivation = ().
| )

traits mirrors methodActivation _Define: ( |
    _ parent* = traits mirrors activation.

    ^ isReflecteeMethodActivation = true.

    ^ methodHolder = (
        _MirrorMethodHolderIfFail: [ | :error. :name. |
	   primitiveFailedError: error Name: name Resend: [ methodHolder ] ] ).

    ^ fakeSlotsDo: block = (
        resend.fakeSlotsDo: block.
	block value: slots fake selector     copyMirror: self.
	block value: slots fake methodHolder copyMirror: self.
    	hasSender ifTrue: [ block value: slots fake sender copyMirror: self ].
	self).

    ^ fakeSlotsSize = (resend.fakeSlotsSize + 2 + (hasSender ifTrue: 1 False: 0)).
| )

mirrors methodActivation _AddSlots: ( |
    _ parent* <- traits mirrors deadActivation.
    _ liveParent = traits mirrors methodActivation.
    _ thisObjectPrints = true.
    ^ number <- 0.
| )

traits mirrors _AddSlotsIfAbsent: ( |
    ^ blockMethodActivation = ().
| )

traits mirrors blockMethodActivation _Define: ( |
    _ parent* = traits mirrors activation.

    ^ lexicalParent = (
       (_MirrorLexicalParentIfFail: [ ^mirrors deadActivation ]) init: infinity
      ).

    ^ fakeSlotsDo: block = (
        resend.fakeSlotsDo: block.
	block value: slots fake lexicalParent copyMirror: self.
	block value: slots fake sender	      copyMirror: self.
	block value: slots fake selector      copyMirror: self.
	self ).

     ^ fakeSlotsSize = (resend.fakeSlotsSize + 3).
| )

mirrors blockMethodActivation _AddSlots: ( |
    _ parent* <- traits mirrors deadActivation.
    _ liveParent = traits mirrors blockMethodActivation.
    _ thisObjectPrints = true.
    ^ number <- 0.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ process = mirrors process parent | )
traits mirrors process _Define: ( |
    _ parent* = traits mirror.
    _ ifPrints = true.
    ^ isReflecteeProcess = true.
    ^ fakeSlotsDo: block = ( block value: slots fake stack copyMirror: self ).
    ^ fakeSlotsSize = 1.
    ^ stack = ( reflectee stack ).
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ smallInt = mirrors smallInt parent | )
traits mirrors smallInt _Define: ( |
    _ parent* = traits mirror.
    _ ifPrints = true.
    _ nameOrNull = ''.
    ^ isReflecteeInteger = true.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ float = mirrors float parent | )
traits mirrors float _Define: ( |
    _ parent* = traits mirror.
    _ ifPrints = true.
    _ nameOrNull = ''.
    ^ isReflecteeFloat = true.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ slots = mirrors slots parent | )
traits mirrors slots _Define: ( |
    _ parent* = traits mirror.
    ^ isReflecteeSlots = true.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ mirror = mirrors mirror parent | )
traits mirrors mirror _Define: ( |
    _ parent* = traits mirror.
    _ ifPrints = true.
    ^ isReflecteeMirror = true.
    ^ fakeSlotsDo: block = ( block value: slots fake reflectee copyMirror: self ).
    ^ fakeSlotsSize = 1.
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ vectorish = () | )
traits mirrors vectorish _Define: ( |
    _ parent* = traits mirror.
    _ ifPrints = true.
    ^ isReflecteeVectorish = true.
    ^ fakeSlotsDo: block = (
	reflectee size do: [ | :i |
	    block value:
	        slots fake vectorElement copyMirror: self ElementIndex: i ] ).
    ^ fakeSlotsSize = (reflectee size).
| )

traits mirrors _AddSlotsIfAbsent: ( | ^ vector = mirrors vector parent | )
traits mirrors vector _Define: ( |
    _ parent* = traits mirrors vectorish.
    ^ isReflecteeVector = true.
| )

traits mirrors _AddSlotsIfAbsent: ( |
    ^ byteVector = mirrors byteVector parent.
| )
traits mirrors byteVector _Define: ( |
    _ parent* = traits mirrors vectorish.
    ^ isReflecteeByteVector = true.
| )

traits mirrors _AddSlotsIfAbsent: ( |
    ^ canonicalString = mirrors canonicalString parent.
| )
traits mirrors canonicalString _Define: ( |
    _ parent* = traits mirrors byteVector.
    ^ isReflecteeString = true.
| )

mirrors assignment	_AddSlots: ( | _ thisObjectPrints = true | )
mirrors block		_AddSlots: ( | _ thisObjectPrints = true | )
mirrors byteVector	_AddSlots: ( | _ thisObjectPrints = true | )
mirrors canonicalString _AddSlots: ( | _ thisObjectPrints = true | )
mirrors float		_AddSlots: ( | _ thisObjectPrints = true | )
mirrors smallInt	_AddSlots: ( | _ thisObjectPrints = true | )
mirrors method		_AddSlots: ( | _ thisObjectPrints = true | )
mirrors blockMethod	_AddSlots: ( | _ thisObjectPrints = true | )
mirrors mirror		_AddSlots: ( | _ thisObjectPrints = true | )
mirrors process		_AddSlots: ( | _ thisObjectPrints = true | )
mirrors slots		_AddSlots: ( | _ thisObjectPrints = true | )
mirrors vector		_AddSlots: ( | _ thisObjectPrints = true | )


