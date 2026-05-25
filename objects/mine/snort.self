( | 
    p* = traits oddball.
    xxx = 17.
    m = (3 + 4).
    tryIt = (
	xxx printLine.
	((reflect: self) slotNamed: 'tryIt') value atName: 'xxx' Put:
	(reflect: 23) IfFail: [|:e| e printLine] .
	xxx printLine.
        (reflect: self) atName: 'xxx' 
	                    Put: ((reflect: self) slotNamed: 'm') value.
	xxx printLine.
        self).
| ) tryIt
	
