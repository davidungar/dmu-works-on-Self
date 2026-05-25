shell aliases _AddSlots: ( | 

oleBug = ( |
p* = lobby.

        nnn: n = ( | a <- set copy. |
                   n do: [ a add: (random integer: n) ].
                   n do: [ a includes: (random integer: n) ].
                 ).
        ooo: n = ( | a <- treeSet copy. |
                   n do: [ a add: (random integer: n) ].
                   n do: [ a includes: (random integer: n) ].
                 ).
       time = (
               50 do: [ |:i. n. | 
                    n: 2 power: i.
                    n print. ' \t' print.
                    [ nnn: n ] time print. ' \t' print.
                    [ ooo: n ] time printLine.
               ].
              ).

       myTime = ( | a <- treeSet copyRemoveAll. n <- 512. |
               a: a copy.
	       n do: [ a add:      random integer: n ].
	    [  n do: [ a includes: random integer: n ]. ] profile).

| ).
| )

