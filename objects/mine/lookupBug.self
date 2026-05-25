_AddSlots: ( | a = ().  b = ().  c = ().  d = (). | )


    a _Define:  ( | p* = lobby. warning: foo = (resend.warning: foo). | )
    b _Define:  ( | p* = a     | )
    c _Define:  ( | p* = a     | )
    d _Define:  ( | p1* = b.  p2* = c | )
    d warning: 'snort'
