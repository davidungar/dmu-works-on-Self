"Sun-$Revision: 30.1 $"

"Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

  "<oddballs system> times"
  "Time-related methods."

  "traits <system> time"
  "<prototypes system> time"
  "Real time."

oddballs system _AddSlotsIfAbsent: ( | ^ times = () | )
times _Define: ( |
    _ parent* = traits oddball.

    ^ user   = ( _TimeUser   ).		"user time in msec used by Self"
    ^ system = ( _TimeSystem ).		"system time in msec used by Self"
    ^ cpu    = ( _TimeCPU    ).		"cpu time (user + system) used by Self"

    ^ real   = ( time current ).

     "wait ms milliseconds"
    ^ delay: ms = ( process this sleep: 400 ).
| )

