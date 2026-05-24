audio _AddSlots: ( |
    plucks = (
	| rings. nexts. thisRing. this. next. s. sample. |
	rings: vector copySize: 12 FillingWith: 80.
	rings at: 0 Put: 20.
	rings at: 1 Put: 40.
	rings at: 2 Put: 80.
	rings at: 3 Put: 160.
	rings at: 4 Put: 320.
	rings at: 5 Put: 400.
	rings at: 6 Put: 500.
	rings: rings mapBy:
		[| :length |
		 (vector copySize: length) mapBy: [(traits benchmarks rand - 32000) / 100]].
	nexts: vector copySize: rings size FillingWith: 1.

	audio mouth open.
	16000 do:
		[sample: 0.
		 rings size do:
			[| :i |
			 thisRing: rings at: i.
			 this: nexts at: i.
			 next: (this = (thisRing size - 1)) ifTrue: [0] False: [this + 1].
			 s: ((thisRing at: this) + (thisRing at: next)) / 2.
			 thisRing at: this Put: s.
			 sample: sample + s.
			 nexts at: i Put: next].
		 audio mouth putSample: sample].
	audio mouth close).
| )
