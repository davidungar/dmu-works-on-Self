"Sun-$Revision: 30.1 $"

"Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

traits applications _AddSlotsIfAbsent: ( | sim = () | )
applications _AddSlotsIfAbsent: ( | sim = () | )

traits sim _AddSlotsIfAbsent: ( |
    gate = ().
    blackBox = ().
    not  = ().
    and = ().
    c = ().
    cb = ().
    or = ().
    xor = ().
    wire = ().
    probe = ().
    freqCounter = ().
    recip = ().
| )
sim _AddSlotsIfAbsent: ( |
    gate = ().
    blackBox = ().
    lo = ().
    hi = ().
    not  = ().
    and = ().
    c = ().
    cb = ().
    or = ().
    xor = ().
    wire = ().
    probe = ().
    freqCounter = ().
    recip = ().
| )

"
out is my output as a bool
"

traits sim gate _Define: ( |
    parent* = traits clonable.
    not = (out not).
    && g = (out && g out).
    || g = (out || g out).
 ^  ^^ g = (out ^^ g out).
| )

traits sim blackBox _Define: ( |
    p* = traits sim gate.

    out = (internalOut out).
| )

sim blackBox _Define: ( |
    p* = traits sim blackBox.

    internalOut = sim gate.
| )

traits sim recip _Define: ( |
    parent* = traits sim gate.
    out = (1 /= in out).
    text = (in text, ' recip').
| )

traits sim not _Define: ( |
    parent* = traits sim gate.
    out = (in  not).
    text = (in text, ' not').
| )

traits sim wire _Define: ( |
    parent* = traits sim gate.
    text = 'the wire'.
    out = (
        isActive ifTrue: [^output].
	isActive: true.
	output: in out.
	isActive: false.
	output).
| )

traits sim probe _Define: ( |
    parent* = traits sim gate.
    out = (output: in  out.  output).

    start = (isRunning: true. step).
    stop = (isRunning: false).
    step = (
        [isRunning] whileTrue: [
	    out. 
	    t: t + 1.
	    ui fullUpdate]).
| )

traits sim freqCounter _Define: ( |
    parent* = traits sim gate.
    out = ( | m = 2. r. min = 100 |
        r: [n do: [in out.]] time.
	r < min ifTrue: [| oldN |
            oldN: n.
	    n: n * m.
	  ^ out
        ].
        r > (m * min) ifTrue: [| oldN |
	    oldN: n.
	    n: (n / m) max: 1.
	  ^ (oldN /= r) * 1000.
        ].
	(n /= r) * 1000).
| )

traits  sim and _Define: ( |
    parent* = traits sim gate.
    out = (in1 && in2).
| )

traits  sim c _Define: ( |
    parent* = traits sim gate.
    out = ( | i1. i2 |
        i1: in1 out.
	i2: in2 out.
	i1 = i2 ifTrue: [ output: i1 ].
	output).
| )

traits  sim cb _Define: ( |
    parent* = traits sim gate.
    out = ( | i1. i2 |
        i1: in1    out.
	i2: in2Not out not.
	i1 = i2 ifTrue: [ output: i1 ].
	output).
| )

traits sim or _Define: ( |
    parent* = traits sim gate.
    out = (in1 || in2).
| )

traits sim xor _Define: ( |
    parent* = traits sim gate.
    out = (in1 ^^ in2).
| )

sim gate _Define: ( |
    parent* = traits sim gate.
  _ thisObjectPrints = true.
| )

sim lo _Define: sim gate copy _AddSlots: ( |
    copy = (self).
    out = false.
    printString = 'ground'.
| )
    
sim hi _Define: sim gate copy _AddSlots: ( |
    copy = (self).
    out = true.
    printString = 'power'.
| )
    
sim not _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim not.

    in = sim wire.
    printString = 'an inverter'.
| )

sim recip _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim recip.

    in = sim wire.
    printString = 'a reciprocal taker'.
| )

sim wire _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim wire.
    isActive <- false.
    in = sim not.
    output <- false.
    printString = 'a bit of delay'.
| )

sim probe _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim probe.
    in = sim freqCounter.
    output <- false.
    isRunning <- false.
    t <- 0.
    printString = 'a probe'.
| )

sim freqCounter _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim freqCounter.
    n <- 10.
    in = sim not.
    printString = 'a frequency counter'.
| )


sim and _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim and.

    in1 = sim lo.
    in2 = sim lo.
    printString = 'an AND gate'.
| )

sim c _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim c.

    in1 = sim lo.
    in2 = sim lo.
    output <- false.
    printString = 'a comparator'.
| )

sim cb _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim cb.

    in1    = sim lo.
    in2Not = sim lo.
    output <- false.
    printString = 'a not-comparator'.
| )


sim or _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim or.

    in1 = sim lo.
    in2 = sim lo.
    printString = 'an OR gate'.
| )
    
sim xor _Define: sim gate copy _AddSlots: ( |
    parent* = traits sim xor.

    in1 = sim lo.
    in2 = sim lo.
    printString = 'an XOR gate'.
| )
    

sim _AddSlots: ( |
    ring: n = ( | r. w.  |
        w: 0 reflect: wire copy.
	r: w.
	n do: [
            r:  (0 reflect: not copy ) atName: 'in' Put: r.
        ].
        w atName: 'in' Put: r.
	w reflectee).
| )


modules raw _AddSlots: ( |
sim = ( |
	contents = '
	 traits applications sim  gate
	 traits applications sim  blackBox
	 traits applications sim  not 
	 traits applications sim  and
	 traits applications sim  c
	 traits applications sim  cb
	 traits applications sim  or
	 traits applications sim  xor
	 traits applications sim  wire
	 traits applications sim  probe
	 traits applications sim  freqCounter
	 traits applications sim  recip

	 globals applications sim  gate
	 globals applications sim  blackBox
	 globals applications sim  lo
	 globals applications sim  hi
	 globals applications sim  not 
	 globals applications sim  and
	 globals applications sim  c
	 globals applications sim  cb
	 globals applications sim  or
	 globals applications sim  xor
	 globals applications sim  wire
	 globals applications sim  probe
	 globals applications sim  freqCounter
	 globals applications sim  recip

	 globals applications sim ring:
	 '.
	p* = lobby.
	postFileIn = (
[ | bp <- boxBlueprint copy |
  bp: bp copy.
  bp messages: ('start' & 'stop' ) asList.
  bp slotNames: ('in' & 'output' ) asList.
  bp hideOtherSlots.
  boxBlueprintDict add: (reflect: sim probe) Blueprint: bp.
] value.

(sim and & sim or & sim not & sim xor & sim wire) asList do: [ 
    | :obj. bp <- boxBlueprint copy |
  bp: bp copy.
  bp messages: list copyRemoveAll add: 'copy'.
  bp slotNames: (reflect: obj) names asList copyFilteredBy: [|:n|
	('in' isPrefixOf: n) && [n last != ':']
    ].
  bp hideOtherSlots.
  boxBlueprintDict add: (reflect: obj) Blueprint: bp.
].

"pathCache refill"
false ifTrue: [
    (reflect: sim) do: [|:s| ui addMirror: s contents].
].

pathCache refill.
ui add: sim probe.
	    ).
    | ).
	 
| ) 

modules raw sim postFileIn
