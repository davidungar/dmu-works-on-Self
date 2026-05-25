' $Revision: 30.1 $ '

"Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

" simple scheme to read & write objects "
" David Ungar 11/28/92 "


traits     applications _AddSlotsIfAbsent: ( | transporter = () |)
globals    applications _AddSlotsIfAbsent: ( | transporter = () |)

transporter _AddSlotsIfAbsent: ( | tourist = () | )

"A tourist visits a bunch of objects, making a dictionary mapping
 object to id"

globals transporter _AddSlotsIfAbsent: ( | mirrorDispatcher = () | )

transporter mirrorDispatcher _Define: ( |
    parent* = traits oddball.

    dispatch: m To: x = (
	m isReflecteeActivation       ifTrue: [^ x dispatch_activation:  m ].
	m isReflecteeBlockMethod      ifTrue: [^ x dispatch_blockMethod: m ].
	m isReflecteeMethod           ifTrue: [^ x dispatch_method:      m ].
	m isReflecteeAssignment       ifTrue: [^ x dispatch_assignment:  m ].

        " string must preceed bytevector "
	m isReflecteeString           ifTrue: [ ^ x dispatch_string:     m ].
	m isReflecteeByteVector       ifTrue: [ ^ x dispatch_byteVector: m ].

	m isReflecteeSlots            ifTrue: [ ^ x dispatch_slots:      m ].
	m isReflecteeInteger          ifTrue: [ ^ x dispatch_integer:    m ].
	m isReflecteeFloat            ifTrue: [ ^ x dispatch_float:      m ].
	m isReflecteeMirror	      ifTrue: [ ^ x dispatch_mirror:     m ].
	m isReflecteeVector           ifTrue: [ ^ x dispatch_vector:     m ].

	m isReflecteeBlock            ifTrue: [^ x dispatch_block:       m ].
	m isReflecteeProcess          ifTrue: [^ x dispatch_process:     m ].

	m isReflecteeFctProxy         ifTrue: [^ x dispatch_fctProxy:    m ].
	m isReflecteeProxy            ifTrue: [^ x dispatch_proxy:       m ].

	error: 'what?').
| )

transporter tourist _Define: ( |
  "_" parent* = traits clonable.

 { 'Category: shortcuts'
  ^ copyVisitMirrors: ms = ((copy rootMirrors: ms) visitRootMirrors).
  ^ copyVisitMirror: m   = (copyVisitMirrors: vector copyAddFirst: m).
  ^ copyVisit: o         = (copyVisitMirror: reflect: o).
 }

  { 'Category: entries'
  ^ copy = (((
	resend.copy        mirrorIDs:                mirrorIDs copyRemoveAll)
                       rootMirrors:              rootMirrors   copyRemoveAll)
	    mostlyPostorderMirrors:   mostlyPostorderMirrors   copyRemoveAll).


  ^ visitRootMirrors = (
	rootMirrors do: [|:m| visitMirror: m].
	self).
 }

  "_" visitMirror: m = (
	mirrorIDs includesKey: m IfTrue: [^self].
	mirrorIDs at: m Put: mirrorIDs size.
	(isInJurisdiction: m) ifFalse: [^self].

	transporter mirrorDispatcher dispatch: m To: self.
	visitAnnotationOf: m.
	visitSlotsOf: m.

        mostlyPostorderMirrors addLast: m).


  "_" visit: obj = (visitMirror: reflect: obj).

  { 'Category: reused visitor routines'

  "_" visitMethod: m = (
	visit m literalsIfFail: [^self]).

  "_" visitActivation: m = (
	visitSenderOf: m.
	visitReceiverOf: m.
	visitExpressionStackOf: m.
	visitSelectorOf: m.
	visitMethodHolderOf: m.
	visitMethod: m).

  "_" visitSlotsOf: m = ( | n |
	n: m namesIfFail: [^ self].
	n do: [visitSlotOf: m Named: n].
	self).

  "_" visitSlotOf: m Named: n = (
	[|:e| visit:       (m at: n) annotation IfFail: e] exit.
	[|:e| visitMirror: (m at: n) contents   IfFail: e] exit.
	self).

  "_" visitProxy: m = (
	m isLive ifTrue: [warning: 'transporting kills proxies'].
	self).
  }

  { 'Category: visiting fields'

  "_" visitAnnotationOf: m        = (visit: m annotationIfFail:      [^self]).
  "_" visitSenderOf: m            = (visit: m senderIfFail:          [^self]).
  "_" visitReceiverOf: m          = (visit: m receiverIfFail:        [^self]).
  "_" visitExpressionStackOf: m   = (visit: m expressionStackIfFail: [^self]).
  "_" visitSelectorOf: m          = (visit: m selectorIfFail:        [^self]).
  "_" visitMethodHolderOf: m      = (visit: m methodHolderIfFail:    [^self]).
  "_" visitLexicalParentOf: m     = (visit: m lexicalParentIfFail:   [^self]).
  }

  { 'Category: dispatched'

  "_" dispatch_block: m = (	visitMirror: m valueSlot contents ).
  "_" dispatch_outerMethod: m = (visitMethod: m).
  "_" dispatch_blockMethod: m = (visitMethod: m).

  "_" dispatch_methodActivation: m = (visitActivation: m).
  "_" dispatch_blockMethodActivation: m = (
        visitLexicalParentOf: m
	visitActivation: m ).

  "_" dispatch_process: m = (visit: stackIfFail: [^self]).

  "_" dispatch_vector: m         = (m reflectee do: [|:x| visit: x]).
  "_" dispatch_mirror: m = (visitMirror: m reflectee).

    { 'Category: trivial'
  "_" dispatch_deadActivation: m = (self).
  "_" dispatch_assignment: m     = (self).
  "_" dispatch_integer: m        = (self).
  "_" dispatch_float: m          = (self).
  "_" dispatch_byteVector: m     = (self).
  "_" dispatch_string: m         = (self).
  "_" dispatch_slots: m          = (self).
  "_" dispatch_proxy: m          = (visitProxy: m).
  "_" dispatch_fctProxy: m       = (visitProxy: m).
  }
}

{'Category: override points'
  "_" isInJurisdiction = true.
}

{'Category: copy-down'
  ^ rootMirrors            <- vector.
  ^ mirrorIDs              <- dictionary copyRemoveAll.
  ^ visitedMirrors         <- list copyRemoveAll.
  ^ mostlyPostorderMirrors <- list copyRemoveAll.
}
| )

transporter _AddSlotsIfAbsent: ( | oneAppTourist = () | )

transporter oneAppTourist _Define: ( |
  "_" parent* = transporter tourist.

 {'Category: overriden point'
  "_" isInJurisdiction: m = (
	(isWellKnown: m) ifFalse: [^true].
	(pathCache at: m) slotsDo: [|:slot. h|
	    (rootMirrors includes: h) ifTrue: [^true].
	].
	false).
}

{ 'Category: override point'
  "_" isWellKnown: m = (pathCache includesKey: m).
}

{'Category: copied down'
  ^ rootMirrors            <- vector.
  ^ mirrorIDs              <- dictionary copyRemoveAll.
  ^ visitedMirrors         <- list copyRemoveAll.
  ^ mostlyPostorderMirrors <- list copyRemoveAll.
}
| )	








modules raw _AddSlots: ( | 
    tourist = ( |
	revision = 'Sun-$Revision:$'.
	comment = ( ''
	    ).
	contents = '
		 traits applications touristself.
		        applications touristself.
	    '.
    | ).
| )
