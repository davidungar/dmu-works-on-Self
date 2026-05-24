
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

