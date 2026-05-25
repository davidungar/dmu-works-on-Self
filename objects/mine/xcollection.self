"Sun-$Revision: 30.1 $"

"Copyright 1992 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

  " A minimalist collection subsystem.  dmu 2/90"

  "traits <collections> collection"
  "Basic collection operations."

traits collections _AddSlotsIfAbsent: ( | ^ collection = () | )
traits collection _Define: ( |
    _ parent** = traits clonable.
    ^ comment =
('Abstract collection behavior. Note that this traits object has no
parent so it is really a mixin; concrete descendants are expected to
inherit from either traits oddball or traits clonable as appropriate.').

    _ descendantResponsibilities = ( |
	"The following methods must be implemented by a descendant."

	^ collectionName = ('Return a name for this type of collection.').

	^ copy = ('Return a copy of the receiver.').

	^ copyRemoveAll = ('Return an empty copy of the receiver.').

	^ at: k Put: v = ('Insert the given value at the given key.').

	^ at: k IfAbsent: b = (
	    'Return the value at the given key. Evaluate the block
	     b if there is no value associated with the given key.').

	^ do: b = (
	    'Evaluate the given block for each element. The first
	     argument passed to the block is the key, the second is
	     the value. If desired, doFirst:MiddleLast:IfEmpty: can
	     be implemented instead of do:.').

    | ).
    "_" copying* = ( |
	^ copyContaining: c = ( copyRemoveAll addAll: c ).
	^ copyMutable = (
	    "Return a collection that is similar me but mutable
	     and has the same contents as me. Returns self by default,
	     since most collections are, in fact, mutable."
	    self )
    | ).
    "_" accessing* = ( |
	^ at: k  = (at: k
		    IfAbsent: [| :k | error: k printString, ' is absent']).
	^ first = (
	       doFirst: [ | :e | ^ e ]
	    MiddleLast: [ error: 'should not get here' ]
	       IfEmpty: [ error: 'empty collection' ] ).
    | ).
    "_" adding* = ( |
	^ add: v WithKey: k = (at: k Put: v).
	^ addAll: c = (c do: [ |:v. :k| add: v WithKey: k ]. self).
    | ).
    "_" removing* = ( |
	^ remove: x = (
	    remove: x IfAbsent: [ error: x printString, ' is absent' ]. self ).
    | ).
    "_" setLikeOperations* = ( |
	^ intersect: c = ( | r |
	    r: copy.
	    r do: [ | :v |
		(c includes: v) ifFalse: [ r remove: v ].
	    ].
	    r ).
    | ).
    "_" sizing* = ( |
	^ size = ( | i <- 0 |
	    do: [i: i succ].
	    i).
	^ isEmpty = (0 = size).
	^ nonEmpty = (isEmpty not).
    | ).
    "_" comparing* = ( |
	^ hash = (
	     reduceWith: [ | :v1. :v2. | v1 hash ^^ v2 hash ]
	    IfSingleton: [ | :e | e hash ]
	        IfEmpty: 0 ).

	^ compare: c IfLess: lb Equal: eb Greater: gb Incomparable: ib = (
	     == c ifTrue: [ ^true ].	"optimization"
             c compareCollection: self IfLess: gb
                                        Equal: eb
			              Greater: lb
                                 Incomparable: ib ).

        _ compareCollection: c IfLess: lb Equal: eb Greater: gb Incomparable: ib = (
	    with: c Do: [
		|:v1. :v2|
		v1 compare: v2
		      IfLess: [^lb value]
		       Equal: nil
		     Greater: [^gb value]
		Incomparable: [^ib value]
	    ].
	    size compare: c size IfLess: lb Equal: eb Greater: gb ).

        ^ isPrefixOf: c = ( | comment = 'is self a prefix of c?' |
	    with: c Do: [ | :prefixElem.  :testElem.  |
	        prefixElem = testElem ifFalse: [^false].
	    ].
	    size  <=  c size).
        ^ isSuffixOf: c = ( | comment = 'is self a suffix of c?' |
	    with: c ReverseDo: [ | :suffixElem.  :testElem.  |
	        suffixElem = testElem ifFalse: [^false].
	    ].
	    size  <=  c size).
    | ).
    "_" transforming* = ( |
	^ filterBy: eb Into: c = (
	    do: [|:v. :k| (eb value: v With: k) ifTrue: [c add: v WithKey: k]]).
	^ mapBy: eb Into: c = (
	    do: [|:v. :k| c add: (eb value: v With: k) WithKey: k]).
	^ mapBy: eb = ( mapBy: eb Into: self ).
	^ copyMappedBy: eb = (copy mapBy: eb).

	^ asVector     = (vector        copyContaining: self).
	^ asByteVector = (byteVector    copyContaining: self).
	^ asList       = (list	        copyContaining: self).
	^ asString     = (mutableString	copyContaining: self).
    | ).
    "_" printing* = ( |
	_ printing* = mixins printing.

	_ leftBracket = '{'.
	_ rightBracket = '}'.
	_ separator = ', '.
	_ continued = '... }'.

	 "Most collections don't print keys..."
	_ printStringKey: k = ( '' ).

	_ defaultPrintSize  = 400.
	_ defaultPrintDepth = 1.

	^ printStringSize: smax Depth: dmax = (
	    | str. fit. csize. |
	    smax = infinity ifTrue: [ ^ printStringDepth: dmax ].
	    str: collectionName.
	    (dmax <= 0) || [str size >= smax] ifTrue: [ ^ str ].

	   "depth 1 case: return partial list if necessary"
	    fit: str.
	    str: str, leftBracket.
	    (str size + continued size) <= smax
	      ifTrue: [ fit: str, continued ].
	    csize: separator size + continued size.
	    doFirst: [ | :e. :k. |
		str: str, (printStringKey: k),
		    ((reflect: e) nameSize: smax Depth: 0).
		str size > smax ifTrue: [ ^ fit ].
		(str size + csize) <= smax
		  ifTrue: [ fit: str, separator, continued ]. ]
	      MiddleLast: [ | :e. :k. |
		str: str, separator, (printStringKey: k),
		    ((reflect: e) nameSize: smax Depth: 0).
		str size > smax ifTrue: [ ^ fit ].
		(str size + csize) <= smax
		  ifTrue: [ fit: str, separator, continued ]. ]
	      IfEmpty: [].
	    str: str, rightBracket.
	    str size > smax ifTrue: [ ^ fit ].

	    2 to: dmax Do: [ | :d |
		fit: str.
		str: printStringSize: smax AtDepth: d.
		(fit size = str size) ifTrue: [ ^ str ].
	    ].
	    str ).

	^ printStringDepth: dmax = ( | str |
	    str: collectionName.
	    dmax <= 0 ifTrue: [ ^ str ].
	    1 to: dmax Do: [ | :d. fit. |
		fit: str.
		str: printStringWith: [ | :e. :k. |
		    (printStringKey: k),
			((reflect: e) nameSize: infinity Depth: d pred) ].
		(fit size = str size) ifTrue: [ ^ str ].
	    ].
	    str ).

	_ printStringWith: block = ( | str |
	    str: collectionName, leftBracket.
	    doFirst: [ | :e. :k. |
		str: str, (block value: e With: k) ]
	      MiddleLast: [ | :e. :k. |
		str: str, separator, (block value: e With: k) ]
	      IfEmpty: [].
	    str, rightBracket ).

	_ printStringSize: smax AtDepth: d = ( | fit <- '' |
	    1 to: smax BinarySearchBySignOf: [ | :s. str. |
		str: printStringWith: [ | :e. :k. |
		    (printStringKey: k),
			((reflect: e) nameSize: s Depth: d pred) ].
		str size <= smax ifTrue: [fit: str].
		smax - str size
	    ] IfAbsent: nil.
	    fit).
    | ).
    "_" reducing* = ( |
	^ max = ( reduceWith: [|:e1. :e2| e1 max: e2] IfSingleton: [|:e| e ] ).
	^ min = ( reduceWith: [|:e1. :e2| e1 min: e2] IfSingleton: [|:e| e ] ).
	^ mean = (sum /~ size).
	^ sum = (
	    reduceWith: [|:e1. :e2| e1 + e2] IfSingleton: [|:e| e] IfEmpty: 0).
	^ product = (
	    reduceWith: [|:e1. :e2| e1 * e2] IfSingleton: [|:e| e] IfEmpty: 1).
	^ reduceWith: b = (
	    reduceWith: b IfSingleton: [ error: 'singleton!' ]
			      IfEmpty: [ error: 'I am empty!' ] ).
        ^ reduceWith: b IfSingleton: sb = (
	    reduceWith: b IfSingleton: sb IfEmpty: [ error: 'I am empty!' ] ).
	^ reduceWith: b IfSingleton: sb IfEmpty: mt = ( | r |
	    size = 1 ifTrue: [ ^ sb value: first ].
	    doFirst: [|:e| r: e]
	      MiddleLast: [|:e| r: b value: r With: e]
	      IfEmpty: [r: mt value].
	    r).
    | ).
    "_" searching* = ( |
	^ findFirst: eb IfPresent: fb IfAbsent: fail = (
	    do: [|:v. :k|
		(eb value: v With: k) ifTrue: [^fb value: v With: k].
	    ].
	    fail value).
	^ includes: v = (
            "Subtle, but important: it says v = e, not e = v.
             The argument is in control, not the elements!
             You can depend on it! -- dmu"
	    findFirst: [|:e| v = e] IfPresent: true IfAbsent: false).
	^ occurrencesOf: v = ( | i <- 0 |
	    do: [|:e| v = e ifTrue: [i: i succ]].
	    i).
    | ).
    "_" iterating* = ( |
	^ do: b = (doFirst: b MiddleLast: b IfEmpty: self).
	^ with: c Do: b = (
	    c withNonindexable: self Do: [|:v1. :v2. :k1. :k2|
		b value: v2 With: v1 With: k2 With: k1].
	    self).

	_ withNonindexable: c Do: b = (
	    error: 'cannot coiterate these two collections'.
	    self).
    | ).
    "_" iteratingWithEnds* = ( |
	^ doFirst: f Middle: m Last: lst IfEmpty: e = (
	    | pv. pk. i <- 0 |
	    do: [|:v. :k|
		(i compare: 1
		    IfLess: [i: 1. nil] Equal: [i: 2. f] Greater: [m])
			value: pv With: pk.
		pv: v.  pk: k.
	    ].
	    (i compare: 1 IfLess: [^e value] Equal: [f] Greater: [lst])
	        value: pv With: pk.
	    self).

	^ doFirst: f MiddleLast: ml IfEmpty: e = (
	    doFirst: f Middle: ml Last: ml IfEmpty: e).
	^ doFirstMiddle: fm Last: lst IfEmpty: e = (
	    doFirst: fm Middle: fm Last: lst IfEmpty: e).
	^ doFirstLast: fl Middle: m IfEmpty: e = (
	    doFirst: fl Middle: m Last: fl IfEmpty: e).
    | ).
    "_" concatenating* = ( |
	^ isFlat = true.

	^ , c = (
	    "Returns the concatenation of this collection with c.
	     The concatenation is done lazily; see consVector for further details."

|r|
r: copySize: size + c size .
c do: [|:v. :i| r at: size + i Put: v].
r
	    "consVector copyLeft: self Right: c xxx" ).

	^ flattenSize: s Adding: todo = (
	    "Returns a collection like the receiver that contains the
	     elements of the receiver concatenated with the collections
	     and consVectors in the todo list. Uses the todo list to
	     remember the right children of consVectors."

	    | result |
	    result: copyContaining: self.
	    [todo isEmpty] whileFalse: [
		| leftMost |
		leftMost: todo removeFirst.
		[leftMost isFlat] whileFalse: [
		    todo addFirst: leftMost right.
		    leftMost: leftMost left].
		result addAll: leftMost].
		result ).
    | ).
    _ sorting* = ( |
	^ copySorted = (
	    | sorter = (| element: e1 Precedes: e2 = ( e1 < e2 ) |)  | 
	    copySortedBy: sorter ).
	    
	^ copyReverseSorted = (
	    | sorter = (| element: e1 Precedes: e2 = ( e1 > e2 ) |)  | 
	    copySortedBy: sorter ).

	^ copySortedBy: sorter = (
	    | result |
	    result: copyRemoveAll.
	    sortedBy: sorter Do: [| :el | result add: el].
	    result ).

	^ sortedDo: b = (
	    | sorter = (| element: e1 Precedes: e2 = ( e1 < e2 ) |)  | 
	    sortedBy: sorter Do: b ).
	    
	^ reverseSortedDo: b = (
	    | sorter = (| element: e1 Precedes: e2 = ( e1 > e2 ) |)  | 
	    sortedBy: sorter Do: b).

	^ sortedBy: sorter Do: b = (
	    | queue |
	    queue: priorityQueue copyRemoveAll.
	    queue sorter: sorter.
	    do: [| :el | queue add: el].
	    [queue isEmpty] whileFalse: [b value: queue removeFirst].
	    self ).
    | ).
| )
