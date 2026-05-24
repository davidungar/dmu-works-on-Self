classes _AddSlotsIfAbsent: ( | positionableStream = () | )
classes positionableStream  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes positionableStream methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	accessing* = ( | 

		contents = ( 
			"Answer with a copy of the receiver's collection from 1 to readLimit."
			collection_iv copyFrom: 1 To: readLimit_iv).


		next: anInteger Into: aSequenceableCollection StartingAt: startIndex  = ( 
			"Store the next anInteger elements of the receiver into 
			aSequenceableCollection 
			starting at startIndex in aSequenceableCollection. Answer 
			aSequenceableCollection."
			|  startIndexMinusOne.  howManyRead.    | 
			anInteger < 1 ifTrue: [^aSequenceableCollection].
			 atEnd ifTrue: [^smalltalk classes stream incompleteNextCountSignal raiseRequestWith: 0].	"Use next for the first read to make sure that the receiver is 
			readable."
			aSequenceableCollection at: startIndex Put:  next.
			startIndexMinusOne: startIndex - 1.
			howManyRead: 1.
			[howManyRead < anInteger]
				whileTrue: 
					[
					|  increment.  newHowManyRead.    |  atEnd ifTrue: [^smalltalk classes stream incompleteNextCountSignal raiseRequestWith: howManyRead].
					increment: readLimit_iv - position_iv min: anInteger - howManyRead.
					newHowManyRead: howManyRead + increment.
					aSequenceableCollection
						replaceFrom: startIndex + howManyRead
						To: startIndexMinusOne + newHowManyRead
						With: collection_iv
						StartingAt: position_iv + 1.
					position_iv: position_iv + increment.
					howManyRead: newHowManyRead].
			aSequenceableCollection).


		next: anInteger PutAll: aSequenceableCollection StartingAt: startIndex  = ( 
			"Store the anInteger elements of aSequenceableCollection starting 
			at startIndex into the next anInteger elements of the receiver. 
			Answer aSequenceableCollection"
			|  newPosition.    | 
			anInteger > 1 ifFalse: [^
					resend.next: anInteger
					PutAll: aSequenceableCollection
					StartingAt: startIndex].	"Use nextPut: for the first write to make sure that we may write."
			 nextPut: aSequenceableCollection at: startIndex.
			newPosition: (position_iv + anInteger) - 1.
			newPosition > writeLimit_iv
				ifTrue: 
					[collection_iv growToAtLeast: newPosition.
					writeLimit_iv: collection_iv size].
			collection_iv
				replaceFrom: position_iv + 1
				To: newPosition
				With: aSequenceableCollection
				StartingAt: startIndex + 1.
			position_iv: newPosition.
			aSequenceableCollection).


		skipToAll: aCollection  = ( 
			"Skip forward to the next occurrence (if any) of aCollection. 
			If found, leave the stream positioned before the occurrence, 
			and answer the receiver; if not found, answer nil, 
			and leave the stream positioned at the end."
			|  first.  length.    | 
			 ( length: aCollection size.  length) = 0 ifTrue: [^self].
			first: aCollection at: 1.
			[ atEnd]
				whileFalse: [ next = first
						ifTrue: 
							[
							|  nonMatch.    | nonMatch: 2.
							
							[nonMatch > length
								ifTrue: 
									["Success. Back up over the occurrence."
									 skip: length negated.
									^self].
							 atEnd ifTrue: [^nil].	"Not found."
							 next = (aCollection at: nonMatch)]
								whileTrue: [nonMatch: nonMatch + 1].	"Didn't match, back up."
							 skip: 1 - nonMatch]].
			nil"Not found.").


		throughAll: aCollection  = ( 
			"Answer a subcollection from the current position 
			through the occurrence (if any, inclusive) of aCollection, 
			and leave the stream positioned after the occurrence. 
			If no occurrence is found, answer the entire remaining 
			stream contents, and leave the stream positioned at the end."
			|  first.  length.  newStream.    | 
			 ( length: aCollection size.  length) = 0 ifTrue: [^self].
			first: aCollection at: 1.
			newStream: ( contentsSpecies new: 64) writeStream.
			[ atEnd]
				whileFalse: 
					[
					|  element.    | element:  next.
					newStream nextPut: element.
					element = first
						ifTrue: 
							[
							|  nonMatch.    | nonMatch: 2.
							
							[nonMatch > length
								ifTrue: 
									["Success."
									newStream skip: -1.	"Since the first element has been put in"
									newStream nextPutAll: aCollection.
									^newStream contents].
							 atEnd
								ifTrue: 
									["Not found."
									 skip: 2 - nonMatch.
									["Copy the partial match."
									 atEnd]
										whileFalse: [newStream nextPut:  next].
									^newStream contents].
							 next = (aCollection at: nonMatch)]
								whileTrue: [nonMatch: nonMatch + 1].	"Didn't match, back up."
							 skip: 1 - nonMatch]].
			newStream contents"Not found.").


		upToAll: aCollection  = ( 
			"Answer a subcollection from the current position 
			up to the occurrence (if any, not inclusive) of aCollection, 
			and leave the stream positioned before the occurrence. 
			If no occurrence is found, answer the entire remaining 
			stream contents, and leave the stream positioned at the end."
			|  first.  length.  newStream.    | 
			 ( length: aCollection size.  length) = 0 ifTrue: [^self].
			first: aCollection at: 1.
			newStream: ( contentsSpecies new: 64) writeStream.
			[ atEnd]
				whileFalse: 
					[
					|  element.    | element:  next.
					newStream nextPut: element.
					element = first
						ifTrue: 
							[
							|  nonMatch.    | nonMatch: 2.
							
							[nonMatch > length
								ifTrue: 
									["Success. Back up over the occurrence."
									 skip: length negated.
									newStream skip: -1.
									^newStream contents"Since the first element has been put in"].
							 atEnd
								ifTrue: 
									["Not found."
									 skip: 1 - nonMatch.
									["Copy the partial match."
									 atEnd]
										whileFalse: [newStream nextPut:  next].
									^newStream contents].
							 next = (aCollection at: nonMatch)]
								whileTrue: [nonMatch: nonMatch + 1].	"Didn't match, back up."
							 skip: 1 - nonMatch]].
			newStream contents"Not found.").


	 | ).


	testing* = ( | 

		atEnd = ( 
			"Answer whether the position is greater than or equal to the limit. 
			Fail if either the receiver's position or readLimit is not a 
			SmallInteger."
			smalltalkPrimitives primitive_67: self  IfFail: [ 
				position_iv >= readLimit_iv] ).

		isEmpty = ( 
			"Answer whether the receiver contains any elements."
			position_iv = 0).


	 | ).


	positioning* = ( | 

		position = ( 
			"Answer the current position of accessing the stream."
			position_iv).


		position: anInteger  = ( 
			"Set position to anInteger as long as anInteger is within the bounds 
			of the 
			receiver's contents. If it is not, provide an error notification."
			(anInteger >= 0) && [anInteger <= readLimit_iv]
				ifTrue: [position_iv: anInteger]
				False: [^ positionOutOfBoundsError: anInteger].
			self).


		reset = ( 
			"Set the receiver's position to 0."
			position_iv: 0.
			self).


		setToEnd = ( 
			"Set the position of the receiver to the end of its stream of elements."
			readLimit_iv: readLimit_iv max: position_iv.
			position_iv: readLimit_iv.
			self).


		skip: anInteger  = ( 
			"Set position to position+anInteger. A subclass might choose to be 
			more 
			helpful and select the minimum of self size and position+anInteger 
			or 
			maximum of 1 and position+anInteger for the repositioning."
			 position: position_iv + anInteger.
			self).


	 | ).


	private* = ( | 

		contentsSpecies = ( 
			collection_iv species).


		on: aCollection  = ( 
			collection_iv: aCollection.
			readLimit_iv: aCollection size.
			position_iv: 0.
			 reset.
			self).


		positionOutOfBoundsError: aPosition  = ( 
			"Raise a signal indicating that an object has attempted to set the 
			position of the receiver out of bounds."
			"Since the receiver is not necessarily writable, it is up to the 
			subclasses to override 
			position: if expanding the collection is preferrable to giving this 
			error."
			 class positionOutOfBoundsSignal raiseWith: aPosition).


	 | ).

	my_class = smalltalk classes positionableStream.
	super_traits** = smalltalk classes peekableStream methodDict_iv.
| )

classes positionableStream  _Define: ( |

	my_class_variables* = smalltalk classes positionableStream methodDict_iv my_class_variables.


	instance_creation* = ( | 

		on: aCollection  = ( 
			"Answer a new instance of the receiver, streaming over 
			aCollection."
			 basicNew on: aCollection).


		on: aCollection From: firstIndex To: lastIndex  = ( 
			"Answer a new instance of the receiver, streaming over a copy of 
			aCollection from 
			firstIndex to lastIndex."
			 basicNew on: aCollection copyFrom: firstIndex To: lastIndex).


	 | ).

	methodDict_iv = classes positionableStream methodDict_iv.
| )

classes positionableStream _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes positionableStream.
		superclass_iv = smalltalk classes peekableStream my_class.
	| ).
	name_iv = 'positionableStream'.
	superclass_iv** = smalltalk classes peekableStream.
	my_prototype = ( |
		my_traits* = smalltalk classes positionableStream methodDict_iv.

		collection_iv.
		position_iv.
		readLimit_iv.
		writeLimit_iv.
	| ).
| )
