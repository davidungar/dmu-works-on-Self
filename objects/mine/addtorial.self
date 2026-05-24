traits integer _AddSlots: ( |
       addtorial = (successor sum).
| )

aliases _AddSlots: ( |
	runIt = (
	    (
	          [11000 do: [100 addtorial]] time	 
	        - [ 1000 do: [100 addtorial]] time
            ) asFloat / 1000 "ms/sec" / 10000 "loop diff" / 100 "# steps").
| )