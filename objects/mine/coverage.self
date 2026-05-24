shell aliases _AddSlots: ( |
    test: tb Files: files = (
	| methods. outerMethods. methodVector. methodDict. |
	memory garbageCollect.
        methods: list copyRemoveAll.
        browse all filterBy: [|:m| 
    	      m isReflecteeMethod 
            && [( files includes: m file reflectee)  
            && [  m isReflecteeActivation]]]
           Into: methods.
        outerMethods: set copyRemoveAll.
        methods do: [|:m| 
	    [|:exit| 
	        outerMethods add: m literals reflectee methodPointerIfFail: exit.
            ] exit.
         ].
        methodVector: outerMethods asVector.
        methodDict: dictionary copyRemoveAll.
        methodVector do: [|:v. :i| methodDict at: v Put: i].
	methodVector do: [|:m| m printLine].
	self).
| )
