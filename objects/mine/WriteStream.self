classes _AddSlotsIfAbsent: ( | writeStream = () | )
classes writeStream  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes writeStream methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	accessing* = ( | 

		contents = ( 
			"Answer the contents of the collection."
			readLimit_iv: readLimit_iv max: position_iv.
			collection_iv copyFrom: 1 To: position_iv).


		flush = ( 
			"Write any unwritten information."
			self).


		next = ( 
			"Provide an error notification that WriteStreams do not permit read 
			access."
			 shouldNotImplement.
			self).


		nextPut: anObject  = ( 
			"Insert the argument at the next position in the Stream represented 
			by the 
			receiver. Answer the argument Fail if the collection of this stream 
			is not 
			an Array or a String. Fail if the stream is positioned at its end, or if 
			the position is out of bounds in the collection. Fail if the argument 
			is not of the right type for the collection."
			smalltalkPrimitives primitive_66: self  With: anObject  IfFail: [ 
				position_iv = writeLimit_iv
					ifTrue: [ pastEndPut: anObject]
					False: [collection_iv at: position_iv: position_iv + 1 Put: anObject].
				anObject] ).

	 | ).


	private* = ( | 

		on: aCollection  = ( 
			"Initialize the instance variables."
			 resend.on: aCollection.
			readLimit_iv: 0.
			self).


	 | ).

	my_class = smalltalk classes writeStream.
	super_traits** = smalltalk classes internalStream methodDict_iv.
| )

classes writeStream  _Define: ( |

	my_class_variables* = smalltalk classes writeStream methodDict_iv my_class_variables.

	methodDict_iv = classes writeStream methodDict_iv.
| )

classes writeStream _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes writeStream.
		superclass_iv = smalltalk classes internalStream my_class.
	| ).
	name_iv = 'writeStream'.
	superclass_iv** = smalltalk classes internalStream.
	my_prototype = ( |
		my_traits* = smalltalk classes writeStream methodDict_iv.

		collection_iv.
		position_iv.
		readLimit_iv.
		writeLimit_iv.
	| ).
| )
