oddballs _AddSlotsIfAbsent: ( | audio = () | )

audio _Define: ( |
    parent* = lobby.

    playFile: fileName = (
	| comment = 'play an audio file'.
	  in  <- os_file.
          out <- os_file.
          buf <- byteVector. 
        |

	in:  in  openForReading: fileName.
	out: out openForWriting: '/dev/audio'.

	buf: buf cloneSize: 8000 FillingWith: 0.
        [ | :exit.  count <- 1.  |
	    count:  in readInto: buf Count: buf size.
	    count > 0  ifFalse: exit.
	    out writeFrom: buf Count: count.
	] loopExit.

	in  close.
        times delay: 3000.
	out close.

	self).

    scale = (
	audio mouth open.
	pluck: 200 Dur: 10000.
	pluck: 178 Dur: 10000.
	pluck: 159 Dur: 10000.
	pluck: 150 Dur: 10000.
	pluck: 133 Dur: 10000.
	pluck: 119 Dur: 10000.
	pluck: 106 Dur: 10000.
	pluck: 100 Dur: 10000.
	pluck: 200 Dur: 20000.
	audio mouth close).

    pluck: length Dur: cycles = (
	|
	  comment = 'Karplus-Strong plucked string'.
	  ring <-  vector.
	  this <-  0.	"index in ring of current sample"
	  next <-  1.	"index of the next sample"
	  s    <-  0.	"sample value"
	|

	    ring:  vector cloneSize: length FillingWith: 0.
	    "fill the ring with random noise"
	    0 to: length - 1 Do:
		[ | :n |
		  ring at: n Put: 4000 - ((traits benchmarks rand) / 10).
		].

	    cycles do:
		[ s:  ((ring at: this) + (ring at: next)) / 2.
		  audio mouth putSample: s.
		  ring at: this Put: s.
		  this: next.
		  next: (next + 1) % length.
		] ).

     mouth = ( |
        comment = 'the digital mouth'.
	_ parent* = lobby.

	_ audioOutFile <- nil.
	_ buf          <- byteVector cloneSize: 1000 FillingWith: 0.
	_ next         <- 0.

        _ openingAndClosing* = ( |
	    comment = '(chewing...) the mouth can speak into a file; ',
                      'by default, it speaks into the DAC'.

	    open             = (openOn: '/dev/audio').

	    openOn: fileName = (
	        audioOutFile: os_file openForWriting: fileName.
	        next: 0.
	        'mouth is open' print.
		self).

	    close = (
	        times delay: 3000.
		audioOutFile close.
                'mouth is closed' print. 
		self).
	| ).

	_ playing* = ( |

            "output a sample in the range [-4096..4095], uLAW encoded"
            "(samples outside this range will be clipped)"

	    testTone = (
	        5000 do: [-1000 to: 1000 By: 200 Do: [ | :n | putSample: n]].
		self).

	    putSample: s = (
		putByte:   s >= 0  ifTrue: [ compress: s               ]
		                    False: [(compress: s negate) || 128]).

	  _ putByte: aByte = (
	        buf at: next Put: aByte.
	        next: next succ.
	        next  =  buf size   ifTrue: [
		    audioOutFile  writeFrom: buf Count: buf size.
		    next: 0.
                ].
		self).

	  _ compress: sample = (
	      sample <    0  ifTrue: [^error: 'Argument must be non-negative'].

	      sample <   16  ifTrue: [^16r70 || (15 - ((sample -    0) >> 0))].
	      sample <   48  ifTrue: [^16r60 || (15 - ((sample -   16) >> 1))].
	      sample <  112  ifTrue: [^16r50 || (15 - ((sample -   48) >> 2))].
	      sample <  240  ifTrue: [^16r40 || (15 - ((sample -  112) >> 3))].
	      sample <  496  ifTrue: [^16r30 || (15 - ((sample -  240) >> 4))].
	      sample < 1008  ifTrue: [^16r20 || (15 - ((sample -  496) >> 5))].
	      sample < 2032  ifTrue: [^16r10 || (15 - ((sample - 1008) >> 6))].
	      sample < 4080  ifTrue: [^16r00 || (15 - ((sample - 2032) >> 7))].

	      0).

        | ).
    | ).
| )
