"$Revision:$"

  "traits <collections ordered> interval."
  "<prototype collections ordered> interval."
  "Indexable interval"

traits     collections ordered _AddSlotsIfAbsent: ( | ^ interval = () | )
prototypes collections ordered _AddSlotsIfAbsent: ( | ^ interval = () | )

traits interval _Define: ( |
  _ parent**   = traits indexable.
  _ cloning*** = traits clonable.

  _ collectionName = 'interval'.

    creation* = (|
      ^ copy = ( clone).
      ^ from: begin To: end            = ( (copy start: begin) stop: end).
      ^ from: begin To: end By: skip   = ( (from: begin To: end) step: skip).

XXX include upTo protocol here. I suggest:
      ^ from: begin UpTo: end          = ( from: begin To: end
						        - (end - begin) sign).
      ^ from: begin UpTo: end By: skip = ( from: begin To: end - skip).
    |).

    comparing* = (|
XXX needs to double dispatch
XXX should compare to integers?
XXX should 0 upTo: 7 yield 8?
XXX should behave exactly like an array?
XXX firstKey? lastKey? etc?

       ^ = a = (   (( start = a start)
                 && [ stop  = a stop ])
                 && [ step  = a step ]).
    |).

    accessing* = (|
      ^ at: k = ( ( k >= 0) && [ k < size ]
                ifTrue: [ start + ( step * k)]
                 False: [ error: ( k printString, ' is absent') ]).

XXX why not just name start first?

      ^ first = ( start).

XXX pessimizes unitary step case--I think maybe we should opt it

      ^ last =  ( start + ((( stop - start) /- step ) * step)).
    |).

    adding* = (|
      ^ at: k Put: v = ( error: 'cannot modify interval').
    |).

    removing* = (|
      ^ remove: k IfAbsent: b = ( error: 'cannot modify interval').
    |).

    sizing* = (|
      ^ size = ( step < 0
	           ifTrue: [start < stop
			        ifTrue: [0]
			         False: [ ((s top - start) /- step) succ]]
	            False: [stop < start
			        ifTrue: [0]
			         False: [ ((s top - start) /- step) succ ]]).
    |).

    iterating*  = (|
XXX is key arg to block right?
      ^ do: block = ( start to: stop By: step Do: block ).
      ^ reverseDo: block = ( stop downTo: start By: step Do: block ).
    |).

    printing* = (|
      _ printStringSize: s  = ( printString copyAtMostWithEllipses: s ).
      _ printStringDepth: d         = ( printString ).
      _ printStringSize: s Depth: d = ( printStringSize: s ).
      ^ printString = (
	    'interval{ ', start printString, '..', stop printString,
            (step != 1 ifTrue: [ ' by ', step printString] False: [ '']),
            ' }').
    |).
|)

interval _Define: ( |
  _  parent* = traits interval.

  _  thisObjectPrints = true.

  ^_ start <- 0.
  ^_ stop  <- 0.
  ^_ step  <- 1.
| )
