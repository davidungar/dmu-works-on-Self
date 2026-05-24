classes _AddSlotsIfAbsent: ( | peekableStream = () | )
classes peekableStream  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes peekableStream methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	accessing* = ( | 

		peek = ( 
			"Answer what would be returned with a self next, without 
			changing position. If the receiver is at the end, answer nil."
			|  nextObject.    | 
			 atEnd ifTrue: [^nil].
			nextObject:  next.
			 skip: -1.
			nextObject).


		peekFor: anObject  = ( 
			"Answer false and do not move the position if self next ~= anObject 
			or if the 
			receiver is at the end. Answer true and increment position if self 
			next = anObject."
			|  nextObject.    | 
			 atEnd ifTrue: [^false].
			nextObject:  next.
			anObject = nextObject ifTrue: ["peek for matching element"
				^true].	"gobble it if found"
			 skip: -1.
			false).


		skip: anInteger  = ( 
			"Move my position by anInteger"
			 subclassResponsibility).


		skipUpTo: anObject  = ( 
			"skip forward to the occurrence (if any, not inclusive) of anObject. If 
			not there, answer nil. Leaves positioned before anObject."
			|  element.    | 
			 atEnd ifTrue: [^nil].
			[ atEnd || [ ( element:  next.  element) = anObject]]
				whileFalse: [ self ].
			element = anObject ifTrue: [ skip: -1].
			 atEnd ifTrue: [^nil].
			self).


	 | ).


	character_reading* = ( | 

		skipSeparators = ( 
			"Move the receiver's position past any separators."
			|  ch.    | 
			[ ( ch:  next.  ch) == nil]
				whileFalse: [ch isSeparator ifFalse: [^ skip: -1]].
			self).


	 | ).


	fileIn* = ( | 

		fileIn = ( 
			"This is special for reading expressions from text that has been 
			formatted 
			with exclamation delimitors. The expressions are read and passed 
			to the 
			default system compiler. Answer the result of compilation."
			|  val.    | 
			smalltalk classes cursor read showWhile: [[[ atEnd]
					whileFalse: 
						[ skipSeparators.
						val: ( peekFor: '!' first )
									ifTrue: [(smalltalk classes object evaluatorClass evaluate:  nextChunk Logged: false)
											scanFrom: self]
									False: [smalltalk classes object evaluatorClass evaluate:  nextChunk Logged: true]]]
					valueNowOrOnUnwindDo: [ close]].
			val).


		nextChunk = ( 
			"Answer the contents of the receiver, up to the next terminator 
			character, with 
			double terminators ignored."
			|  aStream.  char.  terminator.    | 
			terminator: '!' first .
			aStream: ('' copySize: 200) writeStream.
			 skipSeparators.
			[ ( char:  next.  char) == nil]
				whileFalse: [char == terminator
						ifTrue: [( peekFor: terminator)
								ifTrue: ["doubled terminator"
									aStream nextPut: char]
								False: [^aStream contents]]
						False: [aStream nextPut: char]].
			aStream contents).


	 | ).

	my_class = smalltalk classes peekableStream.
	super_traits** = smalltalk classes stream methodDict_iv.
| )

classes peekableStream  _Define: ( |

	my_class_variables* = smalltalk classes peekableStream methodDict_iv my_class_variables.

	methodDict_iv = classes peekableStream methodDict_iv.
| )

classes peekableStream _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes peekableStream.
		superclass_iv = smalltalk classes stream my_class.
	| ).
	name_iv = 'peekableStream'.
	superclass_iv** = smalltalk classes stream.
	my_prototype = ( |
		my_traits* = smalltalk classes peekableStream methodDict_iv.

	| ).
| )
