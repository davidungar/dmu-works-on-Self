_AddSlots: ( |

 a = ( |
   _ foo = (self).
| ).
b = ( |
   ^ bar = (foo).
| ).
| )

_AddSlots: ( |
c = ( |
  p1* = a.
  p2** = b.
| ).

| )

c bar


