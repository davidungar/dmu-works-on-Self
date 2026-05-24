classes _AddSlotsIfAbsent: ( | internalStream = () | )
classes internalStream  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes internalStream methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	accessing* = ( | 

		contents = ( 
			"Answer a copy of the receiver's collection from 1 to readLimit."
			readLimit_iv: readLimit_iv max: position_iv.
			collection_iv copyFrom: 1 To: readLimit_iv).


		size = ( 
			"Answer how many elements the receiver contains."
			readLimit_iv: readLimit_iv max: position_iv).


	 | ).


	positioning* = ( | 

		position: anInteger  = ( 
			"Set position to anInteger as long as anInteger is within the bounds 
			of the 
			receiver's contents. If it is not, provide an error notification."
			readLimit_iv: readLimit_iv max: position_iv.
			 resend.position: anInteger.
			self).


		reset = ( 
			"Set the read limit to its maximum position and the receiver's access 
			position to 0."
			readLimit_iv: readLimit_iv max: position_iv.
			position_iv: 0.
			self).


	 | ).


	private* = ( | 

		on: aCollection  = ( 
			collection_iv: aCollection.
			readLimit_iv: writeLimit_iv: aCollection size.
			position_iv: 0.
			 reset.
			self).


		on: aCollection From: firstIndex To: lastIndex  = ( 
			|  len.    | 
			collection_iv: aCollection.
			readLimit_iv: lastIndex > (len: collection_iv size)
						ifTrue: [len]
						False: [lastIndex].
			position_iv: firstIndex <= 1
						ifTrue: [0]
						False: [firstIndex - 1].
			self).


		pastEnd = ( 
			"The receiver has attempted to read past the end, answer nil."
			smalltalk classes signal noHandlerSignal handle: [
				|  :ex.    | ex parameter proceedWith: nil]
				Do: [ class endOfStreamSignal raiseRequestFrom: self]).


		pastEndPut: anObject  = ( 
			"Expand the collection and reset the pointers."
			collection_iv grow.
			writeLimit_iv: collection_iv size.
			collection_iv at: position_iv: position_iv + 1 Put: anObject.
			self).


		with: aCollection  = ( 
			"Initialize the instance variables."
			 resend.on: aCollection.
			position_iv: readLimit_iv: writeLimit_iv: aCollection size.
			self).


	 | ).

	my_class = smalltalk classes internalStream.
	super_traits** = smalltalk classes positionableStream methodDict_iv.
| )

classes internalStream  _Define: ( |

	my_class_variables* = smalltalk classes internalStream methodDict_iv my_class_variables.


	instance_creation* = ( | 

		on: aCollection From: firstIndex To: lastIndex  = ( 
			"Answer a new instance streaming over a copy of aCollection from 
			firstIndex to lastIndex."
			 basicNew
				on: aCollection
				From: firstIndex
				To: lastIndex).


		with: aCollection  = ( 
			"Answer a new instance of the receiver streaming on aCollection. 
			Assume that the 
			collection is already full so the position and the limits are set to the 
			end."
			 basicNew with: aCollection).


		with: aCollection From: firstIndex To: lastIndex  = ( 
			"Answer a new instance of the receiver streaming on the 
			subcollection of aCollection, starting at index firstIndex and ending 
			at lastIndex. Assume that the resulting collection is already full so 
			the position and the limits are set to the end."
			 basicNew with: aCollection copyFrom: firstIndex To: lastIndex).


	 | ).

	methodDict_iv = classes internalStream methodDict_iv.
| )

classes internalStream _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes internalStream.
		superclass_iv = smalltalk classes positionableStream my_class.
	| ).
	name_iv = 'internalStream'.
	superclass_iv** = smalltalk classes positionableStream.
	my_prototype = ( |
		my_traits* = smalltalk classes internalStream methodDict_iv.

		collection_iv.
		position_iv.
		readLimit_iv.
		writeLimit_iv.
	| ).
| )
