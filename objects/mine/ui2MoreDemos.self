traits ui2 _AddSlotsIfAbsent: (|
    ^ slotsMorph	= ().
    ^ outlineMorph	= ().
    ^ outlineEntryMorph	= ().
    ^ outlineNode	= ().
|)

globals ui2 _AddSlotsIfAbsent: (|
    ^ slotsMorph	= ().
    ^ outlineMorph	= ().
    ^ outlineEntryMorph	= ().
    ^ outlineNode	= ().
|)

slotsMorph _Define: columnMorph copy _AddSlots: (|
    "This object demonstrates an extremely simple Self object
     browser. To make a slotsMorph on the lobby, type:

	slotsMorph copyMirror: (reflect: lobby)

     Slots appear as buttons. Pressing a button makes a new slotsMorph
     for the contents of that slot. This browser does not support editing."

    ^ parent* = traits slotsMorph.
    _ mirror.	"mirror on the object I represent"
    _ rawColor <- paint copyRed: 0.8 Green: 0.783 Blue: 0.76.
|)

traits slotsMorph _Define: (|
    ^ parent* = traits columnMorph.

    ^ morphTypeName = 'slotsMorph'.

    ^ copyMirror: m = (| new |
	"Return a slotsMorph with the given title string
	 representing the object with the given mirror."

	new: copyMirror: m Title: (m nameSize: 50).
	new addButtons.
	new glueAllMorphs.
	new ).

    _ copyForSlotNamed: name = (| slot. new |
	"Returns a slotsMorph representing the contents of the named slot of my object."
	"Note: the result of a button's expression is automatically added to the world."

	slot: mirror at: name.
	slot isMethod ifTrue: [
	    new: slotsMorph copyMirror: slot contents Title: slot longKey.
	    new addAllMorphs:
		((methodText copyForMethod: slot contents) formatCode lines
		    mapBy: [| :l | labelMorph copy label: l]).
	    new glueAllMorphs.
	] False: [
	    new: copyMirror: slot contents.
	].
	new globalPosition: globalBounds topRight + (20@0).
	new ).

    _ copyMirror: m Title: s = (| new |
	new: slotsMorph copy mirror: m.
	new beShrinkWrap leftJustify color: color.
	new addTitle: s.
	new ).

    _ addTitle: s = (| m |
	"Add a title centered within a slightly lighter column morph."

	m: (columnMorph copy centerJustify color: (color copyBrighterBy: 0.1)).
	m addMorph: (labelMorph copyForOwner: world Label: s).
	addMorph: m ).

    _ addButtons = (
	"Add buttons for the slots of the object I represent."

	addAllMorphs:
	    mirror keys mapBy: [| :slotName | buttonFor: slotName ].
	self ).

    _ buttonFor: name = (| b |
	"Make a button for the slot of the given name."

	b: ((((buttonMorph copy
		color: color)
		borderWidth: 1)
		style: buttonMorph lineStyle)
		beFlexible).
	b label: name.
	b expression: 'copyForSlotNamed: \'', name, '\''.
	b ).
|)


outlineMorph _Define: columnMorph copy _AddSlots: (|
    "This object demonstrates a simple outliner with
     headings that can be collapsed or expanded. To try it, type:

	outlineMorph copyFor: outlineNode example

     See outlineNode for a example outline object and for the
     protocol for outlines."

    ^ parent* = traits outlineMorph.
|)

traits outlineMorph _Define: (|

    ^ parent* = traits columnMorph.

  { 'Category: all'

    ^ morphTypeName = 'outlineMorph'.

    ^ copyFor: n = (| new |
	new: copy removeAllMorphs beShrinkWrap.
	new color: (paint copyRed: 0.886608 Green: 0.926686 Blue: 0.933529).
	new addMorph: (outlineEntryMorph copyFor: n Indent: 0 Color: new color).
	new: frameMorph copy beShrinkWrap addMorph: new.
	new glueAllMorphs.
	new ).

    ^ addMorphs: mList After: m = (| prefix. postfix. mHasBeenSeen <- false |
	prefix:  list copyRemoveAll.
	postfix: list copyRemoveAll.
	morphsDo: [| :mph |
	    mHasBeenSeen ifTrue: [
		postfix add: mph.
	    ] False: [
		prefix add: mph.
		m = mph ifTrue: [ mHasBeenSeen: true ].
	    ].
	].
	removeAllMorphs.
	addAllMorphs: prefix, mList, postfix.
	glueAllMorphs.
	self ).

    ^ removeMorphsAfter: m Until: b = (| mList. mHasBeenSeen <- false |
	mList: list copyRemoveAll.
	morphsDo: [| :mph |
	    mHasBeenSeen ifTrue: [
		(b value: mph) ifTrue: [ ^removeMorphs: mList ].
		mList add: mph.
	    ] False: [
		m = mph ifTrue: [ mHasBeenSeen: true ].
	    ].
	].
	removeMorphs: mList ).

    _ removeMorphs: mList = (
	mList do: [| :m | removeMorph: m ].
	self ).

  }
|)


outlineEntryMorph _Define: rowMorph copy _AddSlots: (|
    "This object represents one line of a simple outliner.
     See outlineMorph for an example."

    ^ parent* = traits outlineEntryMorph.
    ^ expandable <- false.
    ^ isExpanded <- false.
    ^ node.
    ^ indentationDelta <- 20.
|)

traits outlineEntryMorph _Define: (|

    ^ parent* = traits rowMorph.

  { 'Category: all'

    ^ morphTypeName = 'outlineEntryMorph'.

    ^ copyFor: n Indent: i Color: c = (| new. mList |
	new: copy removeAllMorphs.
	new expandable: (n is_leaf not).
	new isExpanded: false.
	new node: n.
	new color: c.

	mList: list copyRemoveAll.
	mList add:
	    (morph copy beFlexibleVertically beRigidHorizontally color: c)
		resizeRect: (0@0) ## (i@20).
	new expandable ifTrue: [
	    mList add:
		((((buttonMorph copy expression: 'toggleExpansion') label: 'e')
		    color: c copyBrightness: (c brightness - 0.2) max: 0.8)
		    freezeTarget: new)
		    position: 1000@0.
	] False: [
	    mList first resizeRect: (0@0) ## ((i + 14)@20).
	].
	mList add: (labelMorph copy label: '  ', n text) position: 2000@0.
	new addAllMorphs: mList.
	new ).

    ^ toggleExpansion = (
	isExpanded ifTrue: [
	    absorbChildren.
	    setButtonLabel: 'e'.
	    isExpanded: false.
	] False: [
	    expandable ifTrue: [
		expand.
		setButtonLabel: 'c'.
		isExpanded: true.
	    ].
	].
	self ).

    _ absorbChildren = (| myIndentation |
	owner morphTypeName = outlineMorph morphTypeName ifFalse: [ ^self ].
	myIndentation: indentation.
	owner removeMorphsAfter: self Until: [| :m |
	    (m morphTypeName != morphTypeName) ||
	    [m indentation <= (myIndentation + 14)]].
	self ).

    _ expand = (| newNodes. i |
	owner morphTypeName = outlineMorph morphTypeName ifFalse: [ ^self ].
	newNodes: list copyRemoveAll.
	i: indentation + indentationDelta.
	node do_sons: [| :son | newNodes add: (copyFor: son Indent: i Color: color) ].
	owner addMorphs: newNodes After: self.	
	self ).

    _ setButtonLabel: s = (| b |
	morphsDo: [| :m |
	    m morphTypeName = buttonMorph morphTypeName ifTrue: [ b: m ].
	].
	nil = b ifFalse: [ b label: s ].
	self ).

    _ indentation = ( morphs first bounds width ).

  }
|)

outlineNode _Define: (|
    "This object is a placeholder for objects that can be browsed
     by an outlineMorph. The protocol for outlines is collected in
     its own category, so it should be clear how to make other sorts
     of objects such as profiler nodes be browsable."

    ^ parent* = traits outlineNode.
    ^ text <- ''.
    ^ sons <- list.
    _ thisObjectPrints = true.
|)

traits outlineNode _Define: (|

    ^ parent* = traits clonable.

  { 'Category: Outline protocol'

    ^ copy = ( resend.copy sons: sons copyRemoveAll ).
    ^ do_sons: b = ( sons do: [| :son | b value: son]. self ).
    ^ number_of_sons = ( sons size ).
    ^ is_leaf = ( number_of_sons = 0).

  }
  { 'Category: printing'

    ^ printString = ( 'outlineNode', objectID, text ).

    ^ printAll = ( printAllIndent: 0 ).
    ^ printAllIndent: i = (
	i do: [' ' print].
	text printLine.
	sons do: [| :s | s printAllIndent: (i + 3) ].
	self ).

  }
  { 'Category: examples'

    ^ example = (| n0. n1. n2. n3. n11. n12. n13. n111. n112. n21. n22 |
	n0: copy text: 'An Example Outline'.

	n1: copy text: '1.0 Hamlet'.
	n2: copy text: '2.0 Romeo and Juliet'.
	n3: copy text: '3.0 Much Ado about Nothing'.

	n11: copy text: '1.1 Act I'.
	n12: copy text: '1.1 Act II'.
	n13: copy text: '1.1 Act III'.

	n111: copy text: '1.1.1 Alas, poor Yorick. I knew him, Horatio.'.
	n112: copy text: '1.1.2 Neither a borrower nor a lender be.'.

	n21: copy text: '2.1 Hark, what light through yonder window breaks?'.
	n22: copy text: '2.2 It is the East, and fair Juliet the sun!'.

	n0  sons addAll: ( n1 & n2 & n3 ) asVector.
	n1  sons addAll: ( n11 & n12 & n13 ) asVector.
	n11 sons addAll: ( n111 & n112 ) asVector.
	n2  sons addAll: ( n21 & n22 ) asVector.

	n0 ).

  }
|)
