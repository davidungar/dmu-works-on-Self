_AddSlotsIfAbsent: ( | smalltalk* = () | )
smalltalk _Define: ( |
	  classes = ().

          globals = ().
| )

classes _Define: ( |
	classDescription = ( | methodDict_iv = (). my_class = (). | ).
| )

smalltalk _AddSlots: ( | smalltalk = smalltalk | )

smalltalk _AddSlotsIfAbsent: ( | smalltalkPrimitives = () | )
smalltalkPrimitives _Define: ( |
    primitive_70: cls IfFail: fb = (
		  cls my_prototype _Clone).
| )