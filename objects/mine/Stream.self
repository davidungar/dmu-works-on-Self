classes _AddSlotsIfAbsent: ( | stream = () | )
classes stream  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes stream methodDict_iv _Define: ( |
	my_class_variables* = ( | 
		endOfStreamSignal_cv.  
		streamErrorSignal_cv.  
		incompleteNextCountSignal_cv.  
		positionOutOfBoundsSignal_cv.  
	| ).


	accessing* = ( | 

		contents = ( 
			"Answer with a copy of the receiver's readable information."
			 subclassResponsibility.
			self).


		flush = ( 
			"Write any unwritten information. 
			This is for compatibility with BufferedExternalStreams."
			 subclassResponsibility).


		next = ( 
			"Answer the next object in the receiver."
			 subclassResponsibility.
			self).


		next: anInteger  = ( 
			"Answer the next anInteger elements of the receiver."
			|  newCollection.    | 
			newCollection:  contentsSpecies new: anInteger.
			
				next: anInteger
				Into: newCollection
				StartingAt: 1).


		next: anInteger Into: aSequenceableCollection StartingAt: startIndex  = ( 
			"Store the next anInteger elements of the receiver into 
			aSequenceableCollection 
			starting at startIndex in aSequenceableCollection. Answer 
			aSequenceableCollection."
			|  index.  stopIndex.    | 
			index: startIndex.
			stopIndex: index + anInteger.
			smalltalk classes stream endOfStreamSignal handle: [
				|  :ex.    | ex returnDoing: [ ( | cascade_r | 
							cascade_r: smalltalk classes stream incompleteNextCountSignal newExceptionFrom: self.   
							cascade_r 
						parameter: index - startIndex.   
							cascade_r  raiseRequest ) ]]
				Do: [[index < stopIndex]
						whileTrue: 
							[aSequenceableCollection at: index Put:  next.
							index: index + 1]].
			aSequenceableCollection).


		next: anInteger Put: anObject  = ( 
			"Put anObject into the next anInteger elements of the receiver. 
			Answer anObject."
			anInteger timesRepeat: [ nextPut: anObject].
			anObject).


		next: anInteger PutAll: aSequenceableCollection StartingAt: startIndex  = ( 
			"Store the anInteger elements of aSequenceableCollection starting 
			at startIndex into the next anInteger elements of the receiver. 
			Answer aSequenceableCollection"
			startIndex to: (startIndex + anInteger) - 1 Do: [
				|  :index.    |  nextPut: aSequenceableCollection at: index].
			aSequenceableCollection).


		nextAvailable: anInteger  = ( 
			"Answer the next anInteger elements of the receiver. If there are not 
			enough elements available, answer a collection of as many as are 
			available. 
			
			For example: 
			
			(ReadStream on: #(a b c)) next: 10 
			is an error 
			
			(ReadStream on: #(a b c)) nextAvailable: 10 
			answers (a b c ) 
			"
			|  newCollection.  count.    | 
			newCollection:  contentsSpecies new: anInteger.
			count: 
						nextAvailable: anInteger
						Into: newCollection
						StartingAt: 1.
			count = anInteger
				ifTrue: [newCollection]
				False: [newCollection copyFrom: 1 To: count]).


		nextAvailable: anInteger Into: aSequenceableCollection StartingAt: startIndex  = ( 
			"Store the next anInteger elements of the receiver into 
			aSequenceableCollection 
			starting at startIndex in aSequenceableCollection. If there are not 
			enough elements 
			available, store as many as are available. Answer the number of 
			elements stored. 
			
			For example: 
			
			(ReadStream on: #(a b c)) next: 10 into: aSequenceableCollection 
			startingAt: 1 
			is an error 
			
			(ReadStream on: #(a b c)) nextAvailable: 10 into: 
			aSequenceableCollection startingAt: 1 
			answers 3 
			"
			smalltalk classes stream incompleteNextCountSignal handle: [
				|  :ex.    | ex returnWith: ex parameter]
				Do: 
					[
						next: anInteger
						Into: aSequenceableCollection
						StartingAt: startIndex.
					anInteger]).


		nextMatchFor: anObject  = ( 
			"Read the next element and answer whether it is equal to anObject."
			anObject =  next).


		nextPut: anObject  = ( 
			"Put the argument, anObject, at the next position in the receiver. 
			Answer anObject."
			 subclassResponsibility.
			self).


		nextPutAll: aCollection  = ( 
			"Put each of the elements of aCollection starting at the current 
			position of the receiver. Answer aCollection."
			aCollection isSequenceable
				ifTrue: [
						next: aCollection size
						PutAll: aCollection
						StartingAt: 1]
				False: [aCollection do: [
						|  :v.    |  nextPut: v]].
			aCollection).


		skipThrough: anObject  = ( 
			"Skip forward to the occurrence of anObject. 
			Leaves positioned after anObject. 
			If the object is not found the stream is positioned at the end and nil 
			is returned."
			
			[ atEnd ifTrue: [^nil].
			 next = anObject ifTrue: [^self]] repeat.
			self).


		through: anObject  = ( 
			"Answer a subcollection from the current position to the occurrence 
			(if any, inclusive) 
			of anObject. If not there, answer everything."
			|  newStream.  element.    | 
			newStream: ( contentsSpecies new: 64) writeStream.
			[ atEnd]
				whileFalse: 
					[element:  next.
					newStream nextPut: element.
					element = anObject ifTrue: [^newStream contents]].
			newStream contents).


		upTo: anObject  = ( 
			"Answer a subcollection from position to the occurrence (if any, 
			exclusive) of anObject. 
			The stream is left positioned after anObject. 
			If anObject is not found answer everything."
			|  newStream.  element.    | 
			newStream: ( contentsSpecies new: 64) writeStream.
			[ atEnd]
				whileFalse: 
					[element:  next.
					element = anObject ifTrue: [^newStream contents].
					newStream nextPut: element].
			newStream contents).


		upToEnd = ( 
			"Answer a collection consisting of all the elements from the current 
			position 
			to the end of stream."
			|  newStream.    | 
			newStream: ( contentsSpecies new: 64) writeStream.
			[ atEnd]
				whileFalse: [newStream nextPut:  next].
			newStream contents).


	 | ).


	testing* = ( | 

		atEnd = ( 
			"Answer whether the position is greater than or equal to the limit."
			 subclassResponsibility.
			self).


	 | ).


	enumerating* = ( | 

		do: aBlock  = ( 
			"Evaluate aBlock for each of the elements of the receiver."
			[ atEnd]
				whileFalse: [aBlock value:  next].
			self).


	 | ).


	character_writing* = ( | 

		cr = ( 
			"Append a return character to the receiver."
			 nextPut: smalltalk classes character cr.
			self).


		crtab = ( 
			"Append a return character, followed by a single tab character, to 
			the receiver."
			 nextPut: smalltalk classes character cr.
			 nextPut: smalltalk classes character tab.
			self).


		crtab: anInteger  = ( 
			"Append a return character, followed by anInteger tab characters, 
			to the receiver."
			 nextPut: smalltalk classes character cr.
			anInteger timesRepeat: [ nextPut: smalltalk classes character tab].
			self).


		emphasis = ( 
			"Answer nil."
			"Allows compatibility with streams which carry emphasis"
			nil).


		emphasis: ignored  = ( 
			"Ignore this message."
			"Allows compatibility with streams which carry emphasis"
			self).


		space = ( 
			"Append a space character to the receiver."
			 nextPut: smalltalk classes character space.
			self).


		tab = ( 
			"Append a tab character to the receiver."
			 nextPut: smalltalk classes character tab.
			self).


	 | ).


	status* = ( | 

		close = ( 
			"Sets the status of the stream to be closed."
			"This message does nothing at this level, but is included for 
			ExternalStream 
			compatibility."
			self).


	 | ).


	fileOut* = ( | 

		fileOutChanges = ( 
			"Append to the receiver a description of all system changes."
			smalltalk classes cursor write showWhile: [
				[ timeStamp.
				smalltalk globals smalltalk changes fileOutOn: self]
					valueNowOrOnUnwindDo: [ close]].
			self).


		fileOutChangesFor: class  = ( 
			"Append to the receiver a description of the changes to the 
			argument, class."
			smalltalk classes cursor write showWhile: [
				[
				|  initialize.    |  timeStamp.
				initialize: smalltalk classes set new.
				smalltalk globals smalltalk changes
					fileOutChangesFor: class
					On: self
					IfInitializeAddTo: initialize.
				initialize do: 
					[
					|  :someClass.    | 
					 cr.
					 nextChunkPut: someClass name , ' initialize'].
				 cr]
					valueNowOrOnUnwindDo: [ close]].
			self).


		nextChunkPut: aString  = ( 
			"Put aString onto self, doubling embedded terminators."
			|  char.  terminator.    | 
			terminator: '!' first .
			1 to: aString size
				Do: 
					[
					|  :index.    | 
					char: aString at: index.
					 nextPut: char.
					char == terminator ifTrue: ["double imbedded terminator"
						 nextPut: char]].
			 nextPut: terminator.
			self).


		timeStamp = ( 
			"Append the current time to the receiver as a chunk."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 16.
			smalltalk globals smalltalk timeStamp: aStream.
			 nextChunkPut: aStream contents printString.	"double quotes and !s"
			 (   cr.    cr ) .
			self).


	 | ).


	printing* = ( | 

		print: anObject  = ( 
			"Have anObject print on the receiver."
			anObject printOn: self.
			self).


		store: anObject  = ( 
			"Have anObject print on the receiver for rereading."
			anObject storeOn: self.
			self).


	 | ).


	private* = ( | 

		contentsSpecies = ( 
			smalltalk classes array).


	 | ).

	my_class = smalltalk classes stream.
	super_traits** = smalltalk classes object methodDict_iv.
| )

classes stream  _Define: ( |

	my_class_variables* = smalltalk classes stream methodDict_iv my_class_variables.


	class_initialization* = ( | 

		initialize = ( 
			"Initialize signals."
			"Stream initialize"
			endOfStreamSignal_cv:  ( | cascade_r | 
							cascade_r: smalltalk classes object informationSignal newSignal.   
							cascade_r  notifierString: 'End of stream'.   
							cascade_r  nameClass: self Message: 'endOfStreamSignal' ) .
			streamErrorSignal_cv:  ( | cascade_r | 
							cascade_r: smalltalk classes object errorSignal newSignal.   
							cascade_r  notifierString: 'Streaming error'.   
							cascade_r  nameClass: self Message: 'errorSignal' ) .
			positionOutOfBoundsSignal_cv:  ( | cascade_r | 
							cascade_r: streamErrorSignal_cv newSignal.   
							cascade_r  notifierString: 'position out of bounds: '.   
							cascade_r  nameClass: self Message: 'positionOutOfBoundsSignal' ) .
			incompleteNextCountSignal_cv:  ( | cascade_r | 
							cascade_r: streamErrorSignal_cv newSignal.   
							cascade_r  notifierString: 'not enough elements available'.   
							cascade_r  nameClass: self Message: 'incompleteNextCountSignal' ) .
			self).


	 | ).


	instance_creation* = ( | 

		new = ( 
			"Provide an error notification that Streams are not created 
			using this message."
			 error: 'Streams are created with on: and with:'.
			self).


	 | ).


	signal_constants* = ( | 

		endOfStreamSignal = ( 
			endOfStreamSignal_cv).


		errorSignal = ( 
			streamErrorSignal_cv).


		incompleteNextCountSignal = ( 
			incompleteNextCountSignal_cv).


		positionOutOfBoundsSignal = ( 
			positionOutOfBoundsSignal_cv).


	 | ).

	methodDict_iv = classes stream methodDict_iv.
| )

classes stream _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes stream.
		superclass_iv = smalltalk classes object my_class.
	| ).
	name_iv = 'stream'.
	superclass_iv** = smalltalk classes object.
	my_prototype = ( |
		my_traits* = smalltalk classes stream methodDict_iv.

	| ).
| )
