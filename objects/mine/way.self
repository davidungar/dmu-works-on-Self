[ | x. y. |
    x: (browse childrenOf: traits canonicalString Limit: 300) copyMappedBy: [|:m| m reflectee].
    'done browsing' printLine.

    '3-way:' printLine.
    10 do: [
	y: treeSet copyRemoveAll.
	[x do: [|:s| y add: s] ] time printLine.
    ].


traits string _AddSlots: ( |
	equals: s = (
	    size = s size ifFalse: [^false].
	    size do: [|:i. c1. c2|
		c1:   byteAt: i.
		c2: s byteAt: i.
		c1 = c2 ifFalse: [^false]
	    ].
	    true).
	    
    lessThan: s = ( | i |
	(size min: s size) do: [|:i. c1. c2| 
	    c1:   byteAt: i.
	    c2: s byteAt: i.
	    (c1 < c2) ifTrue:  [^ true].
	    (c1 = c2) ifFalse: [^ false].
	].	
	size < s size).
| ).


traits treeNodes abstract _AddSlots: ( |
    _ findKey: x IfHere: hereBlock IfNot: notHereBlock = (
	notHereBlock value:
	    (x lessThan: key) ifTrue: [left] False: [
	    (x equals: key)   ifTrue: [^ hereBlock value] False: [right]]).
| ).


    printLine.
    'w/o 3-way:' printLine.
    10 do: [
	y: treeSet copyRemoveAll.
	[x do: [|:s| y add: s] ] time printLine.
    ].
] value

shell cc tree

