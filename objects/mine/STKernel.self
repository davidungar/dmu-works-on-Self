classes _AddSlotsIfAbsent: ( | metaclass = () | )
classes metaclass  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes metaclass methodDict_iv _Define: ( |
	my_class_variables* = ( | 
		obsoleteSignal_cv.  
	| ).


	initialize_release* = ( | 

		instanceVariableNames: instVarString  = ( 
			"Declare additional variables for my instances."
			 ( | cascade_r | 
					cascade_r:  classBuilder.   
					cascade_r  currentClass: self.   
					cascade_r  superclass: superclass_iv.   
					cascade_r  instVarString: instVarString.   
					cascade_r  reviseSystem ) ).


	 | ).


	accessing* = ( | 

		name = ( 
			"Answer a String that is the name of the receiver, either Metaclass 
			or the 
			name of the receiver's class followed by the ' class'."
			thisClass_iv == nil
				ifTrue: [^'a Metaclass']
				False: [^thisClass_iv name , ' class'].
			self).


		soleInstance = ( 
			"The receiver has only one instance. Answer it. 
			If the receiver is an obsolete metaclass, raise a signal."
			thisClass_iv == nil ifTrue: [^smalltalk classes metaclass obsoleteSignal raise].
			thisClass_iv).


	 | ).


	testing* = ( | 

		isMeta = ( 
			true).


		isObsolete = ( 
			"Answer whether the receiver is an obsolete metaclass."
			(thisClass_iv == nil) || [thisClass_iv ~~ (smalltalk globals smalltalk at: thisClass_iv name IfAbsent: [nil])]"should only be true for obsolete metaclass").


	 | ).


	copying* = ( | 

		postCopy = ( 
			 resend.postCopy.
			thisClass_iv: nil.
			self).


	 | ).


	instance_creation* = ( | 

		adopt: aClass  = ( 
			"Define the current class for this metaclass."
			aClass class == self ifFalse: [^ error: 'Invalid assignment'].
			thisClass_iv: aClass.
			self).


		new = ( 
			"The receiver can only have one instance. Create it or complain 
			that 
			one already exists."
			thisClass_iv == nil
				ifTrue: [^thisClass_iv:  resend.new]
				False: [ error: 'A Metaclass should only have one instance!'].
			self).


	 | ).


	instance_variables* = ( | 

		addInstVarName: aString  = ( 
			"Add the argument, aString, as one of the receiver's instance 
			variables."
			|  fullString.    | 
			fullString: aString.
			 instVarNames do: [
				|  :aString2.    | fullString: aString2 , ' ' , fullString].
			 instanceVariableNames: fullString.
			self).


		removeInstVarName: aString  = ( 
			"Remove the argument, aString, as one of the receiver's instance 
			variables."
			|  newArray.  newString.    | 
			( instVarNames includes: aString)
				ifFalse: [ error: aString , ' is not one of my instance variables'].
			newArray:  instVarNames copyWithout: aString.
			newString: ''.
			newArray do: [
				|  :aString2.    | newString: aString2 , ' ' , newString].
			 instanceVariableNames: newString.
			self).


	 | ).


	class_variables* = ( | 

		addClassVarName: aString  = ( 
			"Add the new class variable named aString to the receiver."
			thisClass_iv addClassVarName: aString).


		classPool = ( 
			"Answer the dictionary of class variables."
			thisClass_iv classPool).


	 | ).


	class_hierarchy* = ( | 

		subclasses = ( 
			"Answer the receiver's subclasses."
			|  sub.  temp.    | 
			sub: thisClass_iv subclasses.
			temp: smalltalk classes identitySet new: sub size * 2.
			sub do: [
				|  :c.    | c isMeta ifFalse: [temp add: c class]].
			temp).


	 | ).


	compiling* = ( | 

		fullScopeHas: name IfTrue: assocBlock  = ( 
			thisClass_iv fullScopeHas: name IfTrue: assocBlock).


		scopeHas: name IfTrue: assocBlock  = ( 
			thisClass_iv scopeHas: name IfTrue: assocBlock).


	 | ).


	printing* = ( | 

		definition = ( 
			"Answer with a string that defines me"
			|  aStream.  names.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 300.
			 printOn: aStream.
			aStream nextPutAll: '\r\tinstanceVariableNames: \''.
			names:  instVarNames.
			1 to: names size Do: [
				|  :i.    |  ( | cascade_r | 
						cascade_r: aStream.   
						cascade_r  nextPutAll: names at: i.   
						cascade_r  space ) ].
			aStream nextPut: '\'' first .
			aStream contents).


	 | ).


	fileIn_Out* = ( | 

		fileOutOn: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"File me out on aFileStream."
			
				resend.fileOutOn: aFileStream
				MoveSource: moveSource
				ToFile: fileIndex.
			(methodDict_iv includesKey: 'initialize')
				ifTrue: 
					[aFileStream cr.
					aFileStream cr.
					aFileStream nextChunkPut: thisClass_iv name , ' initialize'.
					aFileStream cr].
			self).


		fileOutOn: aFileStream MoveSource: moveSource ToFile: fileIndex IfInitializeAddTo: aClassCollection  = ( 
			"File the receiver out on aFileStream. If the receiver's soleInstance 
			is 
			to be initialized on fileIn, add the soleInstance to aClassCollection"
			
				resend.fileOutOn: aFileStream
				MoveSource: moveSource
				ToFile: fileIndex.
			(methodDict_iv includesKey: 'initialize')
				ifTrue: [aClassCollection add: thisClass_iv].
			self).


		nonTrivial = ( 
			"Answer whether the receiver has some state or methods or class 
			comment."
			( instVarNames size > 0) || [(methodDict_iv size > 0) || [ comment size > 0]]).


	 | ).

	my_class = smalltalk classes metaclass.
	super_traits** = smalltalk classes classDescription methodDict_iv.
| )

classes metaclass  _Define: ( |

	my_class_variables* = smalltalk classes metaclass methodDict_iv my_class_variables.


	class_initialization* = ( | 

		initialize = ( 
			"Initialize signals."
			|  es.    | 
			es: smalltalk classes object errorSignal.
			obsoleteSignal_cv:  ( | cascade_r | 
							cascade_r: es newSignal.   
							cascade_r  notifierString: 'Obsolete metaclass'.   
							cascade_r  nameClass: self Message: 'obsoleteSignal' ) .
			self).


	 | ).


	signal_constants* = ( | 

		obsoleteSignal = ( 
			obsoleteSignal_cv).


	 | ).

	methodDict_iv = classes metaclass methodDict_iv.
| )

classes metaclass _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes metaclass.
		superclass_iv = smalltalk classes classDescription my_class.
	| ).
	name_iv = 'metaclass'.
	superclass_iv** = smalltalk classes classDescription.
	my_prototype = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.

		superclass_iv.
		methodDict_iv.
		format_iv.
		subclasses_iv.
		instanceVariables_iv.
		organization_iv.
		thisClass_iv.
	| ).
| )
classes _AddSlotsIfAbsent: ( | class = () | )
classes class  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes class methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	initialize_release* = ( | 

		declare: varString  = ( 
			"Declare class variables common to all instances. Answer whether 
			recompilation is advisable."
			|  newVars.  conflicts.    | 
			newVars: (smalltalk classes scanner new scanFieldNames: varString)
						collect: [
							|  :x.    | x asSymbol].
			newVars do: [
				|  :var.    | var first isLowercase ifTrue: [ notify: var , ' class variable name should be capitalized; proceed to include anyway.']].
			conflicts: false.
			classPool_iv == nil ifFalse: [(classPool_iv keys reject: [
					|  :x.    | newVars includes: x])
					do: [
						|  :var.    |  removeClassVarName: var]].
			(newVars reject: [
				|  :var.    |  classPool includesKey: var])
				do: [
					|  :var.    | "adding"
					"check if new vars defined elsewhere"
					( fullScopeHas: var IfTrue: [
						|  :ignored.    |  self ])
						ifTrue: 
							[ notify: var , ' is defined elsewhere'.
							conflicts: true]].
			newVars size > 0
				ifTrue: 
					[classPool_iv:  classPool.
					newVars do: [
						|  :var.    | "in case it was nil"
						classPool_iv declare: var From: smalltalk globals undeclared]].
			conflicts).


		localObsolete = ( 
			"Change the receiver to an obsolete class by changing its name to 
			have the prefix -AnObsolete-, and nilling the fields of any 
			instances."
			 isPointers ifTrue: [ allInstancesDo: [
					|  :instance.    | instance nilFields]].
			('AnObsolete*' match: name_iv)
				ifFalse: ["nil fields of instances"
					name_iv: 'AnObsolete' , name_iv].
			classPool_iv: smalltalk classes dictionary new.
			 resend.localObsolete.
			self).


		obsolete = ( 
			"Change the receiver to an obsolete class by changing its name to 
			have the prefix -AnObsolete-, and nilling the fields of any 
			instances."
			 class obsolete.
			 resend.obsolete.
			self).


		removeFromSystem = ( 
			"Forget the receiver, and all of its subclasses, from the Smalltalk 
			global dictionary. Any existing instances will refer to an obsolete 
			version of the receiver."
			
				"remove from system dictionary"smalltalk globals smalltalk removeClassNamed:  name.
			self).


		sharing: poolString  = ( 
			"Set up sharedPools. Answer whether recompilation is advisable."
			|  oldPools.    | 
			oldPools:  sharedPools.
			sharedPools_iv: smalltalk classes set new.
			(smalltalk classes scanner new scanFieldNames: poolString)
				do: [
					|  :poolName.    | sharedPools_iv add: smalltalk globals smalltalk at: poolName asSymbol].
			sharedPools_iv isEmpty ifTrue: [sharedPools_iv: nil].
			oldPools detect: [
				|  :pool.    | ( sharedPools includes: pool) not]
				IfNone: [^false].
			true"A pool got deleted - who knows if there are still references?").


	 | ).


	accessing* = ( | 

		classPool = ( 
			"Answer the dictionary of class variables."
			classPool_iv == nil
				ifTrue: [^smalltalk classes dictionary new]
				False: [^classPool_iv].
			self).


		name = ( 
			"Answer the name of the receiver."
			name_iv == nil
				ifTrue: [^'a Class']
				False: [^name_iv].
			self).


		setName: aSymbol  = ( 
			"Set the name of the receiver to be aSymbol."
			name_iv: aSymbol.
			self).


	 | ).


	accessing_class_hierarchy* = ( | 

		isObsolete = ( 
			"Answer whether the receiver is an obsolete class."
			 class isObsolete"ask the metaclass").


	 | ).


	testing_method_dictionary* = ( | 

		hasMethods = ( 
			"Answer a Boolean as to whether any methods are defined for the 
			receiver 
			(includes whether there are methods defined in the receiver's 
			metaclass)."
			 resend.hasMethods || [ class hasMethods]).


	 | ).


	class_name* = ( | 

		rename: aString  = ( 
			"The new name of the receiver is the argument, aString."
			|  newName.    | 
			newName: aString asSymbol.
			(smalltalk globals smalltalk includesKey: newName)
				ifTrue: [^ error: newName , ' already exists'].
			smalltalk globals smalltalk renameClass: self As: newName.
			name_iv: newName.
			 comment:  comment.
			 class comment:  class comment.
			self).


		renameAndFixSourceTo: newName  = ( 
			"The new name of the receiver is the argument, aString. 
			Rename the receiver, and then change all references in 
			the system from the old name to the new name."
			|  oldName.    | 
			oldName:  name.
			 rename: newName.
			 renameReferencesFrom: oldName.
			self).


		renameReferencesFrom: oldNameString  = ( 
			"The old name of the receiver is the argument, oldNameString. 
			Change all references in the system from the old name 
			to the new (current) one."
			|  oldName.  ref.  meths.  s.  cat.  pos.    | 
			oldName: oldNameString asSymbol.
			ref: smalltalk globals smalltalk associationAt: oldName IfAbsent: [smalltalk globals smalltalk associationAt:  name].
			smalltalk globals smalltalk
				allBehaviorsDo: 
					[
					|  :b.    | 
					meths: b whichSelectorsReferTo: ref.
					meths size > 0 ifTrue: [meths do: [
							|  :sel.    | sel == 'DoIt'
								ifFalse: 
									[s: b sourceCodeAt: sel.
									cat: b whichCategoryIncludesSelector: sel.
									 ( | cascade_r | 
											cascade_r: smalltalk globals transcript.   
											cascade_r  cr.   
											cascade_r  show: b name , ' (' , cat , ') ' , '>> ' , sel ) .
									pos: smalltalk classes scanner new scanPositionsFor: oldName InString: s.
									pos reverseDo: [
										|  :p.    | s: s
													copyReplaceFrom: p
													To: (p + oldName size) - 1
													With: name_iv].
									b compile: s Classified: cat]]]].
			self).


		renameToReplace: aClass  = ( 
			"Obsolete aClass, and then rename the receiver to 
			have the name that aClass currently has."
			|  oldName.  newName.    | 
			oldName:  name.
			newName: aClass name.
			aClass obsolete.
			smalltalk globals systemOrganization removeElement: oldName.
			smalltalk globals smalltalk changes renameClass: self As: newName.
			smalltalk globals smalltalk at: newName Put: self.
			name_iv: newName.
			smalltalk globals smalltalk flushClassNameCache.
			 renameReferencesFrom: oldName.
			smalltalk globals smalltalk removeKey: oldName.
			self).


	 | ).


	instance_variables* = ( | 

		addInstVarName: aString  = ( 
			"Add the argument, aString, as one of the receiver's instance 
			variables."
			 ( | cascade_r | 
					cascade_r:  classBuilder.   
					cascade_r  currentClass: self.   
					cascade_r  superclass: superclass_iv.   
					cascade_r  environment:  environment.   
					cascade_r  instanceVariables:  instVarNames copyWith: aString.   
					cascade_r  format:  format.   
					cascade_r  reviseSystem ) .
			self).


		removeInstVarName: aString  = ( 
			"Remove the argument, aString, as one of the receiver's instance 
			variables."
			( instVarNames includes: aString)
				ifFalse: [ error: aString , ' is not one of my instance variables'].
			 ( | cascade_r | 
					cascade_r:  classBuilder.   
					cascade_r  currentClass: self.   
					cascade_r  superclass: superclass_iv.   
					cascade_r  environment:  environment.   
					cascade_r  instanceVariables:  instVarNames copyWithout: aString.   
					cascade_r  format:  format.   
					cascade_r  reviseSystem ) .
			self).


	 | ).


	class_variables* = ( | 

		addClassVarName: aString  = ( 
			"Add the argument, aString, as a class variable of the receiver."
			aString first isLowercase ifTrue: [ notify: aString , ' class variable name should be capitalized; proceed to include anyway.'].
			 withAllSubclasses do: [
				|  :subclass.    | subclass poolHas: aString asSymbol IfTrue: [
					|  :ignored.    | ^ error: aString , ' is already used as a variable name in ' , subclass name]].
			classPool_iv:  classPool.	"might be nil"
			classPool_iv add: smalltalk classes association key: aString asSymbol Value: nil.
			self).


		allClassVarNames = ( 
			"Answer a Set of the names of the receiver's class variables, 
			including those 
			defined in the superclasses of the receiver."
			|  aSet.    | 
			superclass_iv == nil
				ifTrue: [^ classVarNames]
				False: 
					["This is the keys so it is a new Set."
					aSet: superclass_iv allClassVarNames.
					aSet addAll:  classVarNames.
					^aSet].
			self).


		classVarNames = ( 
			"Answer a Set of the names of the class variables defined in the 
			receiver."
			 classPool keys).


		initialize = ( 
			"Typically used for the initialization of class variables and 
			metaclass instance 
			variables. Does nothing, but may be overridden in Metaclasses."
			self).


		removeClassVarName: aString  = ( 
			"Remove the class variable whose name is the argument, aString, 
			from the names 
			defined in the receiver, a class."
			|  aSymbol.    | 
			aSymbol: aString asSymbol.
			(classPool_iv includesKey: aSymbol)
				ifFalse: [^ error: aString , ' is not a class variable'].
			( superclass allClassVarNames includes: aSymbol)
				ifFalse: [ withAllSubclasses do: [
						|  :subclass.    | (smalltalk classes array with: subclass With: subclass class)
							do: [
								|  :classOrMeta.    | (classOrMeta whichSelectorsReferTo: classPool_iv associationAt: aSymbol) isEmpty ifFalse: [^ notify: aString , ' is still used in code of class ' , classOrMeta name]]]].
			classPool_iv removeKey: aSymbol.
			self).


	 | ).


	pool_variables* = ( | 

		addSharedPool: aDictionary  = ( 
			"Add the argument, aDictionary, as one of the receiver's pool 
			dictionaries. Create 
			an error if the dictionary is already one of the pools."
			( sharedPools includes: aDictionary)
				ifTrue: [^ error: 'The dictionary is already in my pool'].
			sharedPools_iv == nil
				ifTrue: [sharedPools_iv: smalltalk classes set with: aDictionary]
				False: [sharedPools_iv add: aDictionary].
			self).


		allSharedPools = ( 
			"Answer a Set of the pools the receiver shares, including those 
			defined 
			in the superclasses of the receiver."
			|  aSet.    | 
			superclass_iv == nil
				ifTrue: [^ sharedPools copy]
				False: 
					[aSet: superclass_iv allSharedPools.
					aSet addAll:  sharedPools.
					^aSet].
			self).


		removeSharedPool: aDictionary  = ( 
			"Remove the pool dictionary, aDictionary, as one of the receiver's 
			pool dictionaries. 
			Create an error if the dictionary is not one of the pools."
			|  satisfiedSet.  workingSet.  aSubclass.    | 
			( sharedPools includes: aDictionary)
				ifFalse: [^ error: 'the dictionary is not in my pool'].
			( allSuperclasses select: [
				|  :class.    | "first see if it is declared in a superclass in which case we can 
				remove it."
				class sharedPools includes: aDictionary]) isEmpty
				ifFalse: 
					[sharedPools_iv remove: aDictionary.
					sharedPools_iv isEmpty ifTrue: [sharedPools_iv: nil].
					^self].	"second get all the subclasses that reference aDictionary through 
			me rather than a 
			superclass that is one of my subclasses."
			workingSet:  subclasses asOrderedCollection.
			satisfiedSet: smalltalk classes set new.
			[workingSet isEmpty]
				whileFalse: 
					[aSubclass: workingSet removeFirst.
					(aSubclass sharedPools includes: aDictionary)
						ifFalse: 
							[satisfiedSet add: aSubclass.
							workingSet addAll: aSubclass subclasses]].	"for each of these, see if they refer to any of the variables in 
			aDictionary because 
			if they do, we can not remove the dictionary."
			satisfiedSet add: self.
			satisfiedSet do: [
				|  :sub.    | aDictionary associationsDo: [
					|  :aGlobal.    | (sub whichSelectorsReferTo: aGlobal) isEmpty ifFalse: [^ error: aGlobal key , ' is still used in code of class ' , sub name]]].
			sharedPools_iv remove: aDictionary.
			sharedPools_iv isEmpty ifTrue: [sharedPools_iv: nil].
			self).


		sharedPools = ( 
			"Answer a Set of the pool dictionaries declared in the receiver."
			sharedPools_iv == nil
				ifTrue: [^smalltalk classes set new]
				False: [^sharedPools_iv].
			self).


	 | ).


	compiling* = ( | 

		compileAllFrom: otherClass  = ( 
			 resend.compileAllFrom: otherClass.
			 class compileAllFrom: otherClass class.
			self).


		poolHas: varName IfTrue: assocBlock  = ( 
			"Look up the first argument in the context of the receiver. If it is 
			there, 
			pass the association to assocBlock, and answer true, else answer 
			false."
			|  assoc.    | 
			assoc:  classPool associationAt: varName IfAbsent: [ self ].
			assoc == nil
				ifFalse: 
					[assocBlock value: assoc.
					^true].
			 sharedPools do: 
				[
				|  :pool.    | 
				assoc: pool associationAt: varName IfAbsent: [ self ].
				assoc == nil
					ifFalse: 
						[assocBlock value: assoc.
						^true]].
			false).


	 | ).


	subclass_creation* = ( | 

		subclass: t InstanceVariableNames: f ClassVariableNames: d PoolDictionaries: s Category: cat  = ( 
			"This is the standard initialization message for creating a new class 
			as a subclass 
			of an existing class (the receiver)."
			 ( | cascade_r | 
					cascade_r:  classBuilder.   
					cascade_r  superclass: self.   
					cascade_r  environment:  environment.   
					cascade_r  className: t.   
					cascade_r  instVarString: f.   
					cascade_r  classVarString: d.   
					cascade_r  poolString: s.   
					cascade_r  category: cat.   
					cascade_r  beFixed.   
					cascade_r  reviseSystem ) ).


		variableByteSubclass: t InstanceVariableNames: f ClassVariableNames: d PoolDictionaries: s Category: cat  = ( 
			"This is the standard initialization message for creating a new class 
			as a subclass of an existing class (the receiver) in which the 
			subclass is to have indexable byte-sized nonpointer variables."
			 ( | cascade_r | 
					cascade_r:  classBuilder.   
					cascade_r  superclass: self.   
					cascade_r  environment:  environment.   
					cascade_r  className: t.   
					cascade_r  instVarString: f.   
					cascade_r  classVarString: d.   
					cascade_r  poolString: s.   
					cascade_r  category: cat.   
					cascade_r  beBytes.   
					cascade_r  reviseSystem ) ).


		variableSubclass: t InstanceVariableNames: f ClassVariableNames: d PoolDictionaries: s Category: cat  = ( 
			"This is the standard initialization message for creating a new class 
			as a subclass 
			of an existing class (the receiver) in which the subclass is to have 
			indexable 
			pointer variables."
			 ( | cascade_r | 
					cascade_r:  classBuilder.   
					cascade_r  superclass: self.   
					cascade_r  environment:  environment.   
					cascade_r  className: t.   
					cascade_r  instVarString: f.   
					cascade_r  classVarString: d.   
					cascade_r  poolString: s.   
					cascade_r  category: cat.   
					cascade_r  beVariable.   
					cascade_r  reviseSystem ) ).


	 | ).


	fileIn_Out* = ( | 

		fileOut = ( 
			"Create a file whose name is the name of the receiver with -.st- as 
			the 
			extension, and file a description of the receiver onto it"
			|  fileStream.    | 
			 ( | cascade_r | 
					cascade_r: smalltalk globals transcript.   
					cascade_r  cr.   
					cascade_r  cr.   
					cascade_r  show: 'Filing out class:' ) .
			fileStream: (smalltalk classes filename named:  name , '.st') writeStream.
			
			[fileStream timeStamp.
			
				fileOutOn: fileStream
				MoveSource: false
				ToFile: 0]
				valueNowOrOnUnwindDo: [fileStream close].
			 removeFromChanges.
			self).


		fileOutOn: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"File a description of the receiver on aFileStream. If the boolean 
			argument, 
			moveSource, is true, then set the trailing bytes to the position of 
			aFileStream and 
			to fileIndex in order to indicate where to find the source code."
			 ( | cascade_r | 
					cascade_r: smalltalk globals transcript.   
					cascade_r  cr.   
					cascade_r  show: name_iv ) .
			
				resend.fileOutOn: aFileStream
				MoveSource: moveSource
				ToFile: fileIndex.
			 class nonTrivial
				ifTrue: 
					[ ( | cascade_r | 
							cascade_r: aFileStream.   
							cascade_r  cr.   
							cascade_r  nextPutAll: '"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!'.   
							cascade_r  cr.   
							cascade_r  cr ) .
					 class
						fileOutOn: aFileStream
						MoveSource: moveSource
						ToFile: fileIndex].
			self).


		fileOutOn: aFileStream MoveSource: moveSource ToFile: fileIndex IfInitializeAddTo: aClassCollection  = ( 
			"File a description of the receiver on aFileStream. If the boolean 
			argument, 
			moveSource, is true, then set the trailing bytes to the position of 
			aFileStream and 
			to fileIndex in order to indicate where to find the source code. If the 
			class is 
			to be initialized on fileIn, add the receiver to aClassCollection"
			 ( | cascade_r | 
					cascade_r: smalltalk globals transcript.   
					cascade_r  cr.   
					cascade_r  show: name_iv ) .
			
				resend.fileOutOn: aFileStream
				MoveSource: moveSource
				ToFile: fileIndex.
			 class nonTrivial
				ifTrue: 
					[ ( | cascade_r | 
							cascade_r: aFileStream.   
							cascade_r  cr.   
							cascade_r  nextPutAll: '"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!'.   
							cascade_r  cr.   
							cascade_r  cr ) .
					 class
						fileOutOn: aFileStream
						MoveSource: moveSource
						ToFile: fileIndex
						IfInitializeAddTo: aClassCollection].
			self).


		printOut = ( 
			"Create a readable version of my definition, and send to a printer. 
			Defaults to fileOut."
			 fileOut.
			self).


		printOutOn: aStream  = ( 
			"Print me and my metaclass out on aStream"
			 resend.printOutOn: aStream.
			 class nonTrivial ifTrue: [ class printOutOn: aStream].
			self).


		removeFromChanges = ( 
			"References to the receiver, a class, and its metaclass should no 
			longer be included 
			in the system ChangeSet."
			smalltalk globals smalltalk changes removeClassChanges: self.
			self).


	 | ).


	testing* = ( | 

		shouldBeRegistered = ( 
			"Answer whether the receiver is named and should be 'stored' in its 
			environment"
			name_iv notNil).


	 | ).


	creating_class_hierarchy* = ( | 

		addToSuper = ( 
			"Add the receiver to the superclass's subclass list"
			 resend.addToSuper.
			 class addToSuper.
			self).


		removeFromSuper = ( 
			"Remove the receiver from the superclass's subclass list"
			 resend.removeFromSuper.
			 class removeFromSuper.
			self).


	 | ).

	my_class = smalltalk classes class.
	super_traits** = smalltalk classes classDescription methodDict_iv.
| )

classes class  _Define: ( |

	my_class_variables* = smalltalk classes class methodDict_iv my_class_variables.


	instance_creation* = ( | 

		template: category  = ( 
			"Answer an expression that can be edited and evaluated in order to 
			define 
			a new class."
			'NameOfSuperclass subclass: #NameOfClass\r\tinstanceVariableNames: \'instVarName1 instVarName2\'\r\tclassVariableNames: \'ClassVarName1 ClassVarName2\'\r\tpoolDictionaries: \'\'\r\tcategory: \'' , category , '\'').


	 | ).

	methodDict_iv = classes class methodDict_iv.
| )

classes class _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes class.
		superclass_iv = smalltalk classes classDescription my_class.
	| ).
	name_iv = 'class'.
	superclass_iv** = smalltalk classes classDescription.
	my_prototype = ( |
		my_traits* = smalltalk classes class methodDict_iv.

		superclass_iv.
		methodDict_iv.
		format_iv.
		subclasses_iv.
		instanceVariables_iv.
		organization_iv.
		name_iv.
		classPool_iv.
		sharedPools_iv.
	| ).
| )
classes _AddSlotsIfAbsent: ( | object = () | )
classes object  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes object methodDict_iv _Define: ( |
	my_class_variables* = ( | 
		dependentsFields_cv.  
		haltSignal_cv.  
		notifySignal_cv.  
		messageNotUnderstoodSignal_cv.  
		subclassResponsibilitySignal_cv.  
		nonIntegerIndexSignal_cv.  
		userInterruptSignal_cv.  
		notFoundSignal_cv.  
		subscriptOutOfBoundsSignal_cv.  
		indexNotFoundSignal_cv.  
		informationSignal_cv.  
		errorRecursion_cv.  
		controlInterruptedSignal_cv.  
		deepCopyErrorSignal_cv.  
		errorSignal_cv.  
	| ).


	initialize_release* = ( | 

		release = ( 
			"Remove references to objects that may refer to the receiver. 
			Answers self. 
			This message should be overidden by subclasses with any 
			cycles, in which 
			case the subclass should also include the expression super 
			release."
			 breakDependents.
			self).


	 | ).


	accessing* = ( | 

		at: index  = ( 
			"Answer the value of an indexable field in the receiver. Fail if the 
			argument index is not an Integer or is out of bounds."
			smalltalkPrimitives primitive_60: self  With: index  IfFail: [ 
				index isInteger ifTrue: [^ subscriptBoundsError: index].
				index respondsToArithmetic
					ifTrue: [^ at: index asSmallInteger]
					False: [^ nonIntegerIndexError: index].
				self] ).

		at: index Put: value  = ( 
			"Store the argument value in the indexable field of the receiver 
			indicated by 
			index. Fail if the index is not an Integer or is out of bounds. Fail if 
			the 
			value is not of the right type for this kind of collection. Answer the 
			value that was stored."
			smalltalkPrimitives primitive_61: self  With: index  With: value  IfFail: [ 
				index isInteger ifTrue: [(index >= 1) && [index <=  size]
						ifTrue: [^ improperStoreError]
						False: [^ subscriptBoundsError: index]].
				index respondsToArithmetic
					ifTrue: [^ at: index asSmallInteger Put: value]
					False: [^ nonIntegerIndexError: index].
				self] ).

		basicAt: index  = ( 
			"Answer the value of an indexable field in the receiver. Fail if the 
			argument index is not an Integer or is out of bounds. Do not 
			override this 
			message in any subclass."
			smalltalkPrimitives primitive_60: self  With: index  IfFail: [ 
				index isInteger ifTrue: [^ subscriptBoundsError: index].
				index respondsToArithmetic
					ifTrue: [^ basicAt: index asSmallInteger]
					False: [^ nonIntegerIndexError: index].
				self] ).

		basicAt: index Put: value  = ( 
			"Store the second argument value in the indexable field of the 
			receiver 
			indicated by index. Fail if the index is not an Integer or is out of 
			bounds. Or 
			fail if the value is not of the right type for this kind of collection. 
			Answer 
			the value that was stored. Do not override in a subclass."
			smalltalkPrimitives primitive_61: self  With: index  With: value  IfFail: [ 
				index isInteger ifTrue: [(index >= 1) && [index <=  basicSize]
						ifTrue: [^ improperStoreError]
						False: [^ subscriptBoundsError: index]].
				index respondsToArithmetic
					ifTrue: [^ basicAt: index asSmallInteger Put: value]
					False: [^ nonIntegerIndexError: index].
				self] ).

		basicSize = ( 
			"Answer the number of indexable fields in the receiver. This value 
			is the 
			same as the largest legal subscript. Do not override in any 
			subclass."
			smalltalkPrimitives primitive_62: self  IfFail: [ 
				"The number of indexable fields of fixed-length objects is 0"
				0] ).

		size = ( 
			"Answer the number of indexable fields in the receiver. This value 
			is the 
			same as the largest legal subscript."
			smalltalkPrimitives primitive_62: self  IfFail: [ 
				"The number of indexable fields of fixed-length objects is 0"
				0] ).

		yourself = ( 
			"Answer self."self).


	 | ).


	testing* = ( | 

		isBehavior = ( 
			"Answer whether the object can be the 'class' of another object"
			false).


		isImmediate = ( 
			"Answer true if this object has immediate representation."
			false).


		isInteger = ( 
			"Coerces Integers to true and everything else to false. Integer 
			overrides with ^true"
			false).


		isManifest = ( 
			"Answer whether receiver is manifestly storable."
			false).


		isNil = ( 
			"Coerce nil to true and everything else to false. UndefinedObject 
			overrides with ^true"
			false).


		isSequenceable = ( 
			"Answer true for SequenceableCollections and everything else to 
			false. 
			SequenceableCollection overrides with ^true"
			false).


		isString = ( 
			"Coerce String to true and everything else to false. String 
			overrides with ^true."
			false).


		isSymbol = ( 
			"Coerce Symbols to true and everything else to false. Symbol 
			overrides with ^true."
			false).


		notNil = ( 
			"Coerce nil to false and everything else to true. UndefinedObject 
			overrides with ^false"
			true).


		refersToLiteral: anObject  = ( 
			"The receiver is a literal in compiled code. 
			Answer whether the receiver is a reference to 
			anObject. For objects other than sub-methods, 
			this is just a test of whether the receiver is 
			the same object as anObject."
			 == anObject).


		respondsToArithmetic = ( 
			"Answer whether the object responds to the numeric (#+, #-, #*, 
			#/) 
			protocol as defined in the class ArithmeticValue"
			false).


	 | ).


	comparing* = ( | 

		= anObject  = ( 
			"Answer whether the receiver and the argument represent the same 
			object. 
			If = is redefined in any subclass, consider also redefining the 
			message hash."
			 == anObject).


		== anObject  = ( 
			"Answer true if the receiver and the argument are the same object 
			(have the same 
			object pointer) and false otherwise. Do not redefine the message 
			== in any 
			other class! No Lookup."
			smalltalkPrimitives primitive_110: self  With: anObject  IfFail: [ 
				 primitiveFailed.
				self] ).

		hash = ( 
			"Answer with a SmallInteger unique to the receiver. 
			Fail if the receiver is a SmallInteger."
			smalltalkPrimitives primitive_75: self  IfFail: [ 
				 primitiveFailed.
				self] ).

		identityHash = ( 
			"Answer a SmallInteger whose value reflects the identity, not the 
			contents, 
			of the receiver."
			smalltalkPrimitives primitive_75: self  IfFail: [ 
				 primitiveFailed.
				self] ).

		~= anObject  = ( 
			"Answer whether the receiver and the argument do not represent 
			the same 
			object."
			( = anObject) == false).


		~~ anObject  = ( 
			"Answer true if the receiver and the argument are not the same 
			object 
			(have the same object pointer) and false otherwise."
			( == anObject) not).


	 | ).


	copying* = ( | 

		copy = ( 
			"Answer another instance just like the receiver. 
			Subclasses normally override the postCopy 
			message, but some objects that should not be 
			copied override copy."
			 shallowCopy postCopy).


		deepCopy = ( 
			"Answer a copy of the receiver with its own copy of each instance 
			variable."
			"This is basically an incoherent concept which will be retracted in 
			a future release. Consider, for example what happens when 
			deepCopying 
			an object which refers to a system root (that is, an object from 
			which all 
			others are reachable). Or what happens when deepCopying an 
			object which 
			transitively refers to itself. For now, we raise an error signal in 
			classes 
			known to be bad to deepCopy (e.g. will infinitely recurse) and 
			handle the 
			signal here. That is, if for example you try to deepCopy a 
			BlockClosure, you'll 
			get an error, if you try to deepCopy an object which *contains* a 
			BlockClosure, 
			you'll get a copy of the BlockClosure instead."
			|  newObject.  class.  index.    | 
			class:  class.
			 errorSignal handle: [
				|  :ex.    | 
					"squelch shouldNotImplement"ex proceedWith: ex parameter copy]
				Do: 
					[class isVariable
						ifTrue: 
							[newObject: class basicNew: index:  basicSize.
							1 to: index Do: [
								|  :i.    | newObject basicAt: i Put: ( basicAt: i) deepCopy]]
						False: [newObject: class basicNew].
					1 to: class instSize Do: [
						|  :i.    | newObject instVarAt: i Put: ( instVarAt: i) deepCopy]].
			newObject).


		postCopy = ( 
			"Finish doing whatever is required, 
			beyond a shallowCopy, to implement 'copy'. 
			Answer the receiver. 
			This message is only intended to be sent 
			to the newly created instance. 
			Subclasses may add functionality, 
			but they should always do super postCopy first."
			"Note that any subclass that 'mixes in Modelness' 
			(i.e., implements dependents with an instance 
			variable) must include the equivalent of 
			'self breakDependents' in its implementation 
			of postCopy."
			self).


		shallowCopy = ( 
			"Answer a copy of the receiver which shares the receiver's 
			instance 
			variables."
			smalltalkPrimitives primitive_532: self  IfFail: [ 
				|  class.  newObject.  index.    | 
				class:  class.
				class isVariable
					ifTrue: 
						[newObject: class basicNew: index:  basicSize.
						1 to: index Do: [
							|  :i.    | newObject basicAt: i Put:  basicAt: i]]
					False: [newObject: class basicNew].
				1 to: class instSize Do: [
					|  :i.    | newObject instVarAt: i Put:  instVarAt: i].
				newObject] ).

	 | ).


	converting* = ( | 

		-> anObject  = ( 
			"Answer a new Association with the receiver as the key and the 
			argument as the value."
			smalltalk classes association key: self Value: anObject).


	 | ).


	dependents_access* = ( | 

		addDependent: anObject  = ( 
			"Add anObject as one of the receiver's dependents."
			 myDependents:  myDependents asDependentsWith: anObject.
			anObject).


		dependents = ( 
			"Answer a Collection of the objects that are dependent on the 
			receiver, that is, the objects that should be notified if the receiver 
			changes."
			 myDependents asDependentsAsCollection).


		removeDependent: anObject  = ( 
			"Remove the argument, anObject, as one of the receiver's 
			dependents."
			 myDependents:  myDependents asDependentsWithout: anObject.
			anObject).


	 | ).


	updating* = ( | 

		performUpdate: aSymbol  = ( 
			"Send the argument, aSymbol, as a unary message to the receiver."
			 perform: aSymbol).


		performUpdate: aSymbol With: anObject  = ( 
			"Send the argument, aSymbol, as a keyword message with 
			argument anObject the receiver"
			 perform: aSymbol With: anObject.
			self).


		update: anAspectSymbol  = ( 
			"Receive a change notice from an object of whom the receiver is a 
			dependent. The argument anAspectSymbol is typically a Symbol 
			that indicates what change has occurred. The default behavior is 
			to do nothing; a subclass might want to change itself in some way."
			self).


		update: anAspectSymbol With: aParameter  = ( 
			"Receive a change notice from an object of whom the receiver is a 
			dependent. The argument anAspectSymbol is typically a Symbol 
			that indicates what change has occurred and aParameter is 
			additional information. The default behavior is to do nothing; a 
			subclass might want to change itself in some way."
			 update: anAspectSymbol"Note that in this implementation, assumption is that the object does 
			not respond to this protocol but an attempt should be made to try a 
			simpler message.").


		update: anAspectSymbol With: aParameter From: aSender  = ( 
			"Receive a change notice from an object, denoted by aSender, of 
			whom the receiver is a dependent. The argument anAspectSymbol 
			is typically a Symbol that indicates what change has occurred and 
			aParameter is additional information. The default behavior is to do 
			nothing; a subclass might want to change itself in some way."
			 update: anAspectSymbol With: aParameter"Note that in this implementation, assumption is that the object does 
			not respond to this protocol but an attempt should be made to try a 
			simpler message.").


		updateRequest = ( 
			"Default behavior is to grant update requests; a subclass might want 
			to override 
			this behavior if it is in the middle of making another change."
			true).


		updateRequest: anAspectSymbol  = ( 
			"Default behavior is to grant update requests; a subclass might want 
			to override this behavior if it is in the middle of making another 
			change."
			 updateRequest).


	 | ).


	printing* = ( | 

		isLiteral = ( 
			"Answer whether the receiver has a literal text form recognized by 
			the compiler."
			false).


		printOn: aStream  = ( 
			"Append to the argument aStream a sequence of characters that 
			identifies the receiver."
			|  title.    | 
			title:  class name.
			aStream nextPutAll: ((title at: 1) isVowel
					ifTrue: ['an ']
					False: ['a '])
					, title.
			self).


		printString = ( 
			"Answer a String whose characters are a description of the 
			receiver."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 16.
			 printOn: aStream.
			aStream contents).


		storeOn: aStream  = ( 
			"Append to the argument aStream a sequence of characters that is 
			an expression 
			whose evaluation creates an object similar to the receiver. The 
			general format 
			for objects is 
			(class-name basicNew 
			instVarAt: index put: variable; 
			basicAt: index put: element; 
			yourself) 
			or 
			((class-name basicNew: size ) 
			instVarAt: index put: variable; 
			basicAt: index put: element; 
			yourself)"
			aStream nextPut: '(' first .
			 class isVariable
				ifTrue: [ ( | cascade_r | 
							cascade_r: aStream.   
							cascade_r  nextPutAll: '(' ,  class name , ' basicNew: '.   
							cascade_r  store:  basicSize.   
							cascade_r  nextPutAll: ') ' ) ]
				False: [aStream nextPutAll:  class name , ' basicNew'].
			1 to:  class instSize Do: [
				|  :i.    |  ( | cascade_r | 
						cascade_r: aStream.   
						cascade_r  nextPutAll: ' instVarAt: '.   
						cascade_r  store: i.   
						cascade_r  nextPutAll: ' put: '.   
						cascade_r  store:  instVarAt: i.   
						cascade_r  nextPut: ';' first  ) ].
			1 to:  basicSize Do: [
				|  :i.    |  ( | cascade_r | 
						cascade_r: aStream.   
						cascade_r  nextPutAll: ' basicAt: '.   
						cascade_r  store: i.   
						cascade_r  nextPutAll: ' put: '.   
						cascade_r  store:  basicAt: i.   
						cascade_r  nextPut: ';' first  ) ].
			aStream nextPutAll: ' yourself)'.
			self).


		storeString = ( 
			"Answer a String representation of the receiver from which the 
			receiver 
			can be reconstructed."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 16.
			 storeOn: aStream.
			aStream contents).


	 | ).


	class_membership* = ( | 

		changeClassToThatOf: anObject  = ( 
			"Change the class of the receiver to the class of anObject. Fail 
			if	the 
			receiver is immediate, if anObject is immediate, or if none of the 
			following cases holds: 
			1. The receiver and anObject are both byte-type. 
			2. The receiver is any pointer-type object, anObject is a 
			non-indexable pointer-type object, and the storage sizes (i.e. the 
			number of named instance variables plus the number of indexed 
			instance variables, if any) of the two objects are the same. 
			3. The receiver is any pointer-type object, anObject is an 
			indexable 
			pointer-type object, and the storage size of the receiver is at least 
			as large as the number of named instance variables of anObject. 
			The reason for specifying the primitive this way, rather than in the 
			more obvious way (changeClassTo: aBehavior), is that the 
			obvious 
			specification would require a lot of tests in the VM as to whether 
			the argument was, in fact, a legal Behavior."
			smalltalkPrimitives primitive_535: self  With: anObject  IfFail: [ 
				 primitiveFailed.
				self] ).

		class = ( 
			"Answer the object which is the receiver's class."
			smalltalkPrimitives primitive_111: self  IfFail: [ 
				 primitiveFailed.
				self] ).

		isKindOf: aClass  = ( 
			"Answer a Boolean as to whether the class, aClass, is a superclass 
			or class of 
			the receiver."
			 class == aClass
				ifTrue: [^true]
				False: [^ class inheritsFrom: aClass].
			self).


		isMemberOf: aClass  = ( 
			"Answer a Boolean as to whether the receiver is an instance of the 
			class, aClass."
			 class == aClass).


		respondsTo: aSymbol  = ( 
			"Answer a Boolean as to whether the method dictionary of the 
			receiver's class 
			contains aSymbol as a message selector."
			 class canUnderstand: aSymbol).


	 | ).


	message_handling* = ( | 

		perform: aSymbol  = ( 
			"Send the receiver the unary message indicated by the argument. 
			The argument is 
			the selector of the message. Invoke messageNotUnderstood: if the 
			number of 
			arguments expected by the selector is not zero."
			smalltalkPrimitives primitive_511: self  With: aSymbol  IfFail: [ 
				 perform: aSymbol WithArguments: smalltalk classes array new: 0] ).

		perform: aSymbol With: anObject  = ( 
			"Send the receiver the keyword or binary message indicated by the 
			arguments. The first argument is the selector of the message. The 
			other 
			argument is the argument of the message to be sent. Invoke 
			messageNotUnderstood: if the number of arguments expected by 
			the 
			selector is not one."
			smalltalkPrimitives primitive_512: self  With: aSymbol  With: anObject  IfFail: [ 
				 perform: aSymbol WithArguments: smalltalk classes array with: anObject] ).

		perform: aSymbol With: firstObject With: secondObject  = ( 
			"Send the receiver the keyword message indicated by the 
			arguments. The first 
			argument is the selector of the message. The other arguments are 
			the 
			arguments of the message to be sent. Invoke 
			messageNotUnderstood: if 
			the number of arguments expected by the selector is not two."
			smalltalkPrimitives primitive_513: self  With: aSymbol  With: firstObject  With: secondObject  IfFail: [ 
				 perform: aSymbol WithArguments: smalltalk classes array with: firstObject With: secondObject] ).

		perform: aSymbol With: firstObject With: secondObject With: thirdObject  = ( 
			"Send the receiver the keyword message indicated by the 
			arguments. The first 
			argument is the selector of the message. The other arguments are 
			the 
			arguments of the message to be sent. Invoke 
			messageNotUnderstood: if 
			the number of arguments expected by the selector is not three."
			smalltalkPrimitives primitive_514: self  With: aSymbol  With: firstObject  With: secondObject  With: thirdObject  IfFail: [ 
				 perform: aSymbol WithArguments: smalltalk classes array
						with: firstObject
						With: secondObject
						With: thirdObject] ).

		perform: selector WithArguments: anArray  = ( 
			"Send the receiver the keyword message indicated by the 
			arguments. The argument 
			selector is the selector of the message. The arguments of the 
			message are the 
			elements of anArray. Invoke messageNotUnderstood: if the number 
			of 
			arguments expected by the selector is not the same as the length 
			of 
			anArray."
			smalltalkPrimitives primitive_510: self  With: selector  With: anArray  IfFail: [ 
				 primitiveFailed.
				self] ).

	 | ).


	error_handling* = ( | 

		deepCopyError = ( 
			"Think of this message as a specialization of shouldNotImplement; 
			that 
			is, it is sent by implementors of #deepCopy so that 
			Object>>deepCopy 
			can catch it."
			deepCopyErrorSignal_cv raiseRequestWith: self).


		doesNotUnderstand: aMessage  = ( 
			"The default behavior is to create a Notifier containing the 
			appropriate message and to allow the user to open a Debugger. 
			Subclasses can override this message in order to modify this 
			behavior."
			smalltalk classes object messageNotUnderstoodSignal raiseRequestWith: aMessage ErrorString: 'Message not understood: ' , aMessage selector.
			 perform: aMessage selector WithArguments: aMessage arguments"3 zork.").


		error: aString  = ( 
			"Raise a non-proceedable signal that indicates an error with the 
			argument as the message. 
			This additional message is the one a subclass should override in 
			order to 
			change the handling of errors. 
			Remove any trailing spaces from aString, since we know we don't 
			want other strings appended to this one."
			|  lastNonSpace.    | 
			lastNonSpace: aString findLast: [
						|  :ch.    | ch ~= smalltalk classes character space].
			 errorSignal raiseErrorString: aString copyFrom: 1 To: lastNonSpace"nil error: 'error message'.").


		errorSignal = ( 
			"Answer the Signal used for miscellaneous errors 
			(self error:)."
			 class errorSignal).


		halt = ( 
			"This is a simple message to use for inserting breakpoints during 
			debugging. 
			The debugger is opened by raising a signal. This gives a chance 
			to restore 
			invariants related to multiple processes."
			
				"nil halt."smalltalk classes object haltSignal raiseRequestWith: thisContext ErrorString: 'Halt encountered.'.
			self).


		halt: aString  = ( 
			"This message can be used for inserting breakpoints during 
			debugging. 
			It creates and schedules a Debugger with the argument, aString, 
			as 
			the label. The debugger is opened by raising a signal. This gives a 
			chance 
			to restore invariants related to multiple processes."
			
				"nil halt: 'Test of halt:.'."smalltalk classes object haltSignal raiseRequestWith: thisContext ErrorString: aString.
			self).


		notify: aString  = ( 
			"Raise a proceedable signal with the argument as the message in 
			order 
			to request confirmation before a process can proceed."
			smalltalk classes object notifySignal raiseRequestWith: thisContext ErrorString: aString"nil notify: 'confirmation message'.").


		primitiveFailed = ( 
			"Announce that a primitive has failed and there is no appropriate 
			Smalltalk code to run."
			 error: 'a primitive has failed'.
			self).


		shouldNotImplement = ( 
			"Announce that although the receiver inherits this message, it 
			should not implement it."
			 error: 'This message is not appropriate for this object'.
			self).


		subclassResponsibility = ( 
			"This message sets up a framework for the behavior of the class' 
			subclasses. 
			Raise a signal indicates that the subclass should have 
			implemented this message."
			smalltalk classes object subclassResponsibilitySignal raiseErrorString: 'My subclass should have overridden one of my messages.').


	 | ).


	changing* = ( | 

		broadcast: aSymbol  = ( 
			"Send the argument, aSymbol, as a unary message to all of the 
			receiver's dependents."
			 myDependents performUpdate: aSymbol.
			self).


		broadcast: aSymbol With: anObject  = ( 
			"Send the argument, aSymbol, as a keyword message with 
			argument anObject to 
			all of the receiver's dependents."
			 myDependents performUpdate: aSymbol With: anObject.
			self).


		changed = ( 
			"Receiver changed in a general way; inform all the dependents by 
			sending 
			each dependent an update: message."
			 changed: nil.
			self).


		changed: anAspectSymbol  = ( 
			"Receiver changed. The change is denoted by the argument 
			anAspectSymbol. Usually the argument is a Symbol that is part of 
			the dependent's change protocol, that is, some aspect of the 
			object's behavior. Inform all of the dependents."
			 changed: anAspectSymbol With: nil.
			self).


		changed: anAspectSymbol With: aParameter  = ( 
			"The receiver changed. The change is denoted by the argument 
			anAspectSymbol. Usually the argument is a Symbol that is part of 
			the dependent's change protocol, that is, some aspect of the 
			object's behavior, and aParameter is additional information. Inform 
			all of the dependents."
			 myDependents
				update: anAspectSymbol
				With: aParameter
				From: self.
			self).


		changeRequest = ( 
			"The receiver wants to change; check with all dependents that it is 
			OK."
			 myDependents updateRequest).


		changeRequest: anAspectSymbol  = ( 
			"The receiver wants to change this aspect; check with all 
			dependents that it is OK."
			 myDependents updateRequest: anAspectSymbol).


		changeRequestFrom: aRequestorObject  = ( 
			"Receiver wants to change; check with all dependents (other than 
			requestor) that it is OK."
			 dependents do: [
				|  :aDependent.    | (aDependent == aRequestorObject) || [aDependent updateRequest] ifFalse: [^false]].
			true).


	 | ).


	user_interface* = ( | 

		basicInspect = ( 
			"Create and schedule an Inspector in which the user can examine 
			the 
			receiver's variables. This method should not be overwritten."
			smalltalk classes inspectorView open: smalltalk classes inspector inspect: self.
			self).


		browse = ( 
			"Create and schedule a system class browser on the class of the 
			object."
			smalltalk classes browser newOnClass:  class.
			self).


		confirm: aString  = ( 
			"Create and start up a BinaryChoice menu with the argument as the 
			message in order 
			to determine true or false. Answers true or false."
			smalltalk classes dialogView confirm: aString).


		inspect = ( 
			"Create and schedule an Inspector in which the user can examine 
			the 
			receiver's variables."
			 basicInspect.
			self).


	 | ).


	system_primitives* = ( | 

		allOwners = ( 
			"Answer a WeakArray of all objects that point to the receiver prior 
			to the 
			invocation of this primitive. Fails if we cannot allocate a 
			WeakArray large 
			enough to contain all such objects or if the WeakArray class does 
			not exist."
			smalltalkPrimitives primitive_537: self  IfFail: [ 
				 primitiveFailed.
				self] ).

		asOop = ( 
			"Answer an Integer which is 'unique' to me. From V2.4 
			on, not guaranteed to be unique"
			 identityHash).


		become: otherObject  = ( 
			"Swap the state of the receiver with that of anObject. 
			Be careful to preserve dependents."
			|  mine.  its.    | 
			mine:  myDependents.
			its: otherObject myDependents.
			 primBecome: otherObject.
			mine == its
				ifFalse: 
					["Don't bother if neither object has dependents."
					 myDependents: mine.
					otherObject myDependents: its].
			self).


		firstOwner = ( 
			"Answer some object which points at self. This primitive can be 
			used with 'ownerAfter: ' 
			to enumerate all the objects which point at self. 
			For example see SystemDictionary>quickPointersTo:do:."
			smalltalkPrimitives primitive_197: self  IfFail: [ 
				nil] ).

		instVarAt: index  = ( 
			"Answer with a fixed variable in an object. The numbering of the 
			variables 
			corresponds to the named instance variables. Fail if the index is 
			not an 
			Integer or is not the index of a fixed variable."
			smalltalkPrimitives primitive_73: self  With: index  IfFail: [ 
				"Access beyond fixed variables."
				 basicAt: index -  class instSize] ).

		instVarAt: anInteger Put: anObject  = ( 
			"Store a value into a fixed variable in the receiver. The numbering 
			of 
			the variables corresponds to the named instance variables. Fail if 
			the index is not an Integer or is not the index of a fixed variable. 
			Answer with the value stored as the result. (Using this message 
			violates the principle that each object has sovereign control over 
			the 
			storing of values into its instance variables.)."
			smalltalkPrimitives primitive_74: self  With: anInteger  With: anObject  IfFail: [ 
				"Access beyond fixed fields"
				 basicAt: anInteger -  class instSize Put: anObject] ).

		nextInstance = ( 
			"Answer with the next instance after the receiver in the enumeration 
			of all instances of this class. Fail if all instances have been 
			enumerated."
			smalltalkPrimitives primitive_78: self  IfFail: [ 
				nil] ).

		nextObject = ( 
			"Answer with the next object following the receiver in 
			the enumeration of all non-immediate objects. Fail if there is no 
			such 
			object or if the receiver is an immediate object. See Object class 
			someObject."
			smalltalkPrimitives primitive_531: self  IfFail: [ 
				0] ).

		ownerAfter: anObject  = ( 
			"Answer the next object after anObject which points at self (in some 
			hidden ordering). 
			This primitive can be used with 'firstOwner' to enumerate all the 
			objects which point at self. 
			For example see SystemDictionary>quickPointersTo:do:."
			smalltalkPrimitives primitive_198: self  With: anObject  IfFail: [ 
				nil] ).

		primBecome: otherObject  = ( 
			"Swap the instance pointers of the receiver and the argument, 
			otherObject. All 
			variables in the entire system that used to point to the receiver 
			now point to the 
			argument, and vice-versa. Fail if either object is a SmallInteger. 
			Answer with the 
			argument which is now the same instance pointer that formerly 
			denoted the receiver. 
			Essential. See documentation in Object metaclass."
			smalltalkPrimitives primitive_72: self  With: otherObject  IfFail: [ 
				 primitiveFailed.
				self] ).

	 | ).


	system_simulation* = ( | 

		tryPrimitive0 = ( 
			"Warning!! This is not a real primitive. This method is a template that 
			the 
			Smalltalk simulator uses to execute primitives with no arguments. 
			See 
			Context doPrimitive:receiver:numArgs:."
			smalltalkPrimitives primitive_7: self  IfFail: [ 
				smalltalk classes context primitiveFailedSignal raise] ).

		tryPrimitive1: arg1  = ( 
			"Warning!! This is not a real primitive. This method is a template that 
			the 
			Smalltalk simulator uses execute primitives with one argument. See 
			Context doPrimitive:receiver:numArgs:."
			smalltalkPrimitives primitive_7: self  With: arg1  IfFail: [ 
				smalltalk classes context primitiveFailedSignal raise] ).

		tryPrimitive2: arg1 With: arg2  = ( 
			"Warning!! This is not a real primitive. This method is a template that 
			the 
			Smalltalk simulator uses execute primitives with two arguments. 
			See 
			Context doPrimitive:receiver:numArgs:."
			smalltalkPrimitives primitive_7: self  With: arg1  With: arg2  IfFail: [ 
				smalltalk classes context primitiveFailedSignal raise] ).

		tryPrimitive3: arg1 With: arg2 With: arg3  = ( 
			"Warning!! This is not a real primitive. This method is a template that 
			the 
			Smalltalk simulator uses execute primitives with three arguments. 
			See 
			Context doPrimitive:receiver:numArgs:."
			smalltalkPrimitives primitive_7: self  With: arg1  With: arg2  With: arg3  IfFail: [ 
				smalltalk classes context primitiveFailedSignal raise] ).

		tryPrimitive4: arg1 With: arg2 With: arg3 With: arg4  = ( 
			"Warning!! This is not a real primitive. This method is a template that 
			the 
			Smalltalk simulator uses execute primitives with four arguments. 
			See 
			Context doPrimitive:receiver:numArgs:."
			smalltalkPrimitives primitive_7: self  With: arg1  With: arg2  With: arg3  With: arg4  IfFail: [ 
				smalltalk classes context primitiveFailedSignal raise] ).

		tryPrimitive5: arg1 With: arg2 With: arg3 With: arg4 With: arg5  = ( 
			"Warning!! This is not a real primitive. This method is a template that 
			the 
			Smalltalk simulator uses to execute primitives with five arguments. 
			See 
			Context doPrimitive:receiver:numArgs:."
			smalltalkPrimitives primitive_7: self  With: arg1  With: arg2  With: arg3  With: arg4  With: arg5  IfFail: [ 
				smalltalk classes context primitiveFailedSignal raise] ).

	 | ).


	dependents_collection* = ( | 

		asDependentsAsCollection = ( 
			"Answer the receiver, considered as a 
			collection of dependents, as a real 
			Collection. Since the receiver represents 
			a singleton dependents collection, 
			answer a Collection containing only 
			the receiver."
			smalltalk classes array with: self).


		asDependentsWith: anObject  = ( 
			"Answer the receiver, considered as a 
			collection of dependents, with anObject 
			added. Since the receiver represents 
			a singleton dependents collection, 
			answer a Collection containing the 
			receiver and anObject."
			smalltalk classes dependentsCollection with: self With: anObject).


		asDependentsWithout: anObject  = ( 
			"Answer the receiver, considered as a 
			collection of dependents, with the first 
			occurrence of anObject (if any) removed. 
			If anObject does not occur in the receiver, 
			answer the receiver."
			"Since the receiver represents a 
			singleton dependents collection, answer 
			either the receiver or nil."
			anObject == self
				ifTrue: [nil]
				False: [self]).


	 | ).


	finalization* = ( | 

		executor = ( 
			"Answer an object to execute the finalization for the receiver. 
			Subclasses might want to override this method."
			 shallowCopy).


		finalize = ( 
			"Finalize the object. This message is sent by WeakDictionary. 
			The default is to do nothing. Subclasses might want to override 
			this method."
			self).


	 | ).


	private* = ( | 

		breakDependents = ( 
			"Deallocate the soft field for the receiver's dependents."
			 myDependents: nil.
			self).


		forkEmergencyEvaluatorAt: priority  = ( 
			"Fork a process running a simple Smalltalk evaluator using as little 
			of the system as possible. Used for desperate debugging. May be 
			invoked by control-shift-C."
			
			[
			|  stream.  char.  gc.  lineSpacing.  leftMargin.  window.  string.  bottom.  ct.  newbottom.  textStyle.    | window: smalltalk classes window openNewIn: smalltalk classes screen default bounds origin + (20 @ 20) extent: smalltalk classes screen default bounds extent // 2.
			[window sensor hasDamage] whileFalse.
			textStyle: smalltalk classes textAttributes default.
			gc: window graphicsContext.
			lineSpacing: textStyle lineGrid.
			gc paint: smalltalk classes colorValue black.
			leftMargin: 20.
			('EMERGENCY EVALUATOR (priority ' , priority printString , ') -- type an expression terminated by ESC') asComposedText displayOn: gc At: leftMargin @ 0.
			stream: smalltalk classes writeStream on: smalltalk classes string new.
			bottom: lineSpacing.
			
			[[window sensor keyboardPressed] whileFalse.
			 ( char: window sensor keyboard.  char) = smalltalk classes character esc]
				whileFalse: 
					[(char = smalltalk classes character backspace) || [char = smalltalk classes character del]
						ifTrue: [stream position > 0
								ifTrue: 
									[stream skip: -1.
									gc paint: smalltalk classes colorValue white.
									gc displayRectangle: 0 @ (bottom - lineSpacing) corner: gc medium width @ bottom.
									gc paint: smalltalk classes colorValue black]]
						False: [stream nextPut: char].
					ct: stream contents asComposedText.
					newbottom: ct height + lineSpacing.
					newbottom > bottom
						ifTrue: 
							[gc paint: smalltalk classes colorValue white.
							gc displayRectangle: 0 @ lineSpacing corner: gc medium width @ newbottom.
							gc paint: smalltalk classes colorValue black].
					newbottom < bottom
						ifTrue: 
							[gc paint: smalltalk classes colorValue white.
							gc displayRectangle: 0 @ newbottom corner: gc medium width @ bottom.
							gc paint: smalltalk classes colorValue black].
					bottom: newbottom.
					ct displayOn: gc At: leftMargin @ lineSpacing.
					gc flush].
			string: nil.
			smalltalk classes object errorSignal
				handle: 
					[
					|  :ex.    | 
					(ex errorString , (smalltalk classes string with: smalltalk classes character cr With: smalltalk classes character cr) , ex initialContext shortStack) asComposedText displayOn: gc At: leftMargin @ (lineSpacing + ct height).
					ex return]
				Do: [string: ( class compilerClass evaluate: stream contents) printString].
			smalltalk classes object errorSignal handle: [
				|  :ex.    | ex return]
				Do: [string notNil
						ifTrue: 
							[('------' , (smalltalk classes string with: smalltalk classes character cr) , string) asComposedText displayOn: gc At: leftMargin @ ((lineSpacing * 2) + ct height).
							gc flush]].
			(smalltalk classes delay forSeconds: 5) wait.
			window close]
				forkAt: priority.
			self).


		improperStoreError = ( 
			"Create an error notification that an improper store was attempted."
			 error: 'Improper store into indexable object'.
			self).


		mustBeBoolean = ( 
			"Catches attempts to test truth of non-Booleans. This message is 
			sent from the 
			interpreter."
			 notify: 'NonBoolean receiver--proceed for truth.'.
			true).


		myDependents = ( 
			"Answer the receiver's dependents or nil."
			dependentsFields_cv at: self IfAbsent: [nil]).


		myDependents: dependentsOrNil  = ( 
			"Set the receiver's dependents to aDependentsCollection"
			dependentsOrNil == nil
				ifTrue: [dependentsFields_cv removeKey: self IfAbsent: [ self ]]
				False: [dependentsFields_cv at: self Put: dependentsOrNil].
			self).


		nilFields = ( 
			"Store nil into all pointer fields of the receiver."
			 class isPointers ifFalse: [^self].
			1 to:  basicSize Do: [
				|  :index.    |  basicAt: index Put: nil].
			1 to:  class instSize Do: [
				|  :index.    |  instVarAt: index Put: nil].
			self).


		nonIntegerIndexError: index  = ( 
			"Raise a signal indicating that an improper object was used as an 
			index."
			smalltalk classes object nonIntegerIndexSignal raiseWith: index).


		notFoundError = ( 
			"Raise a signal indicating that an element was not found."
			smalltalk classes object notFoundSignal raise).


		setDependents = ( 
			"Allocate the soft field for the receiver's dependents."
			|  dependents.    | 
			dependents: smalltalk classes orderedCollection new.
			dependentsFields_cv add: smalltalk classes association key: self Value: dependents.
			dependents).


		species = ( 
			"Answer the preferred class for reconstructing the receiver. For 
			example, 
			collections create new collections whenever enumeration 
			messages such as 
			collect: or select: are invoked. The new kind of collection is 
			determined by 
			the species of the original collection. Species and class are not 
			always the 
			same. For example, the species of Interval is Array."
			 class).


		subscriptBoundsError: index  = ( 
			"Raise a signal indicating that an improper integer was used as an 
			index."
			smalltalk classes object subscriptOutOfBoundsSignal raiseRequestWith: index).


	 | ).

	my_class = smalltalk classes object.
	super_traits** = smalltalk.
| )

classes object  _Define: ( |

	my_class_variables* = smalltalk classes object methodDict_iv my_class_variables.


	class_initialization* = ( | 

		initialize = ( 
			"Reset all the dependents of all objects."
			"Object initialize"
			( confirm: 'Do you really want to initialize\rclass Object?  It will reset all dependents.')
				ifTrue: 
					[ initializeDependentsFields.
					 initSignals].
			self).


		initSignals = ( 
			"Initialize global signals."
			|  es.    | 
			es:  errorSignal.
			informationSignal_cv:  ( | cascade_r | 
							cascade_r: smalltalk classes signal genericSignal newSignal.   
							cascade_r  notifierString: 'Information - '.   
							cascade_r  nameClass: self Message: 'informationSignal' ) .
			controlInterruptedSignal_cv:  ( | cascade_r | 
							cascade_r: smalltalk classes signal genericSignal newSignal.   
							cascade_r  notifierString: 'Control interrupted - '.   
							cascade_r  nameClass: self Message: 'controlInterruptedSignal' ) .
			userInterruptSignal_cv:  ( | cascade_r | 
							cascade_r: controlInterruptedSignal_cv newSignal.   
							cascade_r  notifierString: 'User Interrupt'.   
							cascade_r  nameClass: self Message: 'userInterruptSignal' ) .
			haltSignal_cv:  ( | cascade_r | 
							cascade_r: controlInterruptedSignal_cv newSignal.   
							cascade_r  notifierString: 'Halt '.   
							cascade_r  nameClass: self Message: 'haltSignal' ) .
			notifySignal_cv:  ( | cascade_r | 
							cascade_r: controlInterruptedSignal_cv newSignal.   
							cascade_r  notifierString: 'Notifier '.   
							cascade_r  nameClass: self Message: 'notifySignal' ) .
			notFoundSignal_cv:  ( | cascade_r | 
							cascade_r: es newSignal.   
							cascade_r  notifierString: 'Element not Found'.   
							cascade_r  nameClass: self Message: 'notFoundSignal' ) .
			indexNotFoundSignal_cv:  ( | cascade_r | 
							cascade_r: notFoundSignal_cv newSignal.   
							cascade_r  notifierString: 'Index not found'.   
							cascade_r  nameClass: self Message: 'indexNotFoundSignal' ) .
			subscriptOutOfBoundsSignal_cv:  ( | cascade_r | 
							cascade_r: indexNotFoundSignal_cv newSignal.   
							cascade_r  notifierString: 'Subscript out of bounds: '.   
							cascade_r  nameClass: self Message: 'subscriptOutOfBoundsSignal' ) .
			nonIntegerIndexSignal_cv:  ( | cascade_r | 
							cascade_r: indexNotFoundSignal_cv newSignal.   
							cascade_r  notifierString: 'Non integer index: '.   
							cascade_r  nameClass: self Message: 'nonIntegerIndexSignal' ) .
			subclassResponsibilitySignal_cv:  ( | cascade_r | 
							cascade_r: es newSignal.   
							cascade_r  notifierString: 'Subclass responsibility '.   
							cascade_r  nameClass: self Message: 'subclassResponsibilitySignal' ) .	"this is private to #deepCopy & #deepCopyError"
			deepCopyErrorSignal_cv: es newSignal notifierString: 'object can\'t be deepCopy-ed'.
			messageNotUnderstoodSignal_cv:  ( | cascade_r | 
							cascade_r: es newSignal.   
							cascade_r  notifierString: 'Message not understood '.   
							cascade_r  nameClass: self Message: 'messageNotUnderstoodSignal' ) .
			self).


	 | ).


	instance_creation* = ( | 

		readFrom: aStream  = ( 
			"Create an object based on the contents of aStream."
			|  object.    | 
			object:  evaluatorClass evaluate: aStream.
			(object isKindOf: self)
				ifFalse: [ error:  name , ' expected'].
			object).


		readFromString: aString  = ( 
			"Create an object based on the contents of aString."
			 readFrom: smalltalk classes readStream on: aString).


	 | ).


	signal_constants* = ( | 

		controlInterruptedSignal = ( 
			controlInterruptedSignal_cv).


		errorSignal = ( 
			"Answer the Signal used for miscellaneous errors 
			(self error:)."
			errorSignal_cv).


		haltSignal = ( 
			haltSignal_cv).


		indexNotFoundSignal = ( 
			indexNotFoundSignal_cv).


		informationSignal = ( 
			informationSignal_cv).


		messageNotUnderstoodSignal = ( 
			messageNotUnderstoodSignal_cv).


		nonIntegerIndexSignal = ( 
			nonIntegerIndexSignal_cv).


		notFoundSignal = ( 
			notFoundSignal_cv).


		notifySignal = ( 
			notifySignal_cv).


		subclassResponsibilitySignal = ( 
			subclassResponsibilitySignal_cv).


		subscriptOutOfBoundsSignal = ( 
			subscriptOutOfBoundsSignal_cv).


		userInterruptSignal = ( 
			userInterruptSignal_cv).


	 | ).


	fileIn_Out* = ( | 

		binaryStorageFormat = ( 
			"Answer an object (typically an integer) 
			that identifies the format version that the 
			receiver uses to store itself in binary form 
			(storeBinaryOn:)."
			1).


	 | ).


	backward_compatibility* = ( | 

		someObject = ( 
			"Answer with the first object in the enumeration of all 
			non-immediate 
			objects. See Object nextObject. This method is obsolete. Use the 
			expression below instead."
			smalltalk classes objectMemory someObject).


	 | ).


	private* = ( | 

		initializeDependentsFields = ( 
			
				"Object initializeDependentsFields"dependentsFields_cv: smalltalk classes identityDictionary new: 4.
			self).


	 | ).

	methodDict_iv = classes object methodDict_iv.
| )

classes object _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes object.
		superclass_iv = smalltalk classes class.
	| ).
	name_iv = 'object'.
	superclass_iv = nil.
	my_parent** = smalltalk classes class methodDict_iv.
	my_prototype = ( |
		my_traits* = smalltalk classes object methodDict_iv.

	| ).
| )
classes _AddSlotsIfAbsent: ( | behavior = () | )
classes behavior  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes behavior methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	initialize_release* = ( | 

		localObsolete = ( 
			"Remove the receiver from its superclass' subclass list."
			 removeFromSuper.
			self).


		obsolete = ( 
			"Invalidate and recycle local messages. Remove the receiver from 
			its superclass' 
			subclass list."
			 localObsolete.
			self).


	 | ).


	accessing* = ( | 

		format = ( 
			"Answer an Integer that encodes the kinds and numbers of 
			variables of instances 
			of the receiver."
			format_iv).


		name = ( 
			"Answer a String that is the name of the receiver."
			'an anonymous Behavior').


	 | ).


	testing* = ( | 

		instSize = ( 
			"Answer the number of named instance variables (as opposed to 
			indexed 
			variables) of the receiver."
			format_iv bitAnd: 255).


		isBehavior = ( 
			"Answer whether the object can be the 'class' of another object"
			true).


		isBits = ( 
			"Answer whether the receiver contains just bits (not pointers)."
			format_iv noMask: -16384).


		isFixed = ( 
			"Answer whether the receiver does not have a variable (indexable) 
			part."
			 isVariable not).


		isMeta = ( 
			"Answer whether the receiver is a meta class."
			false).


		isPointers = ( 
			"Answer whether the receiver contains just pointers (not bits)."
			 isBits not).


		isVariable = ( 
			"Answer whether the receiver has a variable (indexable) part."
			(format_iv bitAnd: 4096)
				~= 0).


		shouldBeRegistered = ( 
			"Answer whether the receiver is named and should be 'stored' in its 
			environment"
			false).


	 | ).


	copying* = ( | 

		deepCopy = ( 
			"Answer a copy of the receiver with its own copy of each instance 
			variable. This doesn't make sense for Behaviors."
			 deepCopyError).


		postCopy = ( 
			"Reset the list of subclasses, 
			and copy the method dictionary."
			 resend.postCopy.
			subclasses_iv: nil.
			methodDict_iv: methodDict_iv copy.
			self).


	 | ).


	printing* = ( | 

		printHierarchy = ( 
			"Answer a description containing the names and instance variable 
			names of all of the subclasses and superclasses of the receiver."
			|  aStream.  index.    | 
			index: 0.
			aStream: smalltalk classes writeStream on: '' copySize: 16.
			 allSuperclasses
				reverseDo: 
					[
					|  :aClass.  instNames.    | 
					aStream crtab: index.
					index: index + 1.
					aStream nextPutAll: aClass name.
					 ( | cascade_r | 
							cascade_r: aStream.   
							cascade_r  space.   
							cascade_r  nextPut: '(' first  ) .
					instNames: aClass instVarNames.
					instNames isEmpty
						ifFalse: 
							[aStream print: instNames at: 1.
							2 to: instNames size Do: [
								|  :i.    |  ( | cascade_r | 
										cascade_r: aStream.   
										cascade_r  space.   
										cascade_r  print: instNames at: i ) ]].
					aStream nextPut: ')' first ].
			aStream cr.
			 printSubclassesOn: aStream Level: index.
			aStream contents).


		printOn: aStream  = ( 
			"Append to the argument aStream a statement of which 
			superclass the receiver descends from."
			aStream nextPutAll: 'a descendent of '.
			superclass_iv printOn: aStream.
			self).


	 | ).


	creating_class_hierarchy* = ( | 

		addSubclass: aSubclass  = ( 
			"Make the argument, aSubclass, be one of the subclasses of the 
			receiver."
			aSubclass superclass = self
				ifTrue: [subclasses_iv == nil
						ifTrue: [subclasses_iv: smalltalk classes set with: aSubclass]
						False: [subclasses_iv add: aSubclass]]
				False: [ error: aSubclass name , ' is not my subclass'].
			self).


		addToSuper = ( 
			"Add the receiver to the superclass's subclass list."
			(superclass_iv == nil) || [superclass_iv isMeta] ifFalse: [superclass_iv addSubclass: self].
			self).


		assignSuperclass: aClass  = ( 
			"Change the superclass, updating the superclass's subclass list."
			 removeFromSuper.
			superclass_iv: aClass.
			 addToSuper.
			self).


		classBuilder = ( 
			"Answer an appropriate class mutation object."
			smalltalk classes classBuilder new).


		clearInstanceVariables = ( 
			"After creating the copy, clear in the copy those instance variables 
			that would be confusing"
			superclass_iv: nil.
			methodDict_iv: methodDict_iv copy.
			subclasses_iv: nil.
			self).


		removeFromSuper = ( 
			"Remove the receiver from the superclass's subclass list"
			(superclass_iv == nil) || [superclass_iv isMeta] ifFalse: [superclass_iv removeSubclass: self].
			self).


		removeSubclass: aSubclass  = ( 
			"If the argument, aSubclass, is one of the receiver's subclasses, 
			remove it."
			subclasses_iv == nil
				ifFalse: 
					[subclasses_iv remove: aSubclass IfAbsent: [ self ].
					subclasses_iv isEmpty ifTrue: [subclasses_iv: nil]].
			self).


		superclass: aClass  = ( 
			"Change the receiver's superclass to be aClass."
			aClass isBehavior
				ifTrue: [superclass_iv: aClass]
				False: [ error: 'superclass must be a class-describing object'].
			self).


	 | ).


	creating_method_dictionary* = ( | 

		addSelector: selector WithMethod: compiledMethod  = ( 
			"Add the message selector with the corresponding compiled method 
			to the receiver's 
			method dictionary."
			methodDict_iv at: selector Put: compiledMethod.
			 flushVMmethodCacheEntriesFor: selector.
			self).


		methodDictionary: aDictionary  = ( 
			"Store the argument, aDictionary, as the method dictionary of the 
			receiver."
			methodDict_iv: aDictionary.
			self).


		removeSelector: selector  = ( 
			"Assuming that the message selector is in the receiver's method 
			dictionary, 
			remove it. If the selector is not in the method dictionary, create an 
			error 
			notification."
			methodDict_iv removeKey: selector.
			 flushVMmethodCacheEntriesFor: selector.
			self).


	 | ).


	instance_creation* = ( | 

		basicNew = ( 
			"Answer a new instance of the receiver (which is a class) with no 
			indexable 
			variables. Fail if the class is indexable."
			smalltalkPrimitives primitive_70: self  IfFail: [ 
				 isVariable ifTrue: [^ basicNew: 0].
				 primitiveFailed.
				self] ).

		basicNew: anInteger  = ( 
			"Answer a new instance of the receiver (which is a class) with the 
			number of 
			indexable variables specified by the argument, anInteger. Fail if 
			the class is not 
			indexable or if the argument is not a positive Integer."
			smalltalkPrimitives primitive_71: self  With: anInteger  IfFail: [ 
				 isVariable
					ifTrue: [ primitiveFailed]
					False: [ error: 'This message is not appropriate for this class']] ).

		new = ( 
			"Answer with a new instance of the receiver, which is a class with 
			no indexable 
			variables. Fail if the class is indexable."
			smalltalkPrimitives primitive_70: self  IfFail: [ 
				 isVariable ifTrue: [^ new: 0].
				 primitiveFailed.
				self] ).

		new: anInteger  = ( 
			"Answer with a new instance of the receiver, a class with the 
			number of 
			indexable variables specified by the argument, anInteger. Fail if 
			the class is not 
			indexable or if the argument is not a positive Integer."
			smalltalkPrimitives primitive_71: self  With: anInteger  IfFail: [ 
				 isVariable
					ifTrue: [ primitiveFailed]
					False: [ error: 'This message is not appropriate for this class']] ).

	 | ).


	accessing_class_hierarchy* = ( | 

		allSubclasses = ( 
			"Answer an OrderedCollection of the receiver's subclasses and the 
			receiver's ancestor's 
			subclasses in breadth-first order, with the immediate subclasses 
			first."
			|  coll.    | 
			coll: smalltalk classes orderedCollection new.
			coll addAll:  subclasses.
			 subclasses do: [
				|  :eachSubclass.    | coll addAll: eachSubclass allSubclasses].
			coll).


		allSuperclasses = ( 
			"Answer an OrderedCollection of the receiver's superclass and the 
			receiver's ancestor's 
			superclasses, with the immediate superclasses first."
			superclass_iv == nil
				ifTrue: [^smalltalk classes orderedCollection new]
				False: 
					[
					|  coll.    | coll: superclass_iv allSuperclasses.
					coll addFirst: superclass_iv.
					^coll].
			self).


		subclasses = ( 
			"Answer the receiver's subclasses. Return a copy so that callers 
			who 
			add or delete subclasses won't get confused."
			subclasses_iv == nil
				ifTrue: [^smalltalk classes set new]
				False: [^subclasses_iv copy].
			self).


		superclass = ( 
			"Answer the receiver's superclass. Only returns the first one 
			- use 'superclasses' to find them all."
			superclass_iv).


		withAllSubclasses = ( 
			"Answer an OrderedCollection of subclasses including this class in 
			breadth first order."
			|  subs.    | 
			subs:  allSubclasses.
			subs addFirst: self.
			subs).


		withAllSuperclasses = ( 
			"Answer an OrderedCollection of superclasses including this class 
			in breadth first order."
			|  subs.    | 
			subs:  allSuperclasses.
			subs addFirst: self.
			subs).


	 | ).


	accessing_method_dictionary* = ( | 

		allSelectors = ( 
			"Answer a set of all the message selectors that instances of the 
			receiver can 
			understand."
			|  aSet.    | 
			aSet: smalltalk classes set new.
			 withAllSuperclasses do: [
				|  :each.    | aSet addAll: each selectors].
			aSet"Point allSelectors.").


		compiledMethodAt: selector  = ( 
			"Answer the compiled method associated with the message selector 
			in the 
			receiver's method dictionary. If the selector is not in the dictionary, 
			create an error notification."
			methodDict_iv at: selector).


		selectorAtMethod: method IfAbsent: aBlock  = ( 
			"Answer the message selector associated with the compiled 
			method, 
			or the result of evaluating aBlock if the compiled method does not 
			appear in this class."
			methodDict_iv keyAtValue: method IfAbsent: aBlock).


		selectorAtMethod: method SetClass: classResultBlock  = ( 
			"Answer both the message selector associated with the compiled 
			method 
			and the class in which that selector is defined."
			|  sel.    | 
			sel: methodDict_iv keyAtValue: method
						IfAbsent: 
							[superclass_iv == nil
								ifTrue: 
									[classResultBlock value: self.
									^ defaultSelectorForMethod: method].
							sel: superclass_iv selectorAtMethod: method SetClass: classResultBlock.
							sel == ( defaultSelectorForMethod: method) ifTrue: ["Set class to be self, rather than that returned 
								from 
								superclass."
								classResultBlock value: self].
							^sel].
			classResultBlock value: self.
			sel).


		selectors = ( 
			"Answer a Set of all the message selectors specified in the 
			receiver's 
			method dictionary."
			methodDict_iv keys"Point selectors.").


		sourceCodeAt: messageSelector  = ( 
			"Answer the string corresponding to the source code for the 
			argument."
			 sourceCodeForMethod: (methodDict_iv at: messageSelector)
				At: messageSelector).


		sourceCodeForMethod: method At: messageSelector  = ( 
			"Answer the string corresponding to the source code for the 
			argument."
			method getSourceForUserIfNone: [( decompilerClass new
					decompile: messageSelector
					In: self
					Method: method) decompileString]).


		sourceMethodAt: selector  = ( 
			"Answer the paragraph corresponding to the source code for the 
			argument."
			( sourceCodeAt: selector) asText makeSelectorBoldIn: self).


	 | ).


	accessing_instances_and_variables* = ( | 

		allClassVarNames = ( 
			"Answer a Set of the names of the receiver's and the receiver's 
			ancestor's class variables."
			superclass_iv allClassVarNames).


		allInstances = ( 
			"Answer a collection of all instances of this class."
			|  aCollection.    | 
			aCollection: smalltalk classes orderedCollection new.
			 allInstancesDo: [
				|  :x.    | x == aCollection ifFalse: [aCollection add: x]].
			aCollection).


		allInstVarNames = ( 
			"Answer an Array of the names of the receiver's instance variables."
			|  names.    | 
			names: smalltalk classes orderedCollection new.
			 accumulateInstVarNames: names.
			names).


		allSharedPools = ( 
			"Answer a Set of the pools, dictionaries, that the receiver and the 
			receiver's ancestors share. Subclasses, such as class Class, 
			override this message."
			superclass_iv allSharedPools).


		allVarNamesSelect: selectBlock  = ( 
			"Answer a collection of all the static variable names defined for the 
			receiver which satisfy the condition in selectBlock. Test class and 
			pool variables, including superclass variables. Also include global 
			variables."
			|  set.    | 
			set:  classPool keys select: selectBlock.
			 sharedPools do: [
				|  :pool.    | set addAll: pool keys select: selectBlock].
			superclass_iv == nil
				ifTrue: [set addAll: smalltalk globals smalltalk keys select: selectBlock]
				False: [set addAll: superclass_iv allVarNamesSelect: selectBlock].
			set).


		atomicAllInstances = ( 
			"Answer a WeakArray of all instances of this class that existed prior 
			to the invocation of this primitive. Fails if we cannot allocate a 
			WeakArray large enough to contain all such instances or if the 
			WeakArray class does not exist."
			smalltalkPrimitives primitive_536: self  IfFail: [ 
				 primitiveFailed.
				self] ).

		classPool = ( 
			"Answer a Set of the pools, dictionaries, that the receiver shares. 
			Since the receiver 
			does not retain knowledge of pool dictionaries, the method fakes it 
			by creating an 
			empty array. Subclasses, such as class Class, override this 
			message."
			smalltalk classes dictionary new).


		classVarNames = ( 
			"Answer a Set of the receiver's class variable names. Since the 
			receiver does 
			not retain knowledge of class variables, the method fakes it by 
			creating an empty set."
			smalltalk classes set new).


		fastAllInstVarNamesDo: aBlock  = ( 
			"Evaluate aBlock with the names of the receiver's instance 
			variables. 
			This is a fast version that bypasses (non-existent) multiple 
			inheritance."
			superclass_iv == nil ifFalse: [superclass_iv fastAllInstVarNamesDo: aBlock].
			 instVarNames do: aBlock.
			self).


		instanceCount = ( 
			"Answer the number of instances of the receiver that are currently 
			in use."
			|  count.    | 
			count: 0.
			 allInstancesDo: [
				|  :x.    | count: count + 1].
			count).


		instVarNames = ( 
			"Answer an Array of the instance variable names. Behaviors must 
			make up fake 
			local instance variable names because Behaviors have instance 
			variables for the 
			purpose of compiling methods, but these are not named instance 
			variables. "
			|  mySize.  superSize.    | 
			mySize:  instSize.
			superSize: superclass_iv == nil
						ifTrue: [0]
						False: [superclass_iv instSize].
			mySize = superSize ifTrue: [^(vector copySize: 0)   ].
			(superSize + 1 to: mySize)
				collect: [
					|  :i.    | 'inst' , i printString]).


		sharedPools = ( 
			"Answer a Set of the pools, dictionaries, that the receiver shares. 
			Since the receiver 
			does not retain knowledge of pool dictionaries, the method fakes it 
			by creating an 
			empty array. Subclasses, such as class Class, override this 
			message."
			smalltalk classes set new).


		someInstance = ( 
			"Answer with the first instance of this receiver. See Object 
			nextInstance. Fails if there are none."
			smalltalkPrimitives primitive_77: self  IfFail: [ 
				nil] ).

		subclassInstVarNames = ( 
			"Answer with a Set of the names of the receiver's subclasses' 
			instance variables."
			|  vars.    | 
			vars: smalltalk classes set new.
			 allSubclasses do: [
				|  :aSubclass.    | vars addAll: aSubclass instVarNames].
			vars).


	 | ).


	testing_class_hierarchy* = ( | 

		inheritsFrom: aClass  = ( 
			"Answer whether the argument, aClass, is on the receiver's 
			superclass chain."
			superclass_iv == nil
				ifTrue: [^superclass_iv = aClass]
				False: [^(superclass_iv == aClass) || [superclass_iv inheritsFrom: aClass]].
			self).


	 | ).


	testing_method_dictionary* = ( | 

		canUnderstand: selector  = ( 
			"Answer true if the receiver can respond to the message whose 
			selector 
			is the argument, false otherwise. The selector can be in the method 
			dictionary 
			of the receiver's class or any of its superclasses."
			( includesSelector: selector)
				ifTrue: [^true].
			superclass_iv == nil ifTrue: [^false].
			superclass_iv canUnderstand: selector).


		fullScopeHas: varName IfTrue: assocBlock  = ( 
			"Look up varName in this class, its superclasses, its subclasses 
			and Smalltalk. If it is there, pass the association to assocBlock, 
			and answer true; else answer false."
			|  assoc.    | 
			 withAllSuperclasses ,  allSubclasses do: [
				|  :sup.    | (sup poolHas: varName IfTrue: assocBlock)
					ifTrue: [^true]].
			assoc: smalltalk globals smalltalk associationAt: varName IfAbsent: [ self ].
			assoc == nil
				ifFalse: 
					[assocBlock value: assoc.
					^true].
			false).


		hasMethods = ( 
			"Answer whether the receiver has any methods in its method 
			dictionary."
			methodDict_iv size > 0).


		includesSelector: aSymbol  = ( 
			"Answer whether the message whose selector is the argument is in 
			the 
			method dictionary of the receiver's class."
			methodDict_iv includesKey: aSymbol).


		scopeHas: varName IfTrue: assocBlock  = ( 
			"Look up varName in this class, its superclasses, and Smalltalk. If it 
			is there, 
			pass the association to assocBlock, and answer true; else answer 
			false."
			|  assoc.    | 
			 withAllSuperclasses do: [
				|  :sup.    | (sup poolHas: varName IfTrue: assocBlock)
					ifTrue: [^true]].
			assoc: smalltalk globals smalltalk associationAt: varName IfAbsent: [ self ].
			assoc == nil
				ifFalse: 
					[assocBlock value: assoc.
					^true].
			false).


		whichClassIncludesSelector: aSymbol  = ( 
			"Answer the class on the receiver's superclass chain where the 
			argument, aSymbol 
			(a message selector), will be found."
			(methodDict_iv includesKey: aSymbol)
				ifTrue: [^self].
			superclass_iv == nil ifTrue: [^nil].
			superclass_iv whichClassIncludesSelector: aSymbol"Rectangle whichClassIncludesSelector: #inspect.").


		whichSelectorsAccess: instVarName  = ( 
			"Answer a set of selectors whose methods access the argument, 
			instVarName, 
			as a named instance variable."
			|  instVarIndex.    | 
			instVarIndex:  allInstVarNames indexOf: instVarName IfAbsent: [^smalltalk classes set new].
			methodDict_iv keys select: [
				|  :sel.    | ((methodDict_iv at: sel)
					readsField: instVarIndex)
					|| [(methodDict_iv at: sel)
							writesField: instVarIndex]]"Point whichSelectorsAccess: 'x'.").


		whichSelectorsReferTo: literal  = ( 
			"Answer a collection of selectors whose methods 
			access the argument as a literal."
			methodDict_iv whichSelectorsReferTo: literal"Rectangle whichSelectorsReferTo: #+.").


	 | ).


	compiling* = ( | 

		compile: code Notifying: requestor  = ( 
			"Compile the argument, code, as source code in the context of the 
			receiver. Use the default fail code [^nil]. Does not save source 
			code. 
			The second argument, requestor, is to be notified if an error 
			occurs. The 
			argument code is either a string or an object that converts to a 
			string or a 
			PositionableStream on an object that converts to a string."
			
				compile: code
				Notifying: requestor
				IfFail: [^nil]).


		compile: code Notifying: requestor IfFail: failBlock  = ( 
			"Compile the argument, code, as source code in the context of the 
			receiver and 
			install the result in the receiver's method dictionary. The argument 
			requestor is to 
			be notified if an error occurs. The argument code is either a string 
			or an 
			object that converts to a string or a PositionableStream on an 
			object that 
			converts to a string. This method does not save the source code. 
			Evaluate the failBlock if the compilation does not succeed."
			|  methodNode.  selector.    | 
			methodNode:  compilerClass new
						compile: code
						In: self
						Notifying: requestor
						IfFail: failBlock.
			selector: methodNode selector.
			 addSelector: selector WithMethod: methodNode generate.
			selector).


		compileAll = ( 
			"Compile all the methods in the receiver's method dictionary."
			 compileAllFrom: self).


		compileAllFrom: oldClass  = ( 
			"Compile all the methods in oldClass's method dictionary. 
			See recompile:from: regarding oldClass, which is normally just self."
			 selectors do: [
				|  :sel.    |  recompile: sel From: oldClass].
			self).


		compileAllFrom: oldClass Into: third  = ( 
			"Compile all the methods in oldClass's method dictionary. 
			See recompile:from: regarding oldClass, which is normally just self."
			 selectors do: [
				|  :sel.    | 
					recompile: sel
					From: oldClass
					Into: third].
			self).


		compileAllSubclasses = ( 
			"Compile all the methods in the receiver's subclasses. This does 
			not modify 
			code (re-install the compiled versions), just compiles the methods 
			as a kind of static 
			check."
			 allSubclasses do: [
				|  :aSubclass.    | aSubclass compileAll].
			self).


		compilerClass = ( 
			"Answer a compiler class appropriate for source methods of this 
			class."
			smalltalk classes compiler).


		decompile: selector  = ( 
			"Find the compiled code associated with the argument, selector, as 
			a message selector 
			in the receiver's method dictionary and decompile it. Answer the 
			resulting source 
			code as a string. Create an error if the selector is not in the 
			receiver's method 
			dictionary."
			 decompilerClass new decompile: selector In: self).


		decompilerClass = ( 
			"Answer a decompiler class appropriate for compiled methods of 
			this class."
			smalltalk classes decompiler).


		evaluatorClass = ( 
			"Answer an evaluator class appropriate for evaluating expressions 
			in the 
			context of instances of this class."
			smalltalk classes compiler).


		parserClass = ( 
			"Answer a parser class to use for parsing methods in this class."
			 compilerClass preferredParserClass).


		poolHas: varName IfTrue: assocBlock  = ( 
			"Behaviors have no pools."
			false).


		recompile: selector  = ( 
			"Recompile the method associated with selector in the receiver's 
			method dictionary. 
			Take care not to write out any new source code - just generate 
			new bytes."
			 recompile: selector From: self).


		recompile: selector From: oldClass  = ( 
			"Recompile the method associated with selector in the receiver's 
			method dictionary. 
			Take care not to write out any new source code - just generate 
			new bytes. 
			oldClass may differ from self in order to decompile right (if 
			sourceFiles == nil) 
			when adding or removing fields of a class."
			|  method.  sourceFile.  sourcePosition.  methodNode.    | 
			method: oldClass compiledMethodAt: selector.
			method hasSource
				ifTrue: 
					[sourceFile: method fileIndex.
					sourcePosition: method filePosition].
			methodNode:  compilerClass new
						compile: (oldClass sourceCodeAt: selector)
						In: self
						Notifying: nil
						IfFail: [ self ].
			methodNode == nil ifTrue: ["Try again after proceed from SyntaxError"
				^ recompile: selector].
			selector == methodNode selector ifFalse: [ error: 'selector changed!'].
			method: methodNode generate.
			sourceFile notNil ifTrue: [method setSourcePosition: sourcePosition InFile: sourceFile].
			 addSelector: selector WithMethod: method.
			self).


		recompile: selector From: oldClass Into: third  = ( 
			"Recompile the method associated with selector in the receiver's 
			method dictionary. 
			Take care not to write out any new source code - just generate 
			new bytes. 
			oldClass may differ from self in order to decompile right (if 
			sourceFiles == nil) 
			when adding or removing fields of a class."
			|  method.  sourceFile.  sourcePosition.  methodNode.    | 
			method: oldClass compiledMethodAt: selector.
			method hasSource
				ifTrue: 
					[sourceFile: method fileIndex.
					sourcePosition: method filePosition].
			methodNode:  ( | cascade_r | 
							cascade_r:  compilerClass new.   
							cascade_r  targetClass: third.   
							cascade_r 
						compile: (oldClass sourceCodeAt: selector)
						In: self
						Notifying: nil
						IfFail: [ self ] ) .
			methodNode == nil ifTrue: ["Try again after proceed from SyntaxError"
				^ recompile: selector].
			selector == methodNode selector ifFalse: [ error: 'selector changed!'].
			method: methodNode generate.
			sourceFile notNil ifTrue: [method setSourcePosition: sourcePosition InFile: sourceFile].
			 addSelector: selector WithMethod: method.
			self).


		sourceCodeTemplate = ( 
			"Answer an expression to be edited and evaluated in order to 
			define methods in this class."
			'message selector and argument names\r\t"comment stating purpose of message"\r\r\t| temporary variable names |\r\tstatements').


		subclassDefinerClass = ( 
			"Answer an evaluator class appropriate for evaluating definitions of 
			new 
			subclasses of this class."
			smalltalk classes compiler).


	 | ).


	enumerating* = ( | 

		allAccessesTo: instVarName  = ( 
			"Answer a list of all methods in the receiver's hierarchy that refer to 
			the named instance variable."
			|  coll.    | 
			coll: smalltalk classes orderedCollection new.
			smalltalk classes cursor execute showWhile: [ withAllSuperclasses reverse ,  allSubclasses do: [
					|  :class.    | (class whichSelectorsAccess: instVarName)
						do: [
							|  :sel.    | sel ~~ 'DoIt' ifTrue: [coll add: class name , ' ' , sel]]]].
			coll"Collection allAccessesTo: 'contents'.").


		allCallsOn: aLiteral  = ( 
			"Answer a SortedCollection of all the methods 
			in this class or any subclass that call on aLiteral."
			|  set.    | 
			 == smalltalk classes object ifTrue: [^smalltalk globals smalltalk allCallsOn: aLiteral].
			set: smalltalk classes set new.
			 withAllSuperclasses reverse ,  allSubclasses do: 
				[
				|  :class.    | 
				(class whichSelectorsReferTo: aLiteral)
					do: [
						|  :sel.    | sel ~~ 'DoIt' ifTrue: [set add: class name , ' ' , sel]].
				(class class whichSelectorsReferTo: aLiteral)
					do: [
						|  :sel.    | sel ~~ 'DoIt' ifTrue: [set add: class class name , ' ' , sel]]].
			set asSortedCollection).


		allInstancesDo: aBlock  = ( 
			"Evaluate the argument, aBlock, for each of the current instances of 
			the receiver."
			|  inst.  next.  all.    | 
			inst:  someInstance.
			all: smalltalk classes identitySet new.
			inst == nil ifFalse: [
				[next: inst nextInstance.
				all add: inst.
				next == nil]
					whileFalse: [inst: next]].
			nil class == self ifTrue: [aBlock value: nil].
			all do: [
				|  :i.    | aBlock value: i].
			self).


		allSubclassesDo: aBlock  = ( 
			"Evaluate the argument, aBlock, for each of the receiver's 
			subclasses."
			 subclasses do: 
				[
				|  :cl.    | 
				aBlock value: cl.
				cl allSubclassesDo: aBlock].
			self).


		allSubInstancesDo: aBlock  = ( 
			"Evaluate the argument, aBlock, for each of the current instances of 
			the receiver's 
			subclasses."
			 allSubclassesDo: [
				|  :sub.    | sub allInstancesDo: aBlock].
			self).


		browseAllAccessesTo: instanceVariable  = ( 
			"Create and schedule a Message Set browser for all the receiver's 
			methods or any methods of a subclass that refer to the instance 
			variable name. If the instance variable name is not defined for the 
			receiver, the notification 'Nobody' occurs in the System Transcript."
			smalltalk classes browserView
				openListBrowserOn: ( allAccessesTo: instanceVariable)
				Label: instanceVariable
				InitialSelection: instanceVariable.
			self).


		browseAllCallsOn: aSymbol  = ( 
			"Create and schedule a message browser on each method that 
			calls on aSymbol."
			"For example, 
			Number browseAllCallsOn: #/.	"
			|  label.  key.    | 
			(aSymbol isMemberOf: smalltalk classes association)
				ifTrue: 
					[key: aSymbol key.
					label: 'Users of ' , key]
				False: 
					[key: aSymbol.
					label: 'Senders of ' , key].
			smalltalk classes browserView
				openListBrowserOn: ( allCallsOn: aSymbol)
				Label: label , ' from ' ,  name
				InitialSelection: key asSymbol keywords first).


		crossReference = ( 
			"Answer an array of arrays of size 2 whose first element is a 
			message selector 
			in the receiver's method dictionary and whose second element is a 
			set of all message 
			selectors in the method dictionary whose methods send a message 
			with that selector. 
			Subclasses are not included."
			 selectors asSortedCollection asArray collect: [
				|  :x.    | smalltalk classes array with: (smalltalk classes string with: smalltalk classes character cr)
						, x With:  whichSelectorsReferTo: x]"Point crossReference.").


		showVariableMenu: generatorBlock Collect: valueBlock  = ( 
			"Construct a menu of variable names supplied by the 
			generatorBlock, 
			with lines between classes in the superclass chain. Show the 
			menu, 
			returning the variable chosen by the user, or nil if no 
			variable was chosen."
			|  aStream.  lines.  count.  lastLine.  variables.  index.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 200.
			lines: smalltalk classes orderedCollection new.
			count: 0.
			lastLine: 0.
			variables: smalltalk classes orderedCollection new.
			 withAllSuperclasses
				reverseDo: 
					[
					|  :eachClass.    | 
					count = lastLine
						ifFalse: 
							[lines add: count.
							lastLine: count].
					(generatorBlock value: eachClass)
						do: 
							[
							|  :var.    | 
							 ( | cascade_r | 
									cascade_r: aStream.   
									cascade_r  nextPutAll: (valueBlock value: var)
									contractTo: 20.   
									cascade_r  cr ) .
							variables addLast: var.
							count: count + 1]].
			variables isEmpty ifTrue: [^nil].	"Nothing to choose from"
			aStream skip: -1.
			index: (smalltalk classes popUpMenu labels: aStream contents Lines: lines) startUp.
			index = 0
				ifTrue: [nil]
				False: [variables at: index]).


	 | ).


	fileIn_Out* = ( | 

		printMethod: selector On: aStream  = ( 
			"Print the source code for the method associated with the argument 
			selector onto 
			the stream."
			|  source.  emphasis.  parser.  length.    | 
			 ( | cascade_r | 
					cascade_r: aStream.   
					cascade_r  cr.   
					cascade_r  cr ) .
			source: ( sourceMethodAt: selector) asString.
			emphasis: aStream emphasis.
			aStream emphasis: 'bold'.
			 ( parser:  parserClass new.  parser) parseSelector: source.
			length: parser endOfLastToken min: source size.
			aStream nextPutAll: source copyFrom: 1 To: length.
			aStream emphasis: emphasis.
			aStream nextPutAll: source copyFrom: length + 1 To: source size.
			self).


		printMethodChunk: selector On: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"Print the source code for the method associated with the argument 
			selector onto the fileStream. aFileStream, and, for backup, if the 
			argument 
			moveSource (a Boolean) is true, also set the file index within the 
			method 
			to be the argument fileIndex."
			|  position.  code.    | 
			 ( | cascade_r | 
					cascade_r: aFileStream.   
					cascade_r  cr.   
					cascade_r  cr ) .
			code:  sourceCodeAt: selector.
			smalltalk classes cursor write
				showWhile: 
					[position: aFileStream writePosition.
					aFileStream nextChunkPut: code.
					moveSource ifTrue: [( compiledMethodAt: selector)
							setSourcePosition: position InFile: fileIndex]].
			self).


	 | ).


	private* = ( | 

		accumulateInstVarNames: names  = ( 
			"accumulate instance variable names in 'names'. Do this in 
			depth-first, 
			left-to-right order. This will give the ordering of instance variable 
			names 
			expected by the compiler and other parts of the system."
			superclass_iv == nil ifFalse: [superclass_iv accumulateInstVarNames: names].
			names addAll:  instVarNames.
			self).


		copyMethodDictionary = ( 
			methodDict_iv: methodDict_iv copy.
			self).


		defaultSelectorForMethod: aMethod  = ( 
			"Given a method, invent an appropriate selector, that is, one that 
			will parse with 
			the correct number of arguments."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 16.
			aStream nextPutAll: 'unboundMethod'.
			1 to: aMethod numArgs Do: [
				|  :i.    | aStream nextPutAll: 'with:'].
			aStream contents asSymbol).


		flushVMmethodCache = ( 
			"Tell the interpreter to remove the contents of its method lookup 
			cache, if it has one."
			smalltalkPrimitives primitive_89: self  IfFail: [ 
				 primitiveFailed.
				self] ).

		flushVMmethodCacheEntriesFor: selector  = ( 
			"Tell the interpreter to remove from its method lookup cache (if any) 
			all entries affected by adding, changing, or removing a definition 
			for this selector in the receiver."
			smalltalkPrimitives primitive_522: self  With: selector  IfFail: [ 
				"If we can't do a selective flush, flush the entire cache."
				 flushVMmethodCache.
				self] ).

		printSubclassesOn: aStream Level: level  = ( 
			"As part of the algorithm for printing a description of the receiver, 
			print the 
			subclass on the file stream, aStream, indenting level times."
			|  subs.  instNames.    | 
			aStream crtab: level.
			aStream nextPutAll:  name.
			 ( | cascade_r | 
					cascade_r: aStream.   
					cascade_r  space.   
					cascade_r  nextPut: '(' first  ) .
			instNames:  instVarNames.
			instNames isEmpty
				ifFalse: 
					[aStream print: instNames at: 1.
					2 to: instNames size Do: [
						|  :i.    |  ( | cascade_r | 
								cascade_r: aStream.   
								cascade_r  space.   
								cascade_r  print: instNames at: i ) ]].
			aStream nextPut: ')' first .
			subs:  subclasses.
			 == smalltalk classes class
				ifTrue: 
					[ ( | cascade_r | 
							cascade_r: aStream.   
							cascade_r  crtab: level + 1.   
							cascade_r  nextPutAll: '... all the Metaclasses ...' ) .
					subs: subs reject: [
								|  :sub.    | sub isMeta]].
			(subs asSortedCollection: [
				|  :x.  :y.    | "Print subclasses in alphabetical order"
				x name < y name])
				do: [
					|  :sub.    | sub printSubclassesOn: aStream Level: level + 1].
			self).


		removeSelectorSimply: selector  = ( 
			"Remove the message selector from the receiver's method 
			dictionary. 
			Internal access from compiler."
			methodDict_iv removeKey: selector IfAbsent: [^self].
			 flushVMmethodCacheEntriesFor: selector.
			self).


		setInstanceFormat: sizeAndFlags  = ( 
			"Set the format for the receiver (a Class)."
			format_iv: sizeAndFlags.
			self).


	 | ).

	my_class = smalltalk classes behavior.
	super_traits** = smalltalk classes object methodDict_iv.
| )

classes behavior  _Define: ( |

	my_class_variables* = smalltalk classes behavior methodDict_iv my_class_variables.

	methodDict_iv = classes behavior methodDict_iv.
| )

classes behavior _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes behavior.
		superclass_iv = smalltalk classes object my_class.
	| ).
	name_iv = 'behavior'.
	superclass_iv** = smalltalk classes object.
	my_prototype = ( |
		my_traits* = smalltalk classes behavior methodDict_iv.

		superclass_iv.
		methodDict_iv.
		format_iv.
		subclasses_iv.
	| ).
| )
classes _AddSlotsIfAbsent: ( | classDescription = () | )
classes classDescription  _AddSlotsIfAbsent: ( | methodDict_iv  = () | )


classes classDescription methodDict_iv _Define: ( |
	my_class_variables* = ( | 
	| ).


	initialize_release* = ( | 

		localObsolete = ( 
			"Make the receiver obsolete."
			organization_iv: nil.
			 resend.localObsolete.
			self).


	 | ).


	accessing* = ( | 

		comment = ( 
			"Answer the receiver's comment."
			|  aString.    | 
			aString:  organization classComment.
			aString size = 0 ifTrue: [^''].
			smalltalk classes string readFromString: aString"get string only of classComment, undoubling quotes").


		comment: aString  = ( 
			"Set the receiver's comment to be the argument, aString."
			|  aStream.    | 
			aString size = 0
				ifTrue: [ organization classComment: aString]
				False: 
					["double internal quotes of the comment string"
					aStream: smalltalk classes writeStream on: '' copySize: aString size.
					 ( | cascade_r | 
							cascade_r: aStream.   
							cascade_r  nextPutAll:  name , ' comment:'.   
							cascade_r  cr ) .
					aString storeOn: aStream.
					 organization classComment: aStream contents.
					smalltalk globals smalltalk changes commentClass: self].
			self).


		commentTemplate = ( 
			"Answer an expression to edit and evaluate in order to produce the 
			receiver's comment."
			|  aString.    | 
			aString:  organization classComment.
			aString size = 0
				ifTrue: [^ name , ' comment: ' ,  commentTemplateString printString]
				False: [^aString].
			self).


		commentTemplateString = ( 
			"Answer a default comment string for the receiver."
			'This class has not yet been commented.  The comment should state the purpose of the class, what messages are subclassResponsibility, and the type and purpose of each instance and class variable.  The comment should also explain any unobvious aspects of the implementation.').


		environment = ( 
			"Answer the class's compilation scope."
			smalltalk globals smalltalk).


		formatComment: aComment  = ( 
			"aComment is an existing class comment. 
			Answer a formatted version of the comment, 
			if this is meaningful; otherwise answer nil."
			nil).


	 | ).


	copying* = ( | 

		copy: sel From: class  = ( 
			"Install the method associated with the first argument, sel, a 
			message selector, 
			found in the method dictionary of the second argument, class, as 
			one of the 
			receiver's methods. Classify the message under -as yet not 
			classified-."
			
				copy: sel
				From: class
				Classified: nil.
			self).


		copy: sel From: class Classified: cat  = ( 
			"Install the method associated with the first argument, sel, a 
			message selector, 
			found in the method dictionary of the second argument, class, as 
			one of the 
			receiver's methods. Classify the message under the third argument, 
			cat."
			|  code.  category.    | 
			"Useful when modifying an existing class"
			code: class sourceMethodAt: sel.
			code == nil
				ifFalse: 
					[cat == nil
						ifTrue: [category: class organization categoryOfElement: sel]
						False: [category: cat].
					(methodDict_iv includesKey: sel)
						ifTrue: [code asString = ( sourceMethodAt: sel) asString ifFalse: [ notify:  name , ' ' , sel , ' will be redefined if you proceed.']].
					 compile: code Classified: category].
			self).


		copyAll: selArray From: class  = ( 
			"Install all the methods found in the method dictionary of the second 
			argument, class, 
			as the receiver's methods. Classify the messages under -as yet 
			not classified-."
			
				copyAll: selArray
				From: class
				Classified: nil.
			self).


		copyAll: selArray From: class Classified: cat  = ( 
			"Install all the methods found in the method dictionary of the second 
			argument, class, 
			as the receiver's methods. Classify the messages under the third 
			argument, cat."
			selArray do: [
				|  :s.    | 
					copy: s
					From: class
					Classified: cat].
			self).


		copyAllCategoriesFrom: aClass  = ( 
			"Specify that the categories of messages for the receiver include all 
			of those found 
			in the class, aClass. Install each of the messages found in these 
			categories into the 
			method dictionary of the receiver, classified under the appropriate 
			categories."
			aClass organization categories do: [
				|  :cat.    |  copyCategory: cat From: aClass].
			self).


		copyCategory: cat From: class  = ( 
			"Specify that one of the categories of messages for the receiver is 
			cat, as found 
			in the class, aClass. Copy each message found in this category."
			
				copyCategory: cat
				From: class
				Classified: cat.
			self).


		copyCategory: cat From: aClass Classified: newCat  = ( 
			"Specify that one of the categories of messages for the receiver is 
			the third argument, 
			newCat. Copy each message found in the category cat in class 
			aClass into this 
			new category."
			
				copyAll: (aClass organization listAtCategoryNamed: cat)
				From: aClass
				Classified: newCat.
			self).


	 | ).


	printing* = ( | 

		classVariablesString = ( 
			"Answer a string of my class variable names separated by spaces, 
			in alphabetical order."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 100.
			 classPool keys asSortedCollection do: [
				|  :key.    |  ( | cascade_r | 
						cascade_r: aStream.   
						cascade_r  nextPutAll: key.   
						cascade_r  space ) ].
			aStream contents).


		definition = ( 
			"Answer a string that defines the receiver."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 300.
			aStream nextPutAll: superclass_iv == nil
					ifTrue: ['nil']
					False: [superclass_iv name].
			aStream nextPutAll:  kindOfSubclass.
			 name storeOn: aStream.
			 ( | cascade_r | 
					cascade_r: aStream.   
					cascade_r  cr.   
					cascade_r  tab.   
					cascade_r  nextPutAll: 'instanceVariableNames: ' ) .
			aStream store:  instanceVariablesString.
			 ( | cascade_r | 
					cascade_r: aStream.   
					cascade_r  cr.   
					cascade_r  tab.   
					cascade_r  nextPutAll: 'classVariableNames: ' ) .
			aStream store:  classVariablesString.
			 ( | cascade_r | 
					cascade_r: aStream.   
					cascade_r  cr.   
					cascade_r  tab.   
					cascade_r  nextPutAll: 'poolDictionaries: ' ) .
			aStream store:  sharedPoolsString.
			 ( | cascade_r | 
					cascade_r: aStream.   
					cascade_r  cr.   
					cascade_r  tab.   
					cascade_r  nextPutAll: 'category: ' ) .
			(smalltalk globals systemOrganization categoryOfElement:  name) asString storeOn: aStream.
			aStream contents).


		instanceVariablesString = ( 
			"Answer a string of my instance variable names separated by 
			spaces."
			|  aStream.  names.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 100.
			names:  instVarNames.
			1 to: names size Do: [
				|  :i.    |  ( | cascade_r | 
						cascade_r: aStream.   
						cascade_r  nextPutAll: names at: i.   
						cascade_r  space ) ].
			aStream contents).


		printOn: aStream  = ( 
			"Append to the argument aStream a sequence of characters that 
			identifies the receiver."
			aStream nextPutAll:  name.
			self).


		sharedPoolsString = ( 
			"Answer a string of my class variable names separated by spaces."
			|  aStream.    | 
			aStream: smalltalk classes writeStream on: '' copySize: 100.
			 sharedPools do: [
				|  :x.    |  ( | cascade_r | 
						cascade_r: aStream.   
						cascade_r  nextPutAll: smalltalk globals smalltalk keyAtValue: x.   
						cascade_r  space ) ].
			aStream contents).


		storeOn: aStream  = ( 
			"Append to the argument aStream the global names of. 
			Classes and Metaclasses."
			aStream nextPutAll:  name.
			self).


	 | ).


	instance_variables* = ( | 

		addInstVarName: aString  = ( 
			"Add the argument, aString, as one of the receiver's instance 
			variables."
			 subclassResponsibility.
			self).


		instanceVariables: aCollection  = ( 
			"Set the class's instance variable list"
			(aCollection == nil) || [aCollection isEmpty]
				ifTrue: [instanceVariables_iv: nil]
				False: [instanceVariables_iv: aCollection].
			self).


		instVarNames = ( 
			"Answer an Array of the names of instance variables defined in the 
			receiver."
			instanceVariables_iv == nil
				ifTrue: [^(vector copySize: 0)   ]
				False: [^instanceVariables_iv].
			self).


		removeInstVarName: aString  = ( 
			"Remove the argument, aString, as one of the receiver's instance 
			variables."
			 subclassResponsibility.
			self).


	 | ).


	method_dictionary* = ( | 

		addSelector: s WithMethod: m Category: c  = ( 
			"Add the message selector s associated with the method m under 
			category c."
			 addSelector: s WithMethod: m.
			 organization classify: s Under: c.
			self).


		removeCategory: aString  = ( 
			"Remove each of the messages categorized under aString in the 
			method dictionary 
			of the receiver. Then remove the category aString."
			( organization listAtCategoryNamed: aString asSymbol)
				do: [
					|  :sel.    |  removeSelector: sel].
			 organization removeEmptyCategories.
			self).


		removeSelector: aSymbol  = ( 
			"Remove the message whose selector is aSymbol from the method 
			dictionary of the receiver, if it is there. Answer nil otherwise."
			(methodDict_iv includesKey: aSymbol)
				ifFalse: [^nil].
			 resend.removeSelector: aSymbol.
			 organization removeElement: aSymbol.
			smalltalk globals smalltalk changes removeSelector: aSymbol Class: self.
			smalltalk globals smalltalk logChange:  name , ' removeSelector: #' , aSymbol.
			self).


	 | ).


	organization* = ( | 

		category = ( 
			"Answer the system organization category for the receiver."
			smalltalk globals systemOrganization categoryOfElement:  name).


		category: cat  = ( 
			"Categorize the receiver under the system category, cat, removing 
			it from any 
			previous categorization."
			cat isString
				ifTrue: [smalltalk globals systemOrganization classify:  name Under: cat asSymbol]
				False: [ errorCategoryName].
			self).


		logOrganizationChange = ( 
			"Record that the receiver is being reorganized on the changes file."
			smalltalk globals smalltalk logChange:  name , ' organization changeFromString: ' ,  organization printString storeString.
			self).


		organization = ( 
			"Answer the instance of ClassOrganizer that represents the 
			organization 
			of the messages of the receiver."
			organization_iv == nil ifTrue: [organization_iv: smalltalk classes classOrganizer new].
			organization_iv).


		reorganize = ( 
			"Record that the receiver is being reorganized and answer the 
			receiver's organization."
			smalltalk globals smalltalk changes reorganizeClass: self.
			 organization).


		whichCategoryIncludesSelector: aSelector  = ( 
			"Answer the category of the argument, aSelector, in the 
			organization of the 
			receiver, or answer nil if the receiver does not inlcude this 
			selector."
			( includesSelector: aSelector)
				ifTrue: [^organization_iv categoryOfElement: aSelector]
				False: [^nil].
			self).


	 | ).


	compiling* = ( | 

		compile: code Classified: heading  = ( 
			"Compile the argument, code, as source code in the context of the 
			receiver and 
			install the result in the receiver's method dictionary under the 
			classification 
			indicated by the second argument, heading. nil is to be notified if 
			an error occurs. 
			The argument code is either a string or an object that converts to a 
			string or a 
			PositionableStream on an object that converts to a string."
			
				compile: code
				Classified: heading
				Notifying: nil).


		compile: code Classified: heading Notifying: requestor  = ( 
			"Compile the argument, code, as source code in the context of the 
			receiver and 
			install the result in the receiver's method dictionary under the 
			classification 
			indicated by the second argument, heading The third argument, 
			requestor, is to be notified if an error occurs. The argument code is 
			either a string or 
			an object that converts to a string or a PositionableStream on an 
			object that converts 
			to a string."
			|  selector.    | 
			selector: 
						compile: code
						Notifying: requestor
						IfFail: [^nil].
			(methodDict_iv at: selector)
				putSource: code asString
				Class: self
				Category: heading
				InFile: 2.
			 organization classify: selector Under: heading.
			selector).


		compile: code Notifying: requestor IfFail: failBlock  = ( 
			"Intercept this message in order to remember system changes."
			|  methodNode.  selector.    | 
			smalltalk classes cursor execute
				showWhile: 
					[methodNode:  compilerClass new
								compile: code
								In: self
								Notifying: requestor
								IfFail: failBlock.
					selector: methodNode selector.
					(methodDict_iv includesKey: selector)
						ifTrue: [smalltalk globals smalltalk changes changeSelector: selector Class: self]
						False: [smalltalk globals smalltalk changes addSelector: selector Class: self].
					 addSelector: selector WithMethod: methodNode generate].
			selector).


	 | ).


	fileIn_Out* = ( | 

		fileOutCategory: aString  = ( 
			"Create a file whose name is the name of the receiver with -.st- as 
			the 
			extension, and file a description of the receiver's category aString 
			onto it."
			|  fileName.  fileStream.    | 
			fileName:  name , '-' , aString , '.st'.
			fileStream: (smalltalk classes filename named: fileName) writeStream.
			
			[fileStream timeStamp.
			
				fileOutCategory: aString
				On: fileStream
				MoveSource: false
				ToFile: 0]
				valueNowOrOnUnwindDo: [fileStream close].
			self).


		fileOutCategory: aString On: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"File a description of the receiver's category, aString, onto 
			aFileStream. If 
			the boolean argument, moveSource, is true, then set the trailing 
			bytes to the position 
			of aFileStream and to fileIndex in order to indicate where to find 
			the source code."
			 printCategoryChunk: aString On: aFileStream.
			( organization listAtCategoryNamed: aString)
				do: [
					|  :sel.    | 
						printMethodChunk: sel
						On: aFileStream
						MoveSource: moveSource
						ToFile: fileIndex].
			aFileStream nextChunkPut: ' '.
			self).


		fileOutChangedMessages: aSet On: aFileStream  = ( 
			"File a description of the messages of the receiver that have been 
			changed 
			(i.e., are entered into the system ChangeSet) onto aFileStream."
			
				fileOutChangedMessages: aSet
				On: aFileStream
				MoveSource: false
				ToFile: 0.
			self).


		fileOutChangedMessages: aSet On: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"File a description of the messages of the receiver that have been 
			changed 
			(i.e., are entered into the system ChangeSet) onto aFileStream. If 
			the boolean argument, moveSource, is true, then set the trailing 
			bytes to the position 
			of aFileStream and to fileIndex in order to indicate where to find 
			the source code."
			|  org.  sels.    | 
			 ( org:  organization.  org) categories do: 
				[
				|  :cat.    | 
				sels: (org listAtCategoryNamed: cat)
							select: [
								|  :sel.    | aSet includes: sel].
				sels size > 0
					ifTrue: 
						[ ( | cascade_r | 
								cascade_r: smalltalk globals transcript.   
								cascade_r  cr.   
								cascade_r  show:  name , '>' , cat ) .
						 printCategoryChunk: cat On: aFileStream.
						sels do: [
							|  :sel.    | 
								printMethodChunk: sel
								On: aFileStream
								MoveSource: moveSource
								ToFile: fileIndex].
						aFileStream nextChunkPut: ' ']].
			self).


		fileOutMessage: aString  = ( 
			"Create a fileName which is the name of the receiver with -.st as 
			the 
			extension, and file a description of the receiver's message aString 
			onto it"
			 fileOutMessage: aString FileName:  name , '-' , aString , '.st'.
			self).


		fileOutMessage: aString FileName: fileName  = ( 
			"Create a local file named fileName 
			and file a description of the receiver's message aString onto it"
			|  fileStream.    | 
			fileStream: (smalltalk classes filename named: fileName) writeStream.
			
			[fileStream timeStamp.
			
				fileOutMessage: aString
				On: fileStream
				MoveSource: false
				ToFile: 0]
				valueNowOrOnUnwindDo: [fileStream close].
			self).


		fileOutMessage: aString On: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"File a description of the receiver's message, aString, onto 
			aFileStream. If 
			the boolean argument, moveSource, is true, then set the trailing 
			bytes to the position 
			of aFileStream and to fileIndex in order to indicate where to find 
			the source code."
			|  cat.    | 
			cat:  organization categoryOfElement: aString.
			cat == nil ifTrue: [^ error: 'no such message'].
			 printCategoryChunk: cat On: aFileStream.
			
				printMethodChunk: aString
				On: aFileStream
				MoveSource: moveSource
				ToFile: fileIndex.
			aFileStream nextChunkPut: ' '.
			self).


		fileOutOn: aFileStream  = ( 
			"File a description of the receiver on aFileStream."
			
				fileOutOn: aFileStream
				MoveSource: false
				ToFile: 0.
			self).


		fileOutOn: aFileStream MoveSource: moveSource ToFile: fileIndex  = ( 
			"File the receiver out on aFileStream."
			aFileStream emphasis: 'bold'.
			aFileStream nextChunkPut:  definition.
			 organization
				putCommentOnFile: aFileStream
				Numbered: fileIndex
				MoveSource: moveSource.
			aFileStream cr.
			 organization categories do: [
				|  :heading.    | 
					fileOutCategory: heading
					On: aFileStream
					MoveSource: moveSource
					ToFile: fileIndex].
			self).


		fileOutOrganizationOn: aFileStream  = ( 
			"File a description of the receiver's organization onto aFileStream."
			aFileStream emphasis: 'italic'.
			aFileStream cr.
			aFileStream nextChunkPut:  name , ' organization changeFromString: ' ,  organization printString storeString.
			aFileStream cr.
			aFileStream emphasis: nil.
			self).


		kindOfSubclass = ( 
			"Answer a string that describes what kind of subclass the receiver 
			is, i.e., 
			variable, variable byte, variable word, or not variable."
			 isVariable
				ifTrue: [ isBits
						ifTrue: [^' variableByteSubclass: ']
						False: [^' variableSubclass: ']]
				False: [^' subclass: '].
			self).


		methodsFor: aString  = ( 
			"Answer a ClassCategoryReader for accessing the messages in the 
			method 
			dictionary category, aString, of the receiver."
			smalltalk classes classCategoryReader class: self Category: aString asSymbol"False methodsFor: 'logical operations' inspect").


		moveChangesTo: newFile  = ( 
			"Used in the process of condensing changes, this message 
			requests that the source 
			code of all methods of the receiver that have been changed 
			should be moved to 
			newFile."
			|  changes.    | 
			 organization moveChangedCommentToFile: newFile Numbered: 2.
			changes: methodDict_iv keys select: [
						|  :sel.    | (methodDict_iv at: sel) fileIndex > 1].
			
				fileOutChangedMessages: changes
				On: newFile
				MoveSource: true
				ToFile: 2.
			self).


		printCategoryChunk: aString On: aFileStream  = ( 
			"Print category definition on aFileStream."
			 ( | cascade_r | 
					cascade_r: aFileStream.   
					cascade_r  cr.   
					cascade_r  cr.   
					cascade_r  nextPut: '!' first  ) .
			aFileStream nextChunkPut:  name , ' methodsFor: ' , '\'' , aString , '\''.
			self).


		printOutCategory: aString  = ( 
			"Create a readable version of the message category aString, and 
			send to a printer. 
			Defaults to fileOut."
			 fileOutCategory: aString.
			self).


		printOutCategory: aSymbol On: aStream  = ( 
			"File a description of the receiver's category, aSymbol, onto 
			aStream."
			|  saved.    | 
			saved: aStream emphasis.
			aStream emphasis: 'bold'.
			aStream cr.
			aStream nextPutAll:  name , ' methodsFor: ' , aSymbol.
			aStream emphasis: saved.
			( organization listAtCategoryNamed: aSymbol)
				do: [
					|  :sel.    |  printMethod: sel On: aStream].
			aStream cr.
			self).


		printOutMessage: aString  = ( 
			"Create a readable version of the message with selector aString, 
			and send to a printer. 
			Defaults to fileOut."
			 fileOutMessage: aString.
			self).


		printOutOn: aStream  = ( 
			"Print me out on a textStream"
			|  saved.    | 
			saved: aStream emphasis.
			aStream emphasis: 'bold'.
			aStream nextPutAll:  definition.
			aStream cr.
			aStream emphasis: 'italic'.
			aStream cr.
			aStream nextPutAll:  comment.
			aStream emphasis: saved.
			aStream cr.
			 organization categories do: [
				|  :heading.    |  printOutCategory: heading On: aStream].
			aStream cr.
			aStream cr.
			self).


	 | ).


	private* = ( | 

		errorCategoryName = ( 
			 error: 'Category name must be a String'.
			self).


	 | ).

	my_class = smalltalk classes classDescription.
	super_traits** = smalltalk classes behavior methodDict_iv.
| )

classes classDescription  _Define: ( |

	my_class_variables* = smalltalk classes classDescription methodDict_iv my_class_variables.

	methodDict_iv = classes classDescription methodDict_iv.
| )

classes classDescription _AddSlots: ( |
	my_class = ( |
		my_traits* = smalltalk classes metaclass methodDict_iv.
		thisClass_iv = smalltalk classes classDescription.
		superclass_iv = smalltalk classes behavior my_class.
	| ).
	name_iv = 'classDescription'.
	superclass_iv** = smalltalk classes behavior.
	my_prototype = ( |
		my_traits* = smalltalk classes classDescription methodDict_iv.

		superclass_iv.
		methodDict_iv.
		format_iv.
		subclasses_iv.
		instanceVariables_iv.
		organization_iv.
	| ).
| )
