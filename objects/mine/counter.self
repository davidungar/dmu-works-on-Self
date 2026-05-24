traits applications _AddSlots: (|
    counterTwo = ().
|)
prototypes applications _AddSlots: (|
    counterOne = ().
    counterTwo = ().
|)

counterOne _Define: (|
    reset	 = ( count: 0 ).
    tick	 = ( count: count + 1. count ).
    count	<- 0.
|)

traits counterTwo _Define: (|
    copy	 = ( _Clone ).
    reset	 = ( count: 0 ).
    tick	 = ( count: count + incr. count ).
|)

counterTwo _Define: (|
    parent*	= traits counterTwo.
    incr	<- 1.
    count	<- 0.
|)

pathCache refill
shell _AddSlots: (|
    demo = (
	ui add: counterOne With: 'tick'.
	ui add: counterTwo With: 'copy' With: 'tick' With: 'reset'.
    ).
|)


traits ui requests _AddSlots: ( |
    requestFullUpdate: s = (
	screen updateBoxesUntil: false.
	s signal.
	self).
| ) 

traits ui clientRequests _AddSlots: ( |
    ^ fullUpdate = (    	  
          | comment = 'update all objects on the screen, 
	             stopping for naught sync w/ sema'. |
	   "so prompt can send this before ui is started"
	    ifRunning: [| s |
	       s: semaphore copyBinary wait.
	       request requestFullUpdate: s.  
	       s wait.
	       [areEventsPending] whileTrue.]).
| )


