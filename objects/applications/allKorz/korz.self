 '$Revision:$'
 '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: doubleDispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         equalsKorzSlot: x = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'defaultBehavior' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         matchesForKorz: anObject = ( |
            | 
            parent == anObject parent ifFalse: [^ false]. "hack! dmu"
             = anObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'false' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         asKorzObject = ( |
            | 
            korz facets getWellKnownFacet: 'false').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: applications\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         korz = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractContext = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz abstractContext.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         arguments <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (dictionary copyRemoveAll)'
        
         argumentsReplacedWhenBlockWasEntered <- dictionary copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz abstractContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         activateForAST: ast HomeContext: homeCtx IfNLR: nlrBlock = ( |
            | 
            ast ifBlockReplaceLexicallyScopedImplicitArgumentsIn: self FromHome: homeCtx.

            activationFacet: ast facetForNewActivationIn: self.

            makeSlotsInScopeFor: ast
                           Home: homeCtx
                          IfNLR: nlrBlock.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         activationFacet = ( |
            | 
            arguments at: activationName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         activationFacet: rf = ( |
            | 
            [rf isNotNil] assert.
            arguments at: activationName Put: rf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         activationName = 'activation'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addArgumentFromDeclaration: dcl = ( |
            | 
            dcl contentsFacet ifNil: [^ self].
            argumentAt: dcl localName Put: dcl contentsFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addOrRemoveAll: aDict = ( |
            | 
            aDict do: [|:f. :n| f ifNil: [arguments removeKey: n IfAbsent: []] IfNotNil: [arguments at: n Put: f]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentAt: name Put: facet = ( |
            | 
            [facet isNotNil] assert.
            arguments at: name Put: facet. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         assertNoNils = ( |
            | 
            [
              arguments do: [|:a. :k| [a isNotNil] assert].
              true
            ] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (resend.copy
             arguments: arguments copy)
             argumentsReplacedWhenBlockWasEntered: argumentsReplacedWhenBlockWasEntered copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAddAll: aContext = ( |
             r.
            | 
            r: copy.
            r arguments addAll: aContext arguments.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAddAllDeclarationsAndGuardComponents: dgs = ( |
             r.
            | 
            r: copy.
            dgs do: [|:dcl| r addArgumentFromDeclaration: dcl].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAddAllFormals: formals = ( |
             r.
            | 
            r: copy.
            (formals copyFilteredBy: [|:f| f isDispatched]) do: [|:f| r argumentAt: f formalName Put: f childFacets first].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyArgumentNamed: n Facet: f = ( |
            | 
            argumentsReplacedWhenBlockWasEntered at: n Put: arguments at: n IfAbsent: [nil].
            arguments at: n Put: f.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIncorperatingGuard: g = ( |
            | 
            copyAddAll: g asContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
             r.
            | 
            r: copy.
            r arguments removeAll.
            r argumentsReplacedWhenBlockWasEntered removeAll.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         deactivate = ( |
            | 
            deleteArgumentSlots.
            activationFacet vaporize.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         deleteArgumentSlots = ( |
             localSlots.
            | 
            localSlots: activationFacet korzParentFormals.
            localSlots do: [|:ls| ls vaporize].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluate: methodBlockOrExpressionAST HomeContext: homeCtx IfNLR: nlrBlock = ( |
             newCtx.
            | 
            [
              newCtx: copy activateForAST: methodBlockOrExpressionAST HomeContext: homeCtx IfNLR: [|:rr| ^ nlrBlock value: rr].
              methodBlockOrExpressionAST expressions evaluateInContext: newCtx IfNLR: nlrBlock
            ] onReturn: [newCtx deactivate]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateExpressionAST: ast IfNLR: nlrBlock = ( |
            | 
            evaluate: ast HomeContext: self IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateMethodOrBlockAST: ast HomeContext: homeCtx IfNLR: nlrBlock = ( |
            | 
            evaluate: ast HomeContext: homeCtx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         facetForNewMethodActivation: aMethodOrBlockAST = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: general arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = ( |
            | 
            arguments asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitArgumentAt: name Put: facet = ( |
            | 
            arguments at: name Put: facet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitArguments = ( |
            | 
            arguments copyFilteredBy: [|:a. :n| (isPositionalName: n) not]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitArgumentsWithNamesDo: blk = ( |
            | 
            arguments do: [|:f. :n|
              (isNameImplicit: n) ifTrue: [blk value: f With: n]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         indexOfPositionalName: n = ( |
            | 
            "Oy, such a hack!"
            [qqq].
            ((n copyWithoutPrefix: positionalPrefix) copyWithoutSuffix: positionalSuffix) asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isNameImplicit: n = ( |
            | 
            (isPositionalName: n) not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isPositionalName: n = ( |
            | 
            (positionalPrefix isPrefixOf: n) && [positionalSuffix isSuffixOf: n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotsForDeclarationsInMethodFrom: declarationsAndGuardComponents ArgumentsForGuardsToEnsureLocalSlotsFoundFirst: argumentsForGuards IfNLR: nlrBlock = ( |
            | 
            declarationsAndGuardComponents do: [|:d|
              d makeSlotInMethodContext: self Formals: (korz formal copyAllImplicitFromFacetsByName: argumentsForGuards) IfNLR: nlrBlock.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - making slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         makeSlotsInScopeFor: ast Home: homeCtx IfNLR: nlrBlock = ( |
            | 
                      makeSlotsForDeclarationsInMethodFrom: ast formalsOfASTForMakingLocalAndArgumentSlots 
            ArgumentsForGuardsToEnsureLocalSlotsFoundFirst: (homeCtx implicitArguments copy at: activationName Put: activationFacet )
                                                     IfNLR: nlrBlock.

            removePositionalArguments).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         newChildOfActivationFacet = ( |
            | 
            (arguments at: activationName IfAbsent: [^ korz facet copyRemoveAll]) newChild).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetAt: i = ( |
            | 
            arguments at: (positionalFacetNameAt: i) IfAbsent: [korz facets foyer]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetAt: i Put: aFacet = ( |
            | 
            arguments at: (positionalFacetNameAt: i) Put: aFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacetCount = ( |
            | 
            (arguments copyFilteredBy: [|:a. :n| isPositionalName: n]) size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         positionalFacetNameAt: index = ( |
            | 
            positionalPrefix, index printString, positionalSuffix).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFacets = ( |
             r.
            | 
            r: vector copySize: positionalFacetCount.
            r do: [|:e. :i| r at: i Put:  positionalFacetAt: i succ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         positionalPrefix = '<'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         positionalSuffix = '>'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | 
            [david asymmetric].
            arguments at: receiverName IfAbsent: [korz facets foyer]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: rf = ( |
            | 
            [david asymmetric].
            [rf isNotNil] assert.
            arguments at: receiverName Put: rf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: implicit arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverName = 'rcvr'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: activating - rebinding\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         removePositionalArguments = ( |
            | 
            arguments: arguments copyFilteredBy: [|:f. :n| (isPositionalName: n) not]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: positional arguments\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceNameOfPositionalFacetAt: index With: newName = ( |
             oldName.
             value.
            | 
            oldName: positionalFacetNameAt: index.
            value: arguments at: oldName.
            arguments removeKey: oldName.
            arguments at: newName Put: value.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | 
            (arguments copyMappedBy: [|:arg. :name| name, ' = ', arg printString]) 
              reduceWith: [|:a. :b| a, ',\n\n', b ]  IfSingleton: [|:a| a]  IfEmpty: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: static initializers\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         withScopeFromDeclarationsAndGuardComponents: declarationsAndGuardComponents Do: blk = ( |
             ctx.
             dgs.
            | 
            dgs: declarationsAndGuardComponents copyFilteredBy: [|:dcl| dcl isMethod not  &&  [dcl contentsFacet isNotNil]].
            ctx: (copy activationFacet: newChildOfActivationFacet) 
                  copyAddAllDeclarationsAndGuardComponents: dgs.
            ctx makeSlotsForDeclarationsInMethodFrom: dgs
                  ArgumentsForGuardsToEnsureLocalSlotsFoundFirst: ctx arguments 
                  IfNLR: raiseError.
            [blk value: ctx] onReturn: [ctx deactivate]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> () From: ( | {
         'Category: static initializers\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         withScopeFromGuard: guard Do: blk = ( |
            | 
            withScopeFromDeclarationsAndGuardComponents: (guard ifNil: vector IfNotNil: [guard componentsForMakingSlots])
              Do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ast = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( |
             {} = 'Comment: I am a name space for korz AST nodes\x7fModuleInfo: Creator: globals korz ast.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: abstract and formless\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         abstract = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstract.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstract parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForParseTree: pt = ( |
            | copy parseTree: pt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         ensureNotPrototype = ( |
            | 
            asMirror creatorPathIfPresent: [error: 'is the prototype'] IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForNewActivationIn: ctx = ( |
            | 
            ctx newChildOfActivationFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifBlockReplaceLexicallyScopedImplicitArgumentsIn: newCtx FromHome: homeCtx = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isBoundBlock = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isObjectLiteral = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiverContext = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         slotHoldingMe: aKorzSlot = ( |
            | "I don't care" self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         source = ( |
            | parseTree source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         sourceString = ( |
            | 
            sourceStringIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         sourceStringIfFail: fb = ( |
            | 
            parseTree source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korzParser parseNodes node)'
        
         parseTree <- bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstractMessageSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addPositionalArgument: a = ( |
            | 
            positionalArguments add: a. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy positionalArguments: positionalArguments copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForMessageSendParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initMessageSendEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         copyForParseTree: pt = ( |
            | (resend.copyForParseTree: pt) selector: pt selectorString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateAllOfMyArgumentsIntoANewContextFrom: aContext IfNLR: nlrBlock = ( |
             r.
            | 
            r: aContext copy.
            r argumentsReplacedWhenBlockWasEntered removeAll.
            (evaluateAllOfMyPositionalArgumentsIn: aContext IfNLR: nlrBlock) asVector  
              do: [|:a. :i|
                r positionalFacetAt: i succ Put: a
              ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateAllOfMyPositionalArgumentsIn: aContext IfNLR: nlrBlock = ( |
            | 
            positionalArguments copyMappedBy: [|:a| a evaluateInContext: aContext IfNLR: nlrBlock]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateForContextWithArguments: newContext = ( |
            | 
            korz operations send: selector ToContext: newContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             c.
            | 
            [qqq "hack for _ThisContext"].
            [david remove _ThisContext hack].
            selector = '_ThisContext' ifTrue: [^ (korz proxyFacet copy value: ctx) addKorzParentFacet: korz facets foyer].

            ctx assertNoNils.
            c:  evaluateAllOfMyArgumentsIntoANewContextFrom: ctx copy IfNLR: nlrBlock.
            c assertNoNils.
            evaluateForContextWithArguments: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initMessageSendEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            parseTree arguments do: [|:apt|
              addPositionalArgument: korz ast expression copyForExpressionParseTree: apt  EnclosingScopeAST: enclosingScopeAST IfFail: [|:e| ^ fb value: e]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: evalulating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isSelfImplicit = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast expression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            positionalArguments do: [|:c| c setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         declaration = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast declaration.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         expression = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast expression.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForExpressionParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            case
              if: (pt isKorzReturn          )  Then: [  korz ast return copyForReturnParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb ]
              If: [pt isKorzMessageSend     ]  Then: [ (pt firstSubnode isKorzImplicitReceiver 
                                                        ifTrue: [korz ast implicitReceiverSend] 
                                                         False: [korz ast explicitReceiverSend]
                                                     )  copyForMessageSendParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb]
              If: [pt isKorzConstant        ]  Then: [  korz ast literal copyForConstantParseTree: pt IfFail: fb]
              If: [pt isKorzObject          ]  Then: [  korz ast object copyForObjectParseTree: pt IfFail: fb]
              If: [pt isKorzMethod          ]  Then: [  error: 'cannot have method expressions in method bodies and method ASTs must be created from whole slot parseNode']
              If: [pt isKorzBlock           ]  Then: [  korz ast freeBlock copyForBlockParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb]
              If: [pt isKorzReceiver        ]  Then: [  korz ast implicitReceiverSend copyForMessageSendParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb ]
              If: [pt isKorzPop             ]  Then: [  korz ast expression copyForExpressionParseTree: pt expression EnclosingScopeAST: enclosingScopeAST IfFail: fb ]
              If: [pt isKorzSubexpression   ]  Then: [  korz ast expressions copyForSubexpressionParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb ]
              If: [pt isKorzReceiverContext ]  Then: [  korz ast receiverContext copyForReceiverContextParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb ]
                                        Else: [  fb value: pt source, ':  You are not Morg; your are not Eymorg. What are you?']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressions = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractMessageSend = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast expression copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstractMessageSend.

CopyDowns:
globals korz ast expression. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: abstract and formless\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         sequence = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast sequence.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         elements <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast sequence parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         add: x = ( |
            | 
            ensureNotPrototype.
            elements add: x. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addFirst: x = ( |
            | elements addFirst: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asList = ( |
            | elements asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         asSet = ( |
            | elements asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         asVector = ( |
            | elements asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy elements: elements copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAddFirst: x = ( |
             r.
            | 
            r: copy.
            r addFirst: x.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         copyMappedBy: blk = ( |
            | elements copyMappedBy: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         copyRemoveAll = ( |
            | copy elements: elements copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         do: blk = ( |
            | elements do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         findFirst: testBlk IfPresent: presentBlk IfAbsent: absentBlk = ( |
            | 
            elements findFirst: testBlk IfPresent: presentBlk IfAbsent: absentBlk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isEmpty = ( |
            | elements isEmpty).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            elements do: [|:c| c setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            elements statePrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'arguments' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'arguments' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast arguments.

CopyDowns:
globals korz ast sequence. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast arguments)'
        
         positionalArguments <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'arguments' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'\')'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'arguments' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'arguments' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast arguments parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'arguments' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitReceiverSend = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast implicitReceiverSend.

CopyDowns:
globals korz ast abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast implicitReceiverSend)'
        
         contentsDcl <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         guard.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast declaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotParseTree: slotParseTree GuardComponents: comps FormalIndex: i IfFail: fb = ( |
            | 
            case
              if: ( slotParseTree isKorzArgumentSlot )  
            Then: [ korz ast positionalFormalDeclaration copyForArgumentSlotParseTree: slotParseTree GuardComponents: comps Index: i IfFail: fb ]
              If: [ slotParseTree isKorzMethodSlot ]
            Then: [ korz ast methodDeclaration copyForSlotParseTree: slotParseTree  GuardComponents: comps Index: i IfFail: fb ]
              If: [ slotParseTree isKorzDataSlot ]
            Then: [ korz ast dataDeclaration copyForSlotParseTree: slotParseTree GuardComponents: comps Index: i IfFail: fb ]
            Else: [ fb value: 'expected either (possibly initialized) data slot or method slot' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotParseTree: pt GuardComponents: comps IfFail: fb = ( |
            | 
            copyForSlotParseTree: pt GuardComponents: comps FormalIndex: -1 IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         declarationsAndExpressionsExtent = ( |
            | contentsDcl declarationsAndExpressionsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         declarationsExtent = ( |
            | contentsDcl declarationsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         doesGuardIncludeRcvr = ( |
            | 
            guard ifNil: false IfNotNil: [guard doesIncludeRcvr]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateContentsDclInContext: ctx = ( |
            | 
            contentsDcl evaluateASTInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateContentsDclInContext: ctx IfNLR: nlrBlock = ( |
            | 
            contentsDcl evaluateInContext: ctx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressionsExtent = ( |
            | 
            contentsDcl expressionsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionsSourceString = ( |
            | 
            contentsDcl expressionsSourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hasInitializationExpression = ( |
            | contentsDcl isNotNil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initGuardFromComponents: comps IfFail: fb = ( |
            | 
            guard:
              korz ast slotGuard copyForComponents: comps AndForSlotParseTree: parseTree IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isAssignable = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFormal = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isLocal = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isObjectLiteralDeclaration = ( |
            | contentsDcl isObjectLiteral).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositionalFormal = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         localName = ( |
            | name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         name = 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         selector = ( |
            | name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         setContentsFacetIn: aContext IfNLR: nlrBlock = ( |
            | 
            [contentsFacet isNil] assert.
            contentsDcl ifNil: [^ self].
            contentsFacet: aContext withScopeFromGuard: guard Do: [|:ctx|
                contentsDcl evaluateInContext: ctx IfNLR: [|:r| ^ nlrBlock value: r]
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            setInitializersOfGuardIn: aContext IfNLR: nlrBlock.
            setInitializersOfContentsDclIn: aContext IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         setInitializersOfContentsDclIn: aContext IfNLR: nlrBlock = ( |
            | 
            contentsDcl ifNil: [^ self].
            contentsDcl == korz ast declaration ifTrue: [^ self].
            aContext withScopeFromGuard: guard Do: [|:ctx|
              contentsDcl setInitializersIn: ctx IfNLR: nlrBlock
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         setInitializersOfGuardIn: aContext IfNLR: nlrBlock = ( |
            | 
            guard ifNotNil: [guard setInitializersIn: aContext IfNLR: nlrBlock].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         statePrintString = ( |
            | name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast implicitReceiverSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel = ( |
            | 
            "hack for initLocalDeclarationSlotWithAnnotation:IfFail: when no initialization"
            (copy parseTree: korzParser parseNodes node) selector: sel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isSelfImplicit = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractFormalDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast declaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstractFormalDeclaration.

CopyDowns:
globals korz ast declaration. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         childFacetOrNil.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstractFormalDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForParseTree: pt DispatchedOnIfNotNil: childFacet = ( |
            | 
            (copyForParseTree: pt) childFacetOrNil: childFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hasModifier = ( |
            | isRemove).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingRenameItInIncomingContext: ctx = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatched = ( |
            | 
            childFacetOrNil isNotNil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFormal = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiver = ( |
            | 
            name = korz ast receiverFormal name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isRemove = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         localName = ( |
            | name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotInMethodContext: ctx Formals: formals IfNLR: nlrBlock = ( |
             cf.
            | 
            cf: isRemove ifTrue: [contentsFacet] False: [ctx arguments at: name].
            case if: (cf isNotNil) Then: []
                 If: [isRemove]    Then: [^ self]  "may have remove compoment with nil contents for -rcvr"
                                   Else: [error: 'nil contents'].
            korz slots dataSlot 
                 copySelector: localName
                      Formals: formals
              InitialContents: cf
                 IsAssignable: false
                        Guard: nil.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         name = ( |
            | 'anon').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         sourceString = ( |
            | statePrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            localName, 
            (childFacetOrNil ifNil: '' IfNotNil: ['<<', childFacetOrNil printString, '>>'])).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractNonformalDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast declaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstractNonformalDeclaration.

CopyDowns:
globals korz ast declaration. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast abstractNonformalDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlotParseTree: pt GuardComponents: comps Index: i IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initSlotWithGuardComponents: comps IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
             s.
            | 
            s: sourceString.
            s isEmpty not && [s last = '.'] ifFalse: s True: [s copyWithoutLast]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initNameIfFail: fb = ( |
            | 
            name: parseTree selectorString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initParentIfFail: fb = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotWithGuardComponents: comps IfFail: fb = ( |
             b.
            | 
            b: [|:e| ^ fb value: e]. 
            initGuardFromComponents: comps IfFail: b.
            initNameIfFail: b.
            initParentIfFail: b.
            initAssignabilityIfFail: b.
            initContentsIfFail: b).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFormal = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzParent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isLocal = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         boundBlock = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             bootstrap remove: 'parseTree' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast boundBlock.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent parseTree.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         expressions = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast expressions.

CopyDowns:
globals korz ast sequence. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast expressions parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addExpressionsForExpressionSeries: parseTree EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            parseTree doSubnodes: [|:e| 
              add:  korz ast expression copyForExpressionParseTree: e EnclosingScopeAST: enclosingScopeAST IfFail: [|:ee| ^ fb value: ee] 
            ].
            parseTree: parseTree.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSubexpressionParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initSubexpressionEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             r.
            | 
            ctx assertNoNils.
            elements do: [|:e| r: e evaluateInContext: ctx IfNLR: nlrBlock].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initSubexpressionEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            addExpressionsForExpressionSeries: (parseTree expressionSeriesIfFail: [|:e| ^ fb value: e]) EnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast methodBlockOrObject parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addASTFormalFromSlotList: aDeclarationAST = ( |
            | 
            formalsOfASTFromSlotList add: aDeclarationAST.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addExplicitArgumentAndLocalASTsToMeFromSlotListParseTree: slotOrGroup GuardComponents: comps IfFail: fb = ( |
            | 
            [david prepending].
            slotOrGroup isKorzSlot ifTrue: [
              |dcl|
              dcl: korz ast declaration copyForSlotParseTree: slotOrGroup GuardComponents: comps FormalIndex: nextFormalIndex IfFail: [|:e| ^ fb value: e].
              dcl isPositionalFormal ifTrue: [nextFormalIndex: nextFormalIndex succ].
              declarations add: dcl.
              dcl isPositionalFormal  ifTrue: [ 
                canHaveArguments ifFalse: [^ fb value: 'cannot have arguments'].
                addASTFormalFromSlotList: dcl 
              ].
            ]
            False: [
              |newComps|
              newComps: comps copy addAll: 
                slotOrGroup guardNode componentNodes copyMappedBy: [|:sgComp| 
                  (sgComp isRemove ifTrue: [korz ast removedGuardComponent]
                                    False: [korz ast guardComponent])
                   copyForGuardComponentParseTree: sgComp IfFail: [|:e| ^ fb value: e].
              ].
              slotOrGroup slotsAndGroups do: [|:sg|
                addExplicitArgumentAndLocalASTsToMeFromSlotListParseTree: sg
                                                         GuardComponents: newComps
                                                                  IfFail: [|:e| ^ fb value: e]
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addExpressionsIfPresentInBodyParseTree: body IfFail: fb = ( |
            | 
            body expressionSeriesIfPresent: [|:es|
              es hasSubnodes ifTrue: [
                cannotHaveExpressions ifTrue: [error: 'should not have expressions'].
                expressions addExpressionsForExpressionSeries: es  EnclosingScopeAST: self IfFail: [|:e| ^ fb value: e].
              ].
            ] 
            IfAbsent: [].

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         cannotHaveExpressions = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy declarations: declarations copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForEvaluatorContentsParseTree: parseTree IfFail: fb = ( |
            | 
            (copyForParseTree: parseTree) initSlotListAndExpressionsForBody: parseTree IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initForSlotListParseTree: pt IfFail: fb = ( |
            | 
            declarations parseTree: pt.
            pt slotsAndGroups do: [|:sOrG| addExplicitArgumentAndLocalASTsToMeFromSlotListParseTree: sOrG GuardComponents: list copyRemoveAll IfFail: [|:e| ^ fb value: e]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initMethodBlockOrObjectIfFail: fb = ( |
            | 
            parseTree objectBlockOrMethodBodyIfPresent: [|:b|
              initSlotListAndExpressionsForBody: b IfFail: fb
            ]
            IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotListAndExpressionsForBody: parseTree IfFail: fb = ( |
            | 
              initSlotListIfPresentInBodyParseTree: parseTree IfFail: [|:e| ^ fb value: e].
            addExpressionsIfPresentInBodyParseTree: parseTree IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotListIfPresentInBodyParseTree: pt IfFail: fb = ( |
            | 
            pt slotListIfPresent: [|:sl. | 
              initForSlotListParseTree: sl IfFail: [|:e| ^ fb value: e]
            ] 
            IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         localVariableDeclarations = ( |
            | 
            declarations asList copyFilteredBy: [|:d| d isFormal not]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         mustHaveExpressions = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            declarations do: [|:c| c setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         declarations = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast declarations.

CopyDowns:
globals korz ast sequence. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast declarations parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyWithDeclarationForEnclosingObject: aFacet = ( |
            | 
            [dualCounter].
            copyAddFirst: korz ast guardComponent copyForName: korz context receiverName ContentsFacet: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         locals = ( |
            | asList copyFilteredBy: [|:ast| ast isLocal]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         methodBlockOrObject = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast methodBlockOrObject.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast declarations)'
        
         declarations <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'declarations' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (1)'
        
         nextFormalIndex <- 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         methodOrFreeBlock = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast methodBlockOrObject copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast methodOrFreeBlock.

CopyDowns:
globals korz ast methodBlockOrObject. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast expressions)'
        
         expressions <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expressions' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         formalsOfASTFromSlotList <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast methodOrFreeBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (resend.copy expressions: expressions copy)
            formalsOfASTFromSlotList: formalsOfASTFromSlotList copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         declarationsAndExpressionsExtent = ( |
            | 
            declarations isEmpty ifTrue: [^ expressionsExtent].
            expressions  isEmpty ifTrue: [^ declarationsExtent].
            declarationsExtent start to: expressionsExtent end).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         declarationsExtent = ( |
            | 
            declarations isEmpty ifTrue: [^ parseKit inputExtent ].
            declarations parseTree extent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateASTInContext: ctx = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressionsExtent = ( |
            | 
            expressions isEmpty ifTrue: [ ^ parseKit inputExtent].
            expressions parseTree extent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionsSourceString = ( |
            | 
            expressions sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForPositionalNameInIDE = ( |
            | 
            formalsOfASTFromSlotList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: i = ( |
            | 
            formalsOfASTForPositionalNameInIDE
              findFirst: [|:f| f isExplicit && [f index = i]]
              IfPresent: [|:f| ^ f localName]
               IfAbsent: 'nameForPositionalFormalAt: non-existant').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalDeclarations = ( |
             r.
            | 
            r: declarations asList copyFilteredBy: [|:f| f isPositionalFormal].
            [
              r asVector do: [|:f. :i| [f index pred = i] assert].
              true
            ] assert.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            resend.setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].

            aContext withScopeFromDeclarationsAndGuardComponents: declarations locals Do: [|:ctx|
              expressions do: [|:c| c setInitializersIn: ctx IfNLR: [|:r| ^ nlrBlock value: r]].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         freeBlock = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast methodOrFreeBlock copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast freeBlock.

CopyDowns:
globals korz ast methodOrFreeBlock. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast freeBlock)'
        
         freeBlock <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         homeContext.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         homeNLRBlock.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast boundBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         contents = ( |
            | freeBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForFreeBlock: b HomeContext: ctx HomeNLRBlock: nlrBlock = ( |
            | 
            ((copyRemoveAll freeBlock: b) homeContext: ctx) homeNLRBlock: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | 
            (copy freeBlock: nil) homeContext: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         declarations = ( |
            | freeBlock declarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         doesGuardIncludeRcvr = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         enclosingScopeAST = ( |
            | freeBlock enclosingScopeAST).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateASTInContext: ctx = ( |
            | 
            ctx evaluateMethodOrBlockAST: self 
                             HomeContext: homeContext
                                   IfNLR: homeNLRBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         expressions = ( |
            | freeBlock expressions).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressionsExtent = ( |
            | freeBlock expressionsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressionsSourceString = ( |
            | freeBlock expressionsSourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForNewActivationIn: ctx = ( |
            | 
            homeContext newChildOfActivationFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMakingImplicitAndExplicitArgumentSlots = ( |
            | 
            rootScope formalsOfASTImplicit,  freeBlock formalsOfASTFromSlotList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMakingLocalAndArgumentSlots = ( |
            | 
            declarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMethodSlotCreation = ( |
            | 
            [david asymmetric].
            freeBlock formalsOfASTFromSlotList copy add: korz ast receiverFormal copyDispatchedOn: (korz facets getWellKnownFacet: 'protoBlock') copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForPositionalNameInIDE = ( |
            | 
            freeBlock formalsOfASTFromSlotList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         guard = bootstrap stub -> 'globals' -> 'nil' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         homeMethodSlot = ( |
            | freeBlock homeMethodSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifBlockReplaceLexicallyScopedImplicitArgumentsIn: newCtx FromHome: homeCtx = ( |
             implicitArgumentsOfHome.
            | 
            "implicitReceiverSends must have all arguments have same value as they did when rootScope was entered"

            implicitArgumentsOfHome: homeCtx implicitArguments.
            implicitArgumentsOfHome do: [|:f. :n|
              newCtx copyArgumentNamed: n Facet: f
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitArgumentNamesOfRootScope = ( |
            | 
            (rootScope formalsOfASTImplicit copyFilteredBy: [|:f| f isExplicit not]) copyMappedBy: [|:f| f name]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isBoundBlock = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isNested = ( |
            | freeBlock isNested).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         localDeclarations = ( |
            | 
            declarations locals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameForPositionalFormalAt: i = ( |
            | 
            freeBlock nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parseTree = ( |
            | freeBlock parseTree).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         rebindFormals: formals ToHomeContext: ignored = ( |
            | 
            "Passing in formals of method slot so that local variable and arg slots can be created with the right guards."
            "But this fails for value* methods because we need the formals of the home method slot NOT the block value slot."
            "Maybe, I could just make temps and locals with only activation in guard and rely on lookup?"
            "But, this would disallow future feature of punning locals based on other dims."
            "Nope, if AST is for a boundBlock, need implicitFormals of home slot."

            formals copyMappedBy: [|:f| (f copyForSlot: nil) dispatchOnlyOn: homeContext arguments at: f formalName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         rootScope = ( |
            | freeBlock rootScope).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         selector = ( |
            | freeBlock selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'boundBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         slotHoldingMe.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         dataDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstractNonformalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast dataDeclaration.

CopyDowns:
globals korz ast abstractNonformalDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         contentsFacet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         isAssignable <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         isKorzParent <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast dataDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addImplicitFormalsFromGuardToDataSlot: aSlot = ( |
             efn.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            guard ifNil: [^ self]. 

            aSlot addAllSlotFormals:
              guard components  copyMappedBy: [ |:componentAST  |
                (((korz formal 
                    copyForSlot: aSlot) 
                     formalName: componentAST name) 
                     isImplicit: true) 
                     dispatchOnIfNotNil: componentAST contentsFacet
              ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initAssignabilityIfFail: fb = ( |
            | 
            isAssignable: parseTree isKorzAssignableSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initContentsIfFail: fb = ( |
            | 
            contentsDcl: 
              parseTree assignmentAndValueIfPresent: [|:a. :v|
                korz ast expression copyForExpressionParseTree: v 
                                             EnclosingScopeAST: nil
                                                        IfFail: [|:e| ^ fb value: e].
              ]
              IfAbsent: [ 
                korz ast implicitReceiverSend copySelector: korz facets nilName 
              ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initNameIfFail: fb = ( |
            | 
            parseTree nameNode isKorzUnarySlotName ifFalse: [
              ^ fb value: 'expected unary slot name instead of "', in source, '"'
            ].
            resend.initNameIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initParentIfFail: fb = ( |
            | 
            isKorzParent: parseTree nameNode starIfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotInMethodContext: ctx Formals: formals IfNLR: nlrBlock = ( |
             s.
            | 
            [contentsFacet isNotNil] assert.
            s: korz slots dataSlot 
                 copySelector: name
                      Formals: formals
              InitialContents: contentsFacet "was: (evaluateContentsDclInContext: ctx IfNLR: nlrBlock) "
                 IsAssignable: isAssignable
                        Guard: guard.

            isObjectLiteralDeclaration ifTrue: [s setKorzCreatorSlotHint].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotInObject: enclosingObj In: ctx IfNLR: nlrBlock = ( |
             s.
            | 
            [contentsFacet isNotNil] assert.

            isKorzParent ifTrue: [
              [david isKorzParent].  "no names for parent slots yet"
              contentsFacet adoptEitherChildCoordinateOf: guard Or: enclosingObj.
              ^ nil
            ].
            s: korz slots dataSlot
                    copySelector: name
                         Formals: list copyRemoveAll
                 InitialContents: contentsFacet
                    IsAssignable: isAssignable
                           Guard: guard.

            isObjectLiteralDeclaration  ifTrue: [s setKorzCreatorSlotHint].
            s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'dataDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            contentsFacet ifNotNil: [^ self].

            resend.setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].

            setContentsFacetIn: aContext IfNLR: nlrBlock.
            [contentsFacet isNotNil] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         explicitReceiverSend = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast explicitReceiverSend.

CopyDowns:
globals korz ast abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast explicitReceiverSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         evaluateAllOfMyArgumentsIntoANewContextFrom: aContext IfNLR: nlrBlock = ( |
             allDims.
             r.
            | 

            allDims:
              receiverAST isReceiverContext ifFalse: [ |rcv|
              dictionary copyRemoveAll at: korz context receiverName Put: receiverAST evaluateInContext: aContext IfNLR: nlrBlock.
            ]  True: [
              receiverAST evaluateDimensionsInContext: aContext IfNLR: nlrBlock
            ].
            r: resend.evaluateAllOfMyArgumentsIntoANewContextFrom: aContext IfNLR: nlrBlock.
            r assertNoNils.
            r addOrRemoveAll: aContext argumentsReplacedWhenBlockWasEntered. 
            r addOrRemoveAll: allDims.
            r assertNoNils.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initMessageSendEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            resend.initMessageSendEnclosingScopeAST: enclosingScopeAST IfFail: [|:e| ^ fb value: e].
            receiverAST: korz ast expression copyForExpressionParseTree: parseTree receiver  EnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         isSelfImplicit = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            receiverAST setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].
            resend.setInitializersIn: aContext IfNLR: nlrBlock.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'explicitReceiverSend' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         receiverAST <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'implicitReceiverSend' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formals = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast sequence copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast formals.

CopyDowns:
globals korz ast sequence. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast formals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addReceiverFacet: rf = ( |
            | 
            [receiverIfPresent: false IfAbsent: true] assert.
            uncheckedAddReceiverFacet: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addReceiverFacetIfAbsent: rf = ( |
            | 
            receiverIfPresent: [] IfAbsent: [ uncheckedAddReceiverFacet: rf ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         explicitLocalNames = ( |
            | 
            (asList copyFilteredBy: [|:f| f isExplicit]) mapBy: [|:f| f localName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'sequence' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverIfPresent: pb IfAbsent: ab = ( |
            | 
            findFirst: [|:f| f isReceiver] IfPresent: [|:f| pb value: f] IfAbsent: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setReceiverFacet: rf = ( |
            | 
            receiverIfPresent: [|:f| elements remove: f] IfAbsent: [].
            uncheckedAddReceiverFacet: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'formals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         uncheckedAddReceiverFacet: rf = ( |
            | 
            add: korz ast receiverFormal copyDispatchedOn: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         enclosingScopeAST.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast freeBlock parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForBlockParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initBlockEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
             bb.
            | 
            bb: korz ast boundBlock copyForFreeBlock: self HomeContext: ctx HomeNLRBlock: nlrBlock. 
            (korz slots methodSlot copyForAST: bb EnclosingObject: nil In: ctx) receiverFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         homeMethodSlot = ( |
            | enclosingScopeAST homeMethodSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initBlockEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            enclosingScopeAST: enclosingScopeAST.
            initMethodBlockOrObjectIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isNested = ( |
            | 
            enclosingScopeAST isBoundBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         rootScope = ( |
            | enclosingScopeAST rootScope).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'freeBlock' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         selector = ( |
             c.
            | 
            c: positionalDeclarations size.
            case
              if:  ( c = 0 )  Then:  'value'
              If:  [ c = 1 ]  Then:  'value:'
              If:  [ c = 2 ]  Then:  'value:With:'
              Else: [|r <- 'value:'|
                c pred do: [r: r & 'With:'].
                r flatString
              ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         guardComponent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'childFacetOrNil' From:
             bootstrap remove: 'parent' From:
             globals korz ast abstractFormalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast guardComponent.

CopyDowns:
globals korz ast abstractFormalDeclaration. copy 
SlotsToOmit: childFacetOrNil parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         contentsFacet.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast guardComponent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         childFacetOrNil = ( |
            | contentsFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForGuardComponentParseTree: pt IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initNameAndContentsIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForName: n ContentsFacet: f = ( |
             r.
            | 
            r: copy.
            r name: n.
            r contentsFacet: f.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingRenameItInIncomingContext: ctx = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initContentsIfFail: fb = ( |
            | 
            parseTree hasValue not && [securePrefix isPrefixOf: name]  ifTrue: [^ fb error: 'guard component starting with: ', securePrefix, ' must have a coordinate'].
            contentsDcl: parseTree hasValue ifFalse: [nil] 
                                               True: [korz ast expression copyForExpressionParseTree: parseTree value  
                                                                                   EnclosingScopeAST: nil 
                                                                                              IfFail: [|:e| ^ fb value: e]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initNameAndContentsIfFail: fb = ( |
            | 
            initNameIfFail: [|:e| ^ fb value: e].
            initContentsIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initNameIfFail: fb = ( |
            | 
            name: parseTree selectorString.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         securePrefix = 'secure_'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            contentsFacet ifNotNil: [^ self].
            resend.setInitializersIn: aContext IfNLR: nlrBlock.
            setContentsFacetIn: aContext IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         literal = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast expression copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast literal.

CopyDowns:
globals korz ast expression. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facet = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz facet.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz facet)'
        
         contentsFacet <- bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast literal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForConstantParseTree: pt IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initConstantIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            contentsFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initConstantIfFail: fb = ( |
            | 
            contentsFacet: parseTree value asKorzObject).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'literal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         method = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast methodOrFreeBlock copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast method.

CopyDowns:
globals korz ast methodOrFreeBlock. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         enclosingMethodDeclaration.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         formalsOfASTFromEnclosingSlotDeclaration <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         formalsOfASTFromGuard <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast method parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addASTFormalFromEnclosingSlotDeclaration: aPositionalDeclaration = ( |
            | 
            formalsOfASTFromEnclosingSlotDeclaration add: aPositionalDeclaration.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addASTFormalFromGuard: aGuardComponentAST IfFail: fb = ( |
            | 
            [david].
            formalsOfASTFromGuard add: aGuardComponentAST.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addAllASTFormalsInGuard: guard IfFail: fb = ( |
            | 
            guard componentsDo: [|:guardComponentAST|
              addASTFormalFromGuard: guardComponentAST IfFail: [|:e| ^ fb value: e]
            ]. 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addPositionalFormalAt: n Named: name ParseTree: pt = ( |
            | 
            addASTFormalFromEnclosingSlotDeclaration:
              korz ast positionalFormalDeclaration copyForPositionalFormalSlotParseTree: pt
                                                                                  Index: n 
                                                                                  Named: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addPositionalFormalFromParseNode: guardComponentNode At: i IfFail: fb = ( |
            | 
            addPositionalFormalAt: i 
                            Named: guardComponentNode selectorString
                        ParseTree: guardComponentNode.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addPositionalFormalsFrom: formalParseNodesFromSlotDeclaration IfFail: fb = ( |
            | 
            formalParseNodesFromSlotDeclaration asVector do: [|:formalParseNode. :i | 
              addPositionalFormalFromParseNode: formalParseNode At: i succ IfFail: fb.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (resend.copy formalsOfASTFromGuard: formalsOfASTFromGuard copy)
            formalsOfASTFromEnclosingSlotDeclaration: formalsOfASTFromEnclosingSlotDeclaration copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForEnclosingMethodDeclaration: methodDcl IfFail: fb = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            (
              copyForParseTree: methodDcl parseTree assignmentAndValueIfPresent: [|:a. :method| method] 
                                                                       IfAbsent: [^ fb value: 'methodDefinition must have a method in it']
            )
              initForEnclosingMethodDeclaration: methodDcl IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForEvaluatorContentsEnclosingMethodDeclaration: methodDcl IfFail: fb = ( |
            | 
            [hooha david].
            "fix things so true case below could work someday"
            false ifTrue: [^ copyForEnclosingMethodDeclaration: methodDcl IfFail: fb].
            (copyForEvaluatorContentsParseTree: methodDcl parseTree IfFail: [|:e| ^ fb value: e])
            enclosingMethodDeclaration: methodDcl).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateASTInContext: ctx = ( |
            | 
            ctx evaluateMethodOrBlockAST: self 
                             HomeContext: ctx 
                                   IfNLR: [|:rr| "must do return here" ^ rr]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facetForNewActivationIn: ctx = ( |
            | 
            ctx facetForNewMethodActivation: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTExplicit = ( |
            | formalsOfASTFromEnclosingSlotDeclaration, formalsOfASTFromSlotList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMakingImplicitAndExplicitArgumentSlots = ( |
            | 
            formalsOfASTImplicit, formalsOfASTExplicit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMakingLocalAndArgumentSlots = ( |
            | 
            declarations elements, formalsOfASTFromEnclosingSlotDeclaration, formalsOfASTFromGuardForMakingLocalSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMethodSlotCreation = ( |
            | 
            formalsOfASTForMethodSlotGuard, formalsOfASTExplicit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMethodSlotGuard = ( |
             r.
            | 
            [david factor with componentsForGuardingSlot].
            r: list copyRemoveAll.
            formalsOfASTFromGuard do: [|:dcl| 
              dcl isRemove ifTrue: [r: r copyFilteredBy: [|:d| d name != dcl name]]
                            False: [r addLast: dcl]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForPositionalNameInIDE = ( |
            | 
            formalsOfASTFromSlotList, formalsOfASTFromEnclosingSlotDeclaration).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTFromGuardForMakingLocalSlots = ( |
             r.
            | 
            [factor with componentsForMakingSlots].
            r: list copyRemoveAll.
            formalsOfASTFromGuard do: [|:dcl| 
              dcl isRemove ifTrue: [r: r copyFilteredBy: [|:d| d name != dcl name]].
              r addLast: dcl
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTImplicit = ( |
            | 
            formalsOfASTFromGuard).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         homeMethodSlot = ( |
            | 
            [enclosingMethodDeclaration name isEmpty not] assert.
            enclosingMethodDeclaration slotHoldingMe).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: activating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifBlockReplaceLexicallyScopedImplicitArgumentsIn: newCtx FromHome: homeCtx = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         ifExplicitArgumentIn: formalParseNodes AppearsInGuard: guard Do: block = ( |
            | 
            (
              (formalParseNodes mapBy: [|:n| n selectorString] Into: set copyRemoveAll)
              intersect: guard dimensionNames
            ) do: [|:n| 
                 ^ fb value: 'slot guard includes dimension: ', 
                             n, 
                             ' but arguments must now be dispatched in place'
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         ifMixing: guardComponentParseNodesFromSlotDeclaration WithFormalsInSlotList: fb = ( |
            | 
                 guardComponentParseNodesFromSlotDeclaration isEmpty not  
            &&  [formalsOfASTFromSlotList isEmpty not]  ifTrue: [
              ^ fb value: 'formals cannot be declared in both slot list and with selector'.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initForEnclosingMethodDeclaration: methodDcl IfFail: fb = ( |
             formalParseNodesFromSlotDeclaration.
             method.
             selectorWithOrWithoutFormals.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].

            initMethodBlockOrObjectIfFail: [|:e| ^ fb value: e].

            enclosingMethodDeclaration: methodDcl.

            formalParseNodesFromSlotDeclaration: methodDcl parseTree formalParseNodes.
            ifMixing: formalParseNodesFromSlotDeclaration WithFormalsInSlotList: [|:e| ^ fb value: e].

            addAllASTFormalsInGuard: methodDcl guard IfFail: [|:e| ^ fb value: e].

            ifExplicitArgumentIn: formalParseNodesFromSlotDeclaration
                  AppearsInGuard: methodDcl guard Do: [|:e| ^ fb value: e]. 

            addPositionalFormalsFrom: formalParseNodesFromSlotDeclaration 
                              IfFail: [|:e| ^ fb value: e].

            [expressions isEmpty not] assert. "should have parsed to an object if no exprs"
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: activating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         localDeclarations = ( |
            | 
            declarations locals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         mustHaveExpressions = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodOrFreeBlock' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: activating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         rebindFormals: formals ToHomeContext: homeCtx = ( |
            | 
            formals copyMappedBy: [|:f| (f copyForSlot: nil) dispatchOnlyOn: homeCtx arguments at: f formalName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'Category: activating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         rootScope = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            resend.setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].
            formalsOfASTFromEnclosingSlotDeclaration do: [|:c| c setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         methodDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstractNonformalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast methodDeclaration.

CopyDowns:
globals korz ast abstractNonformalDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast methodDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAndEvaluateParseTreeForEvaluatorContents: parseTree In: ctx ReportErrorsTo: aResultReporter = ( |
             ast.
             r.
             slot.
            | 

            ast: copyForEvaluatorContentsParseTree: parseTree 
                                            IfFail: [|:x| 
                       aResultReporter reportError: (((traits string parseErrorPt copy start: 0@0) end: parseTree source size@0) message: x)
                                             Title: 'error converting parseTree to AST'.
                                                     ^ aFacet].
            r: makeEvaluateAndVaporizeSlotForAST: ast In: ctx.
            aResultReporter result: r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForEvaluatorContentsParseTree: parseTree IfFail: fb = ( |
            | 
            (copyForParseTree: parseTree) initFromParseTreeForEvaluatorContentsIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReplacingMethodBodyFromParseTree: newBodyParseTree IfFail: fb = ( |
            | 
            (copyForParseTree: parseTree copy replaceMethodBodyWith: newBodyParseTree IfFail: [|:e| ^ fb value: e])
               initContentsIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateASTInContext: ctx = ( |
            | 
            evaluateContentsDclInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsEvaluatorContents: aString In: aContext ReportErrorsTo: aResultReporter = ( |
             parseTree.
             r.
            | 

            parseTree: korzParser objectBlockOrMethodBodyParser  
                         copyParseSource:  aString 
                                  IfFail:  [|:x|  ^ aResultReporter syntaxError: x].

            r:  (parseTree hasExpressions  ifTrue: [korz ast methodDeclaration]  False: [korz ast object])
                  copyAndEvaluateParseTreeForEvaluatorContents: parseTree
                                                            In: aContext
                                                ReportErrorsTo: aResultReporter.
            "aResultReporter result will be nil if error happened"
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsOfASTForMethodSlotCreation = ( |
            | 
            contentsDcl formalsOfASTForMethodSlotCreation).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initAssignabilityIfFail: fb = ( |
            | 
            parseTree isKorzAssignableSlot ifTrue: [fb value: 'methods cannot be assignable']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initContentsIfFail: fb = ( |
            | 
            parseTree assignmentAndValueIfPresent: [|:a. :v|
              contentsDcl: korz ast method copyForEnclosingMethodDeclaration: self
                                                                      IfFail: [|:e| ^ fb value: e]
            ]
            IfAbsent: [fb value: 'methodDeclaration must declare something']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initFromParseTreeForEvaluatorContentsIfFail: fb = ( |
            | 
            name: 'do_it'.
            contentsDcl: korz ast method copyForEvaluatorContentsEnclosingMethodDeclaration: self IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isMethod = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         localDeclarations = ( |
            | 
            contentsDcl localDeclarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         makeEvaluateAndVaporizeSlotForAST: ast In: ctx = ( |
            | 
            korz slots methodSlot copyEvaluateAndVaporizeForAST: ast In: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         makeSlotInObject: enclosingObj In: ctx IfNLR: nlrBlock = ( |
            | 
            korz slots methodSlot copyForAST: self EnclosingObject: enclosingObj In: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: i = ( |
            | 
            contentsDcl nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         setInitializersIn: x IfNLR: y = ( |
            | 
            resend.setInitializersIn: x IfNLR: y).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         slotHoldingMe.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: whole entities\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         object = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast methodBlockOrObject copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast object.

CopyDowns:
globals korz ast methodBlockOrObject. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast object parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         cannotHaveExpressions = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAndEvaluateParseTreeForEvaluatorContents: parseTree In: ctx ReportErrorsTo: aResultReporter = ( |
             ast.
             errPt.
            | 
            [rmContents].
            errPt: (traits string parseErrorPt copy start: 0@0) 
                                                      end: parseTree source size@0.
            ast: copyForEvaluatorContentsParseTree: parseTree IfFail: [|:x|  aResultReporter syntaxError: errPt message: x. ^ aFacet].
            ast setInitializersIn: ctx IfNLR: [|:r|  aResultReporter syntaxError: errPt message: 'NLR in initializer'. ^ aFacet].
            aResultReporter result: ast evaluateASTInContext: ctx.
            aResultReporter result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForObjectParseTree: pt IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initObjectIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         createObjectIn: ctx = ( |
            | 
            korz facet copyWithSlotsFromDeclarationsInAST: self In: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         doesGuardIncludeRcvr = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateASTInContext: ctx = ( |
            | 
            evaluateInContext: ctx 
                        IfNLR: [|:r|r]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            createObjectIn: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressions = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initObjectIfFail: fb = ( |
            | 
            initMethodBlockOrObjectIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isObjectLiteral = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodBlockOrObject' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         selector = ( |
            | 'noSelectorIAmAnObject').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         pop = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast pop.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         expression.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast pop parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForPopParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initPopEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            "return expression value since period is optional"
            expression evaluateInContext: ctx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initPopEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            expression: korz ast expresssion copyForExpressionParseTree: parseTree expression  EnclosingScopeAST: enclosingScopeAST IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            expressionAST setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalFormalDeclaration = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstractFormalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast positionalFormalDeclaration.

CopyDowns:
globals korz ast abstractFormalDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (0)'
        
         index <- 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'\')'
        
         localName <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast positionalFormalDeclaration parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForArgumentSlotParseTree: pt GuardComponents: comps Index: i IfFail: fb = ( |
            | 
            (copyForParseTree: pt DispatchedOnIfNotNil: nil) initArgumentSlotWithGuardComponents: comps Index: i IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForPositionalFormalSlotParseTree: pt Index: i Named: n = ( |
            | 
            ( (copyForParseTree: pt DispatchedOnIfNotNil: nil) index: i) localName: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingRenameItInIncomingContext: ctx = ( |
            | 
            ctx replaceNameOfPositionalFacetAt: index With: localName.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initArgumentSlotWithGuardComponents: comps Index: i IfFail: fb = ( |
            | 
            index: i.
            comps isEmpty ifFalse: [^ fb value: 'do not yet handle guards on arguments'].
            localName: parseTree selectorString.
            [localName != '34' ] assert.
            [i > 0] assert.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositionalFormal = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | korz context positionalFacetNameAt: index).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'positionalFormalDeclaration' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         sourceString = ( |
            | statePrintString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverContext = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast expression copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast receiverContext.

CopyDowns:
globals korz ast expression. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         components <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast receiverContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy components: components copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForReceiverContextParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | (copyForParseTree: pt) initComponentsEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateDimensionsInContext: ctx IfNLR: nlrBlock = ( |
             r.
            | 

            r: dictionary copyRemoveAll.
            components do: [|:c|
              r at: c name Put: c evaluateInContext: ctx IfNLR: nlrBlock
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            error: 'receiverContexts do not evaluate to anything').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hasModifiers = ( |
            | 
            components anySatisfy: [|:c| c hasModifier]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         initComponentsEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            components: parseTree componentNodes copyMappedBy: [|:c| korz ast receiverContextComponent copyForReceiverContextComponentParseTree: c EnclosingScopeAST: enclosingScopeAST IfFail: [|:e| ^ fb value: e]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isReceiverContext = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'expression' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            components do: [|:c| c setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverContextComponent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast receiverContextComponent.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast expression copy)'
        
         exprAST <- korz ast expression copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         hasModifier <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         isRemove <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'\')'
        
         name <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast receiverContextComponent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForReceiverContextComponentParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initializeEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            isRemove ifTrue: [^ nil].
            exprAST evaluateInContext: ctx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         initializeEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            name: parseTree selectorString.
            hasModifier: parseTree hasModifier.
            hasModifier ifTrue: [isRemove: parseTree isRemove].
            hasModifier  &&  [isRemove not]  ifTrue: [unimp: 'other modifiers'].
            exprAST: parseTree hasValue ifTrue: [ korz ast expression copyForExpressionParseTree:  parseTree value EnclosingScopeAST: enclosingScopeAST IfFail: [|:e| ^ fb value: e]]
                                         False: [ korz ast literal copy value: korz facets getWellKnownFacet: 'nil' ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverContextComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            exprAST setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFormal = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstractFormalDeclaration copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast receiverFormal.

CopyDowns:
globals korz ast abstractFormalDeclaration. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast receiverFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyDispatchedOn: rf = ( |
            | 
            copyForParseTree: korzParser parseNodes node DispatchedOnIfNotNil: rf).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifIRenameSomethingRenameItInIncomingContext: ctx = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isExplicit = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         name = ( |
            | korz context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractFormalDeclaration' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'receiverFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: declarations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         removedGuardComponent = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'contentsFacet' From:
             bootstrap remove: 'parent' From:
             globals korz ast guardComponent copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast removedGuardComponent.

CopyDowns:
globals korz ast guardComponent. copy 
SlotsToOmit: contentsFacet parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         componentToGetContentsFromIfRemoved.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast removedGuardComponent parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         contentsFacet = ( |
            | 
            componentToGetContentsFromIfRemoved ifNil: [^ nil].
            componentToGetContentsFromIfRemoved contentsFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initContentsIfFail: fb = ( |
            | 
            parseTree hasValue ifTrue: [^ fb value: 'Removed dimension should not have contents expression'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isRemove = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'guardComponent' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         receiveContentsFrom: x = ( |
            | 
            componentToGetContentsFromIfRemoved: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         setContentsFacetIn: aContext IfNLR: nlrBlock = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'removedGuardComponent' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            '-', name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: expressions\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         return = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast return.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         expression.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast return parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForReturnParseTree: pt EnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            (copyForParseTree: pt) initReturnEnclosingScopeAST: enclosingScopeAST IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateInContext: ctx IfNLR: nlrBlock = ( |
            | 
            nlrBlock value: expression evaluateInContext: ctx IfNLR: nlrBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initReturnEnclosingScopeAST: enclosingScopeAST IfFail: fb = ( |
            | 
            expression: korz ast expression copyForExpressionParseTree: parseTree expression EnclosingScopeAST: enclosingScopeAST IfFail: [|:e| ^ fb value: e]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            expression setInitializersIn: aContext IfNLR: [|:r| ^ nlrBlock value: r].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> () From: ( | {
         'Category: method parts\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         slotGuard = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz ast abstract copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast slotGuard.

CopyDowns:
globals korz ast abstract. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> () From: ( | {
         'Comment: Holds ASTs from the slot guard.\x7fModuleInfo: Module: korz InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         components <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz ast slotGuard parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asContext = ( |
             r.
            | 
            hasModifiers ifTrue: [error: 'unimp'. david].
            r: korz context copyRemoveAll.
            componentsDo: [|:c|
              r argumentAt: c name Put: c contentsFacet
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         asKorzFormals = ( |
            | 
            componentsForGuardingSlot copyMappedBy: [|:c|
              (( korz formal copy formalName: c name)
                                  isExplicit: false)
                          dispatchOnIfNotNil: c childFacetOrNil
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         componentNamed: n IfAbsent: blk = ( |
            | 
            components findFirst: [|:c| c name = n] IfPresent: [|:c| c] IfAbsent: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         componentsDo: blk = ( |
            | components do: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         componentsForGuardingSlot = ( |
             r.
            | 
            [factor with formalsOfASTForMethodSlotGuard david].
            r: list copyRemoveAll.
            components do: [|:dcl| 
              dcl isRemove ifTrue: [r: r copyFilteredBy: [|:d| d name != dcl name]]
                            False: [r addLast: dcl]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         componentsForMakingSlots = ( |
             r.
            | 
            [factor with formalsOfASTFromGuardForMakingLocakSlots].
            r: list copyRemoveAll.
            components do: [|:dcl| 
              dcl isRemove ifTrue: [r: r copyFilteredBy: [|:d| d name != dcl name]].
              r addLast: dcl
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            resend.copy components: components copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForComponents: comps AndForSlotParseTree: spt IfFail: fb = ( |
            | 
            (copyForParseTree: korzParser parseNodes node copy addAllSubnodes: comps copyMappedBy: [|:c| c parseTree] ) initSlotGuardFromComps: comps IfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         dimensionNames = ( |
            | 
            components copyMappedBy: [|:c| c name]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         doesIncludeRcvr = ( |
            | 
            dimensionNames includes: korz context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facetOrNilForName: n = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday]. "pass in context"
            (componentNamed: n IfAbsent: [^ nil]) contentsFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hasReceiverFacet = ( |
            | 
            (componentNamed: korz context receiverName IfAbsent: [^ false]) hasInitializationExpression).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initSlotGuardFromComps: comps IfFail: fb = ( |
            | 
            comps do: [|:c|
              c isRemove ifTrue: [
                components   findFirst: [|:cc|cc name = c name]
                             IfPresent: [|:cc| c receiveContentsFrom: cc ]
                              IfAbsent: [ c name = korz context receiverName "for -rcvr to ignore enclosing object"
                                            ifFalse: [^ fb value: 'no prior component with name: ', c name]].
              ].
              components addLast: c.
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstract' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         removeComponentNamed: n = ( |
            | 
            components: components copyFilteredBy: [|:cc| cc name != n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setInitializersIn: aContext IfNLR: nlrBlock = ( |
            | 
            components do: [|:c| 
              "let prior components be in scope"
              aContext withScopeFromGuard: self Do: [|:ctx|
                c setInitializersIn: ctx IfNLR: [|:r| ^ nlrBlock value: r]
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         baseContext = ( |
            | 
            primitiveBaseContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         baseContext: aContext = ( |
            | 
            primitiveBaseContext: aContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         context = ( |
            | 
            orthogonalActivationContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formal = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz formal.
\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         childFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'anon\')'
        
         formalName <- 'anon'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         isExplicit <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         mySlot.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz formal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         < x = ( |
            | 
            compare: x IfLess: true Equal: false Greater: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         = x = ( |
            | 
            == x  ifTrue: [^ true].
            slot == x slot  ifFalse: [^ false].
            compare: x IfLess: false Equal: true Greater: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addParentLinksToMyChildFacets = ( |
            | 
            childFacets do: [|:f| f addKorzParentFormal: self].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         category = ( |
            | '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: outliners\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         compare: x IfLess: lt Equal: e Greater: g = ( |
             cmp.
            | 

            slot = x slot  ifFalse: [error: 'incomparable'].

            cmp: [|:a. :b| a compare: b IfLess: [^ lt value] Equal: [] Greater: [^g value]].

            cmp value: isExplicit  asInteger  With: x isExplicit asInteger.
            cmp value: isReceiver  asInteger  With: x isReceiver asInteger.
            cmp value: name                      With: x name.

            e value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy childFacets: childFacets copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAllImplicitFromFacetsByName: aDictionary = ( |
            | 
            aDictionary mapBy: [|:facet. :name|
              ((copy formalName: name) isExplicit: false) dispatchOnIfNotNil: facet
            ] Into: list copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyCounterfactual = ( |
            | korz counterfactualFormal copyFrom: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAST: formalDecl Slot: s = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            (copyForSlot: s) initForAST: formalDecl).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForConstantSlotArgument = ( |
            | 
            ((copy
              formalName: (korz context positionalFacetNameAt: 1))
              isImplicit: false)
              dispatchOnIfNotNil: korz facets constant).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlot: s = ( |
            | copy mySlot: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlot: s DispatchingOn: newFacet InsteadOf: oldFacet = ( |
            | 
            (copyForSlot: s) dispatchOn: newFacet InsteadOf: oldFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         couldBeMatchedBy: aFormal = ( |
            | 
            formalName = aFormal formalName ifFalse: [^ false].
            isDispatched ifFalse: [^ true].
            aFormal isDispatched ifFalse: [^ true].
            aFormal childFacets anySatisfy: [|:cf|
              childFacets anySatisfy: [|:pf|
                cf isSameOrDescendantOf: pf
              ]
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchOn: newFacet InsteadOf: oldFacet = ( |
            | 
            childFacets remove: oldFacet IfAbsent: [ ^ addParentLinksToMyChildFacets].
            dispatchOnIfNotNil: newFacet.
            oldFacet removeParentFormal: self.
            addParentLinksToMyChildFacets.

            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchOnIfNotNil: aFacet = ( |
            | 
            aFacet ifNotNil: [childFacets add: aFacet].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchOnlyOn: aFacet = ( |
            | childFacets removeAll add: aFacet. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         exists = ( |
            | 
            nil == slot ifTrue: [^ false].
            slot formalsInSlot includes: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hash = ( |
            | 
            isExplicit identityHash  ^^  name hash  ^^  slot identityHash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         ifDispatchedIsMyNameIn: dispatchedDictionary IfUndispatched: undispatchedDictionary = ( |
            | 
            ( isDispatched ifTrue: dispatchedDictionary False: undispatchedDictionary ) includesKey: formalName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: intiailzing from AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: formalDecl = ( |
            | 
            formalName: formalDecl name.
            dispatchOnIfNotNil: formalDecl childFacetOrNil.
            isExplicit: formalDecl isExplicit).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isAssignable = ( |
            | 
            false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isAssignment = ( |
            | exists && [slot isAssignment]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isDispatched = ( |
            | 
            childFacets isEmpty not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedByAProxy = ( |
            | childFacets anySatisfy: [|:f| f isProxyFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedByAProxyThatMatches: aProxy = ( |
            | childFacets anySatisfy: [|:aChildFacet|  aProxy doIMatch: aChildFacet ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isDispatchedOn: aFacet = ( |
            | 
            childFacets includes: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fCategory: implicit or explicit\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isExplicit = ( |
            | isImplicit not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fCategory: implicit or explicit\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isExplicit: aBool = ( |
            | isImplicit aBool not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFake = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fCategory: implicit or explicit\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isImplicit = ( |
            | isExplicit not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fCategory: implicit or explicit\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isImplicit: aBool = ( |
            | isExplicit: aBool not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isMethod = ( |
            | 
            exists && [slot isMethod]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isNotPositional = ( |
            | isPositional not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isOptional = ( |
            | slot isFormalOptional: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isParent = ( |
            | isDispatched).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositional = ( |
            | 
            korz context isPositionalName: formalName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isPositionalAt: i = ( |
            | 
            [xxx]. "should not be by name: may break someday"
            formalName = (korz context positionalFacetNameAt: i)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isReceiver = ( |
            | formalName = korz context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         longKey = ( |
            | 
            isImplicit ifTrue: ['(', name, ')'] False: [name]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         method = ( |
            | slot value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         mustBeFormal = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         name = ( |
            | formalName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nameAndSelector = ( |
            | 

            (nil == mySlot ifTrue: '' False: [ mySlot selector, ' as '] ),
            formalName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameSize: n = ( |
             r.
            | 
            r: nameAndSelector.
            r size <= n ifTrue: [^r].
            r: name.
            r size <= n ifTrue: [^n].
            r copyAtMostWithEllipsis: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'orderedClonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         positionalIndex = ( |
            | isPositional ifTrue: [korz context indexOfPositionalName: formalName] False: -1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = ( |
            | mySlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         statePrintString = ( |
            | 
            formalName, ' = {', childFacets statePrintString, '}',
            (nil == mySlot ifTrue: '' False: [ ' in ', mySlot selector] )).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         value = ( |
            | 
            childFacets isEmpty ifTrue: [^ korz facets foyer].
            childFacets first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         vaporize = ( |
            | 
            mySlot vaporize.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         counterfactualFormal = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz formal copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz counterfactualFormal.

CopyDowns:
globals korz formal. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz counterfactualFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addParentLinksToMyChildFacets = ( |
            | 
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAllImplicitFromFacetsByName: aDictionary = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAST: formalDecl Slot: s = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForConstantSlotArgument = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlot: s = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForSlot: s DispatchingOn: newFacet InsteadOf: oldFacet = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFrom: aFormal = ( |
            | 
            copy initFrom: aFormal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchOn: newFacet InsteadOf: oldFacet = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: dispatching\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchOnIfNotNil: aFacet = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: intiailzing from AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: formalDecl = ( |
            | 
            childFacets do: [|:f| f addKorzParentFormal: self]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         initFrom: aFormal = ( |
            | 
            childFacets: aFormal childFacets copy.
             formalName: aFormal formalName.
             isExplicit: aFormal isExplicit.
                 mySlot: aFormal mySlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'counterfactualFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'formal' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         dispatchContextForReceiver: aFacet = ( |
            | 
            baseContext copy receiverFacet: aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         korzCreatorSlotHint.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         korzParentFacets <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         korzParentFormals <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz facet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fCategory: facets\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addKorzParentFacet: aFacet = ( |
            | 
            [aFacet isNotNil] assert.
            korzParentFacets add: aFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addKorzParentFormal: aFormal = ( |
            | 
            [qqq. [aFormal slot  selector != ''] assert.].
            korzParentFormals add: aFormal. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         adoptEitherChildCoordinateOf: slotGuardASTOrNil Or: enclosingObject = ( |
             c.
            | 
            slotGuardASTOrNil ifNotNil: [c: slotGuardASTOrNil facetOrNilForName: 'child'].
            c ifNil: [c: enclosingObject].
            c addKorzParentFacet: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         checkAllFormals = ( |
            | 
            korzParentFormals do: [|:fo| fo slot checkFormals].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            checkAllFormals.
            r: resend.copy.
            r korzParentFacets: korzParentFacets copy.
            r korzParentFormals: korzParentFormals copy.
            checkAllFormals.
            r checkAllFormals.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         copyAndFixupFormalsOriginalWas: oldFacet = ( |
             oldSlots.
            | 
            korzParentFormals removeAll.
            oldSlots: oldFacet korzParentFormals mapBy: [|:f| f slot] Into: identitySet copyRemoveAll.
            oldSlots do: [|:s|  
              s isAnActivationSlot ifFalse: [ "s is a local variable slot; skip -- dmu"
                s copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: self
              ].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyKorzFacet = ( |
             r.
            | 
            checkAllFormals.
            r: copy.
            r copyAndFixupFormalsOriginalWas: self.
            checkAllFormals.
            r checkAllFormals.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyRemoveAll = ( |
            | 
            copy removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyWithSlotsFromDeclarationsInAST: objectAST In: ctx = ( |
             r.
            | 

            r: copy.
            [david dualCounter].
            (objectAST declarations "copyWithDeclarationForEnclosingObject: r") do: [|:d|
              d makeSlotInObject: r In: ctx IfNLR: [^ self].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         getContentsOfWellKnownDataSlotNamed: selector = ( |
            | 
            getContentsOfWellKnownDataSlotNamed: selector IfFail:  korz multidispatchLookup defaultFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         getContentsOfWellKnownDataSlotNamed: selector IfFail: failBlock = ( |
            | 
            (getWellKnownSlotNamed: selector IfFail: [|:e| ^ failBlock value: e]) contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         getSlotsAndDistancesWithSelector: selector ThatDispatchOnMeWhenIAmNamed: argName PositionalArgumentCount: n FollowParents: followParents = ( |
             fos.
             r.
            | 
            r: (                getSlotsWithSelector: selector 
                ThatDispatchOnExactlyMeWhenIAmNamed: argName 
                            PositionalArgumentCount: n ) 
                copyMappedBy: [|:s| s @ 0].

            followParents ifTrue: [
              korzParentFacets do: [|:pf| 
                r addAll: 
                  (pf getSlotsAndDistancesWithSelector: selector 
                          ThatDispatchOnMeWhenIAmNamed: argName 
                               PositionalArgumentCount: n
                                         FollowParents: true)
                    copyMappedBy: [|:pt| pt x @ pt y succ].
              ].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         getSlotsWithSelector: selector ThatDispatchOnExactlyMeWhenIAmNamed: argName PositionalArgumentCount: n = ( |
            | 
            ((parentFormalsNamed: argName) asList
              mapBy: [|:fo| fo slot] Into: set copyRemoveAll )
              filterBy: [|:s| s matchesSelector: selector PositionalArgumentCount: n]  Into: list copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         getWellKnownSlotNamed: selector = ( |
            | 
            getWellKnownSlotNamed: selector IfFail: korz multidispatchLookup defaultFailBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         getWellKnownSlotNamed: selector IfFail: failBlock = ( |
            | 
            korz multidispatchLookup lookup: selector 
                                         In: (korz dispatchContextForReceiver: self)
                                     IfFail: failBlock).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fCategory: facets\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         hasParentFacet: f = ( |
            | korzParentFacets includes: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         hasParentFormal: s = ( |
            | 
            korzParentFormals includes: s).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hasSameParentFacetsAs: aFacet = ( |
            | 
            korzParentFacets asSet = aFacet korzParentFacets asSet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: accessing parent formals various ways\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         implicitParentFormals = ( |
            | 
            korzParentFormals copyFilteredBy: [|:f| f isImplicit]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzFacet = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isProxyFacet = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isSameOrDescendantOf: aFacet = ( |
            | 
            == aFacet ifTrue: [^ true].
            korzParentFacets anySatisfy: [|:pf| pf isSameOrDescendantOf: aFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isWellKnown = ( |
            | 
            korz facets foyer korzParentFormals 
              findFirst: [|:f| f slot isData  && [f slot contents = self]]
              IfPresent: true 
               IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: accessing parent slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         localSlots = ( |
            | 
            korzParentFormals mapBy: [|:f| f mySlot] Into: set copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         longKey = ( |
            | [xxx]. printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         name = ( |
            | 
            korzName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameOf: aFacet IfFound: fb IfAbsent: ab = ( |
            | 
            parentSlots findFirst: [|:s| s isAnActivationSlot not && [s isDataSlotContaining: aFacet ]]
                        IfPresent: [|:s| ^ fb value: 'The ', s selector ]
                         IfAbsent: [ ].
            korzParentFacets do: [|:f|  
              f nameOf: aFacet IfFound: [|:n| ^ fb value: n ] IfAbsent: [] 
            ].
            ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameSize: n = ( |
             r.
            | 
            r: name.
            r size <= n  ifTrue: [^r].
            r copyAtMostWithEllipsis: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         newChild = ( |
            | copyRemoveAll addKorzParentFacet: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: accessing parent formals various ways\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nonPositionalFormals = ( |
            | 
            korzParentFormals copyFilteredBy: [|:f| f isNotPositional]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: accessing parent formals various ways\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFormalCount = ( |
            | korzParentFormals size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: accessing parent formals various ways\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFormalsBySlotFilteredBy: filterBlock = ( |
             d.
            | 
            d: dictionary copyRemoveAll.
            korzParentFormals do: [|:f|
              (filterBlock value: f) ifTrue: [
                d if: f mySlot IsPresentDo: [|:aList| aList add: f]
                               IfAbsentPut: [list copyRemoveAll]
                                     AndDo: [|:aList| aList add: f]
              ]
            ].
            d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: accessing parent formals various ways\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFormalsNamed: n = ( |
            | korzParentFormals copyFilteredBy: [|:f| f formalName = n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parentSlots = ( |
            | 
            korzParentFormals mapBy: [|:f| f slot] Into: set copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: hack primitives\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         primitiveAddContextFacetNamed: n Value: v = ( |
             name.
            | 
            [qqq]. "Not the best way to do this? -- dmu 6/10/13"
            name: n value canonicalize.
            value implicitArgumentAt: name Put: v.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: hack primitives\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         primitiveGetContextFacetNamed: n = ( |
            | 
            value arguments at: (n value)).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         printString = ( |
            | 
            name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            korzParentFormals removeAll.
            korzParentFacets  removeAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: parents\x7fCategory: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         removeParentFormal: aFormal = ( |
            | 
            korzParentFormals remove: aFormal IfAbsent: []. self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         vaporize = ( |
            | 
            korzParentFormals do: [|:f| f forgetChildFacet: self].
            removeAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         wellKnownPrefix = ( |
            | 'The ').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facets = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz facets.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addSelfSlotForFacetNamed: facetName Containing: facet = ( |
            | 
            [facetName = foyerName] assert.
            foyerName, ':' sendTo: self With: facet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addWellKnownFacetNamed: facetName = ( |
            | 
            addWellKnownFacetNamed: facetName Copying: korz facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addWellKnownFacetNamed: facetName Copying: facetProto = ( |
             f.
             s.
            | 
            f: facetProto copyRemoveAll.
            facetName = foyerName  ifTrue: [addSelfSlotForFacetNamed: facetName Containing: f].
            s: korz slots dataSlot copySelector: facetName ConstantContents: f.
            s setKorzCreatorSlotHint.
            facetName = constantName  ifTrue: [ makeConstant: foyerName. makeConstant: constantName ].
            f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fCategory: constant slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         constant = ( |
            | 
            getWellKnownFacet: constantName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         constantName = ( |
            | 'constant').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         foyer = ( |
            | myFoyer).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         foyer: f = ( |
            | 
            korz slotHeap removeAll.
            myFoyer: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         foyerName = ( |
            | 'foyer').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         getWellKnownFacet: name = ( |
            | 
            foyer getContentsOfWellKnownDataSlotNamed: name).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         getWellKnownFacetOrNil: name = ( |
            | 
            foyer getContentsOfWellKnownDataSlotNamed: name IfFail: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         includesWellKnownFacetNamed: n = ( |
            | 
            foyer getContentsOfWellKnownDataSlotNamed: n IfFail: [^ false].
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: well-known facets\x7fCategory: constant slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         makeConstant: name = ( |
             f.
            | 
            name = 'protoString' ifTrue: [halt].
            f: (foyer getWellKnownSlotNamed: name) explicitFormals first.
            f dispatchOn: constant InsteadOf: korz facets foyer.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz facet copy)\x7fVisibility: private'
        
         myFoyer <- korz facet copy.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nilName = 'nil'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'Category: names\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         protoBlockName = 'protoBlock'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         undispatched = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz facets undispatched.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addKorzParentFormal: x = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         categoriesString = ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         categoryList = ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dataSlotAt: sel IfAbsent: ab = ( |
            | 
            korz slotHeap allPossibleUndispatchedDo: [|:s| s isData && [s selector = sel] ifTrue: [^ s]].
            ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         fakeSlots = ( |
            | 
            korz slotHeap undispatched).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         fakeSlotsDo: block = ( |
            | 
            slotsPretendingToBeInMeDo: block.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         getSlotsAndDistancesWithSelector: selector ThatDispatchOnMeWhenIAmNamed: argName PositionalArgumentCount: n FollowParents: followParents = ( |
            | 
            vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         hasParentFormal: x = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isProxyFacet = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         korzName = 'undispatched'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         localSlots = ( |
            | 
            korz slotHeap allPossibleUndispatched).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'Comment: Based on the reference manual\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         lookupKey: sel = ( |
            | 
            (korz selfishSlotFinder copyForFacet: self Selector: sel) findSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameSize: n = ( |
            | 'undispatched').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         oneOfEachFakeSlot = ( |
            | 
            list copy add: korz slots dataSlot copySelector: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         removeParentFormal: f = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         slotsPretendingToBeInMeDo: blk = ( |
            | 
            korz slotHeap undispatchedDo: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'facets' -> 'undispatched' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         xxx = ( |
            | david unify with facet parent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         operations = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz operations.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsEvaluatorContents: aString = ( |
            | 
            evaluateStringAsEvaluatorContents: aString In: korz baseContext).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsEvaluatorContents: aString In: aContext = ( |
             parseTree.
             r.
             rr.
            | 
            rr: ui2ResultReporter copy event: process this birthEvent.
            evaluateStringAsEvaluatorContents: aString In: aContext ReportErrorsTo: rr.
            "aResultReporter result will be nil if error happened"
            rr result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: evaluating\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsEvaluatorContents: aString In: aContext ReportErrorsTo: aResultReporter = ( |
             parseTree.
             r.
            | 

            parseTree: korzParser objectBlockOrMethodBodyParser  
                         copyParseSource:  aString 
                                  IfFail:  [|:x|  ^ aResultReporter syntaxError: x].

            r:  (parseTree hasExpressions  ifTrue: [korz ast methodDeclaration]  False: [korz ast object])
                  copyAndEvaluateParseTreeForEvaluatorContents: parseTree
                                                            In: aContext
                                                ReportErrorsTo: aResultReporter.
            "aResultReporter result will be nil if error happened"
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: declaring slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsNewMethodContents: aString OldSlot: oldSlot ReportErrorsTo: aResultReporter = ( |
             ast.
             astProto.
             errPt.
             parseTree.
             slot.
            | 

            parseTree: korzParser objectBlockOrMethodBodyParser  
                         copyParseSource:  aString 
                                  IfFail:  [|:x|  ^ aResultReporter syntaxError: x].


            errPt: (traits string parseErrorPt copy start: 0@0) 
                                                      end: aString size@0.

            ast: oldSlot ast copyReplacingMethodBodyFromParseTree: parseTree 
                                                           IfFail: [|:x| aResultReporter syntaxError: x. ^ oldSlot].


            oldSlot ast: ast. "or initForAST:??"

            aResultReporter result: oldSlot.

            oldSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: declaring slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsSlotDeclaration: aString OldSlot: oldSlotOrNil = ( |
             rr.
            | 
            rr: ui2ResultReporter copy event: process this birthEvent.
            evaluateStringAsSlotDeclaration: aString  OldSlot: oldSlotOrNil ReportErrorsTo: rr.
            rr result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: declaring slots\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateStringAsSlotDeclaration: aString OldSlot: oldSlot ReportErrorsTo: aResultReporter = ( |
             ast.
             comps.
             errPt.
             parseTree.
             slot.
             slotParseTree.
             slotProto.
             theOneSlotOrGroup.
            | 

            parseTree: korzParser slotSeriesParser copyParseSource: aString
                                                    IfFail: [|:x|  aResultReporter syntaxError: x.  
                                                                   ^ oldSlot].
            errPt: (traits string parseErrorPt copy start: 0@0) 
                                                      end: aString size@0.

            parseTree subnodeCount > 1  ifTrue: [ aResultReporter reportError: (errPt message: x)
                                                                        Title: 'only expected one slot'.
                                                  ^ oldSlot].
            parseTree: parseTree firstSubnode.

            [david prepending].
            theOneSlotOrGroup: parseTree theOneSlotOrGroup.
            theOneSlotOrGroup isKorzSlot ifFalse: [error: fix me. david].
            comps: parseTree guardNode componentNodes copyMappedBy: [|:c| 
                    korz ast guardComponent copyForGuardComponentParseTree: c 
                                            IfFail: [|:e| aResultReporter reportError: (errPt message: e) Title: 'error with components'. ^ oldSlot]
            ].
            ast: korz ast declaration 
                  copyForSlotParseTree: theOneSlotOrGroup
                                 GuardComponents: comps
                                IfFail: [|:x|  aResultReporter reportError: (errPt message: x)
                                                                     Title: 'error converting parseTree to AST'.
                                               ^ oldSlot
                                        ].

            slotProto: ast isMethod ifTrue: [korz slots methodSlot] 
                                     False: [korz slots   dataSlot].

            "slot will be nil if NLR"
            slot: slotProto copyForAST: ast 
                       EnclosingObject: (oldSlot ifNil: nil IfNotNil: [oldSlot receiverFacet ifNil: nil IfNotNil: [oldSlot receiverFacet]])
                                    In: oldSlot ifNil: [korz baseContext]
                                                IfNotNil: [oldSlot contextFromFormals: false "must be false so we don't assign to a data slot here"].
            ast isMethod ifFalse: [ slot setKorzCreatorSlotHint ].
            aResultReporter result: slot.
            oldSlot ifNotNil: [oldSlot vaporize].
            slot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: sending\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         send: selector ToContext: aContext = ( |
            | 
            ('_' isPrefixOf: selector) 
              ifTrue: [   sendPrimitive: selector ToContext: aContext]
               False: [sendNonPrimitive: selector ToContext: aContext]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: sending\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         sendNonPrimitive: selector ToContext: aContext = ( |
             aMultidispatchLookup.
             ctx.
             slot.
            | 
            ctx: aContext copy.
            ctx assertNoNils.
            aMultidispatchLookup: korz multidispatchLookup copySelector: selector Context: aContext.
            slot: aMultidispatchLookup lookup.
            slot evaluateSlotInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'operations' -> () From: ( | {
         'Category: sending\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         sendPrimitive: selector ToContext: ctx = ( |
             args.
             r.
             result.
             s.
             translate <- bootstrap stub -> 'globals' -> 'false' -> ().
            | 
               r: ctx receiverFacet.
            args: ctx positionalFacets.
            s: selector copyWithoutFirst.
            s first = '_'  ifTrue: [s: s copyWithoutFirst. translate: true].
            [qqq].
            s: s uncapitalize.
            translate ifTrue: [
              r: r asSelfObject.
              args: args copyMappedBy: [|:a| a asSelfObject].
            ].
            result: s sendTo: r WithArguments: args.
            translate ifTrue: [ result: result asKorzObject].
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         orthogonalActivationContext = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz abstractContext copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz orthogonalActivationContext.

CopyDowns:
globals korz abstractContext. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz orthogonalActivationContext parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'Category: activating and returning\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         facetForNewMethodActivation: aMethodOrBlockAST = ( |
            | 
            korz facet copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'abstractContext' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz context)\x7fVisibility: private'
        
         primitiveBaseContext <- bootstrap stub -> 'globals' -> 'korz' -> 'orthogonalActivationContext' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         proxyFacet = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz facet copyRemoveAll ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz proxyFacet.

CopyDowns:
globals korz facet. copyRemoveAll 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz proxyFacet parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asSelfObject = ( |
            | 
            value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyMySelfObject = ( |
            | 
            value: value copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         doIMatch: aFacet = ( |
            | 
            aFacet isProxyFacet ifFalse: [ ^ false ].
            korzParentFacets asSet = aFacet korzParentFacets asSet.
            value matchesForKorz: aFacet value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'Category: basic korz\x7fCategory: lookup\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         getSlotsWithSelector: selector ThatDispatchOnExactlyMeWhenIAmNamed: argName PositionalArgumentCount: n = ( |
            | 
            "Since I am a proxy, cannot use korzParentFormals"

            (n = 0)  &&  [argName = (korz context positionalFacetNameAt: 1)]  ifTrue: [^ vector].

            korz slotHeap proxyDispatched 
              filterBy: [|:s| 
                       ( s matchesSelector: selector PositionalArgumentCount: n )
                &&   [ ( s isDispatchedByAProxyThatMatches: self AlongDimension: argName )
                &&   [   (s allFacetsNamed: argName) anySatisfy: [|:childOfS| childOfS hasSameParentFacetsAs: self]]]
              ]
              Into: list copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isProxyFacet = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         name = ( |
            | asSelfObject printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         parentFormalsBySlotFilteredBy: filterBlock = ( |
             d.
            | 
            d: resend.parentFormalsBySlotFilteredBy: filterBlock.

            korz slotHeap proxyDispatched 
              do: [|:s| 
                s formalsInSlot do: [|:f|
                  f childFacets do: [|:cf|
                    cf isProxyFacet  &&  [ cf value matchesForKorz: value ]  ifTrue: [ 
                      (filterBlock value: f) ifTrue: [
                         d if: f mySlot  IsPresentDo: [|:aList| aList add: f]
                                         IfAbsentPut: [list copyRemoveAll]
                                               AndDo: [|:aList| aList add: f]
                      ]
                    ]
                  ].
                ].
              ].

            d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         statePrintString = ( |
            | value printString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'proxyFacet' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         value.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         removeDefaultCoordinateOfDimension: dimName = ( |
            | 
            [david]. "move to somewhere else"
            baseContext arguments removeKey: dimName canonicalize IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setDefaultCoordinateOfDimension: dimName To: defaultFacet = ( |
            | 
            [david]. "move to somewhere else"
            baseContext implicitArgumentAt: dimName canonicalize Put: defaultFacet.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         slotHeap = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slotHeap.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (identitySet copyRemoveAll)'
        
         all <- identitySet copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (identitySet copyRemoveAll)'
        
         onlyAssignmentArgumentDispatched <- identitySet copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slotHeap parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         add: aSlot = ( |
            | 
            all add: aSlot.
            aSlot isCompletelyUndispatched ifTrue: [undispatched add: aSlot].
            aSlot isOnlyAssignmentArgumentDispatched ifTrue: [onlyAssignmentArgumentDispatched add: aSlot].
            aSlot isDispatchedByAProxy ifTrue: [ proxyDispatched add: aSlot ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         allPossibleUndispatched = ( |
             r.
            | 
            r: list copyRemoveAll.
            allPossibleUndispatchedDo: [|:s| r add: s].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         allPossibleUndispatchedDo: blk = ( |
            | 
            undispatchedDo: blk.
            onlyAssignmentArgumentDispatchedDo: blk).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
            | 
            (((resend.copy all: all copy) 
            undispatched: undispatched copy) 
            proxyDispatched: proxyDispatched copy) 
            onlyAssignmentArgumentDispatched: onlyAssignmentArgumentDispatched copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         onlyAssignmentArgumentDispatchedDo: blk = ( |
            | 
            onlyAssignmentArgumentDispatched copy do: [|:s|
              s isOnlyAssignmentArgumentDispatched ifTrue: [blk value: s] False: [onlyAssignmentArgumentDispatched remove: s].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAll = ( |
            | 
            all removeAll.
            proxyDispatched removeAll.
            undispatched removeAll.
            onlyAssignmentArgumentDispatched removeAll.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         undispatchedDo: blk = ( |
            | 
            undispatched copy do: [|:s|
              s isCompletelyUndispatched ifTrue: [blk value: s] False: [undispatched remove: s].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         undispatchedSlotsMatching: sel PositionalArgumentCount: pac Do: blk = ( |
            | 
            undispatchedDo: [|:s| (s matchesSelector: sel PositionalArgumentCount: pac)  ifTrue: [blk value: s]].

            pac = 0 ifTrue: [
              onlyAssignmentArgumentDispatchedDo: [|:s| 
                (s matchesSelector: sel PositionalArgumentCount: pac) ifTrue: [blk value: s].
              ]
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         vaporize: aSlot = ( |
            | 
            all remove: aSlot IfAbsent: [].
            proxyDispatched remove: aSlot IfAbsent: [].
            undispatched remove: aSlot IfAbsent: [].
            onlyAssignmentArgumentDispatched remove: aSlot IfAbsent: [].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (identitySet copyRemoveAll)'
        
         proxyDispatched <- identitySet copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slotHeap' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (identitySet copyRemoveAll)'
        
         undispatched <- identitySet copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         slots = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractSlot = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots abstractSlot.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'Comment: not korzed yet\x7fModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast abstractNonformalDeclaration)'
        
         ast <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'abstractNonformalDeclaration' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (set copyRemoveAll)'
        
         formalsInSlot <- set copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots abstractSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         < aSlot = ( |
            | 
            [david maybeCheckForIncomparable].
            compare: aSlot IfLess: true Equal: false Greater: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         = aSlot = ( |
            | 
            aSlot equalsKorzSlot: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         activationFacet = ( |
            | 
            facetNamed: korz context activationName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addAllSlotFormals: fs = ( |
            | 
            fs do: [|:f| addSlotFormal: f].
            korz slotHeap add: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addSlotFormal: aFormal = ( |
            | 
            [aFormal slot isNil  ||  [aFormal slot = self]] assert.

            aFormal mySlot: self.
            aFormal mustBeFormal.
            formalsInSlot add: aFormal.
            aFormal isDispatched ifTrue: [
              aFormal childFacets do: [|:f| f addKorzParentFormal: aFormal].
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         allFacetsNamed: fn = ( |
            | 
            formalsInSlot findFirst: [|:f| (f formalName = fn) && [f isDispatched]] 
                          IfPresent: [|:f| f childFacets] 
                           IfAbsent: [
                             [ fn canonicalize. true ] assert.
                             vector
                          ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzSlot = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         beSupercededBy: aNewSlot = ( |
             formalInOldSlotToTrim.
             formalsInOldSlot.
            | 
            [
              aNewSlot formalsInSlot do: [|:formalInNewSlot|
                [formalInNewSlot childFacets size <= 1] assert.
              ].
              true
            ] assert.

            formalsInOldSlot: dictionary copyRemoveAll.
            formalsInSlot do: [|:f| formalsInOldSlot at: f name Put: f].

            aNewSlot dispatchedFormals  do: [|:formalInNewSlot. formalInOldSlotToTrim |
              formalInOldSlotToTrim: formalsInOldSlot at: formalInNewSlot name IfAbsent: [^ vaporize].
              formalInOldSlotToTrim isOptional not  &&  [formalInOldSlotToTrim childFacets size > 1]
                ifTrue: [
                  formalInOldSlotToTrim childFacets remove: formalInNewSlot childFacets first.
                  ^ self.
              ]
            ].
            vaporize.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         categoryList = ( |
            | vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         checkFormals = ( |
            | 
            formalsInSlot do: [|:f| [f slot = self] assert].
            formalsInSlot do: [|:f| [f formalName isEmpty not] assert].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         compare: aSlot IfLess: lt Equal: eq Greater: gt = ( |
             cmp.
             d1.
             d2.
             fn1.
             fn2.
             fpv.
            | 
            [david maybeCheckForIncomparable].
            == aSlot ifTrue: [^ eq value].

            cmp: [|:a. :b| a compare: b IfLess: [^ lt value] Equal: [] Greater: [^ gt value]].

            cmp value: selector With: aSlot selector.

            cmp value: formalsInSlot size With: aSlot formalsInSlot size.

            fn1:       formalNames asVector copySort.
            fn2: aSlot formalNames asVector copySort.
            fn1  with: fn2  Do: [|:n1. :n2| cmp value: n1 With: n2].

            d1: dictionary copyRemoveAll. d2: dictionary copyRemoveAll.
                  formalsInSlot do: [|:f| d1 at: f formalName Put: f].
            aSlot formalsInSlot do: [|:f| d2 at: f formalName Put: f].

            fpv: fn1 copyMappedBy: [|:n| (d1 at: n) @ (d2 at: n)].

            fpv do: [|:p| cmp value:  p x childFacets size  With:  p y childFacets size].

            fpv do: [|:p| p x childFacets  with:  p y childFacets  Do: [|:cf1. :cf2| cmp value: cf1 hash With: cf2 hash]].

            cmp value: isMethod With: aSlot isMethod.

            ast !== aSlot ast ifTrue: [cmp value: ast identityHash With: aSlot ast identityHash].

            isMethod ifFalse: [cmp value: contents identityHash With: aSlot contents identityHash].

            cmp value: identityHash With: aSlot identityHash.

            lt value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         competingSlotsDo: blk = ( |
            | 
            korz multidispatchLookup slotsCompetingWith: self Do: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         contextFromFormals: includeOptionals = ( |
             r.
            | 
            r: korz context copyRemoveAll.
            formalsInSlot do: [|:f| 
              [f childFacets size <= 1] assert. 
              f isOptional not || includeOptionals  ifTrue: [ |child|
                child: f childFacets firstIfAbsent: korz facets foyer.
                [child isNotNil] assert.
                r arguments at: f name Put: child
              ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copy = ( |
             r.
            | 
            r: resend.copy.
            r formalsInSlot: copyFormalsFor: r.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAST: ast EnclosingObject: eoOrNil In: aContext = ( |
             r.
            | 
            r: copy initForAST: ast EnclosingObject: eoOrNil In: aContext.
            ast slotHoldingMe: r.
            r supercedeCompetingSlots).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         copyFormalsFor: s = ( |
            | 
            formalsInSlot copyMappedBy: [|:f| f copyForSlot: s]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         couldBeMatchedBy: aFormal = ( |
            | 
            formalsInSlot anySatisfy: [|:fis| fis couldBeMatchedBy: aFormal]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         counterfactualizedFormals = ( |
            | 
            formalsInSlot copyMappedBy: [|:f| f copyCounterfactual]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dimensionNames = ( |
            | formalNames).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchedFormals = ( |
            | 
            formalsInSlot copyFilteredBy: [|:f| f isDispatched]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         dispatchedImplicitFormals = ( |
            | 
            formalsInSlot copyFilteredBy: [|:f| f isImplicit && [f isDispatched]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         dispatchedNames = ( |
            | 
            dispatchedFormals copyMappedBy: [|:f| f formalName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         equalsKorzSlot: s = ( |
            | 
            compare: s IfLess: false Equal: true Greater: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         explicitFormals = ( |
            | 
            formalsInSlot copyFilteredBy: [|:f| f isExplicit]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         facetNamed: fn = ( |
            | 
            formalsInSlot findFirst: [|:f| (f formalName = fn) && [f isDispatched]] 
                          IfPresent: [|:f| f childFacets first] 
                           IfAbsent: [
                             [ fn canonicalize. true ] assert.
                             nil
                          ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         formalNames = ( |
            | 
            formalsInSlot copyMappedBy: [|:f| f formalName]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         formalsDispatchedOn: aFacet = ( |
            | 
            formalsInSlot copyFilteredBy: [|:f| f isDispatchedOn: aFacet]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: ordering\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         hash = ( |
            | 
            selector hash  ^^  formalNames hash).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         ifNeededSetReceiverFacetToEnclosingObject: eoOrNil = ( |
            | 
            [david dualCounter].
            ast doesGuardIncludeRcvr not && [eoOrNil isNotNil] ifTrue: [receiverFacet: eoOrNil].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         implicitFormals = ( |
            | 
            formalsInSlot copyFilteredBy: [|:f| f isImplicit]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: ast EnclosingObject: eoOrNil In: aContext = ( |
            | 
            ast setInitializersIn: aContext
                            IfNLR: [|:r| error: 'NLR in initializer'. vaporize. ^ nil].

            ast: ast. 
            initFormalsFromASTEnclosingObject: eoOrNil In: aContext.
            checkFormals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initFormalsFromASTEnclosingObject: eoOrNil In: aContext = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isAnActivationSlot = ( |
            | 
            formalsInSlot findFirst: [|:f| f isImplicit && [f name = korz context activationName]] IfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isAssignable = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isAssignment = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isCompletelyUndispatched = ( |
            | 
            formalsInSlot allSatisfy: [|:f| f isDispatched not]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isConstant = ( |
            | isAssignable not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isData = ( |
            | isMethod not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isDataSlotContaining: aFacet = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedByAProxy = ( |
            | formalsInSlot anySatisfy: [|:f| f isDispatchedByAProxy]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedByAProxyThatMatches: aProxyFacet AlongDimension: dimName = ( |
            | 
            formalsInSlot anySatisfy: [|:aFormal| 
                ( aFormal formalName = dimName )
            &&  [ aFormal isDispatchedByAProxyThatMatches: aProxyFacet ]
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isDispatchedOn: aFacet = ( |
            | 
            formalsInSlot findFirst: [|:f| f isDispatchedOn: aFacet] IfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isEveryDimensionForMatching: selector PresentIn: dispatchedDictionary OrIn: undispatchedDictionary = ( |
            | 
            (requiredFormalsWhenMatching: selector)
            allSatisfy: [|:f|   f ifDispatchedIsMyNameIn: dispatchedDictionary 
                                          IfUndispatched: undispatchedDictionary]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFacetParent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isFake = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFormalOptional: f = ( |
            | false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: equality\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzFacet = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: equality\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlot = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isMethod = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isOnlyAssignmentArgumentDispatched = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isParent = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         key = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         matchesSelector: s PositionalArgumentCount: n = ( |
            | 
            (selector = s) && [positionalFormalCount = n]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameAndReceiverString = ( |
            | 
            receiverFacet name, ' >> ', selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         nameSize: n = ( |
             r.
            | 
            r: nameAndReceiverString.
            r size <= n ifTrue: [^r].
            r: selector.
            r size <= n ifTrue: [^n].
            r copyAtMostWithEllipsis: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         positionalFormalCount = ( |
            | 
            (formalsInSlot asList copyFilteredBy: [|:f| f isPositional]) size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet = ( |
            | 
            facetNamed: korz context receiverName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: x = ( |
            | 
            [david asymmetric].
            [unifyDataAndMethodSlotsFormalsSomeday].
            addSlotFormal: (((korz formal copyForSlot: self) 
                              formalName: korz context receiverName) 
                              isImplicit: true) 
                              dispatchOnIfNotNil: x.
            korz slotHeap add: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         requiredFormalsWhenMatching: sel = ( |
            | 
            formalsInSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: printing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         statePrintString = ( |
            | selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         supercedeCompetingSlots = ( |
            | 
            competingSlotsDo: [|:s| s isAnActivationSlot ifFalse: [s beSupercededBy: self]].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         vaporize = ( |
            | 
            formalsInSlot do: [|:f| f childFacets do: [|:cf| cf removeParentFormal: f]]. 
            korz slotHeap vaporize: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'\')'
        
         selector <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         counterfactualSlot = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz slots abstractSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots counterfactualSlot.

CopyDowns:
globals korz slots abstractSlot. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (nil)'
        
         contentsOrNil.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots counterfactualSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addAllSlotFormals: fs = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         addSlotFormal: aFormal = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: morphs\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asMorph = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         beSupercededBy: aSlot = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         checkFormals = ( |
            | 
            formalsInSlot do: [|:f| [f isCounterfactual] assert].
            resend.checkFormals.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         competingSlotsDo: blk = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         contentsIsIndistinguishableFromSlot = ( |
            | 
            slot isMethod ifTrue: [ast = slot ast] False: [contentsOrNil == slot contents]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         contextFromFormals: includeOptionals = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyForAST: ast EnclosingObject: eoOrNil In: aContext = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         copyFormalsFor: s = ( |
            | 
            formalsInSlot copyMappedBy: [|:f| f copyCounterfactual]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyFromSlot: aKorzSlot = ( |
            | 
            copy initializeFromSlot: aKorzSlot).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            slot evalStringAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         initializeFromSlot: aSlot = ( |
            | 
                     slot:  aSlot.

                 selector:  slot selector.
            formalsInSlot:  slot counterfactualizedFormals.
            contentsOrNil:  slot isMethod ifFalse: [slot contents] True: nil.
                      ast:  slot ast.
                wasMethod:  slot isMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isIndistinguishableFromSlot = ( |
            | 
             ( selector = slot selector)  &&
            [( formalsInSlot  =  slot formalsInSlot )  &&
            [ contentsIsIndistinguishableFromSlot &&
            [ slot isMethod = wasMethod ]]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isMethod = ( |
            | wasMethod).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isUpdateNeededForSelectorAndFormals = ( |
            | 
            isIndistinguishableFromSlot not).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: messages for slot\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: index = ( |
            | 
            isIndistinguishableFromSlot ifTrue: [slot nameForPositionalFormalAt: index] False: 'unknown').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: formals\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         receiverFacet: x = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> 'parent' -> () From: ( | {
         'Category: superceding & vaporizing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         vaporize = ( |
            | 
            inappropriate).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz slots abstractSlot)'
        
         slot <- bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'counterfactualSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         wasMethod <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         dataSlot = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals korz slots abstractSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots dataSlot.

CopyDowns:
globals korz slots abstractSlot. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz facet)'
        
         contents <- bootstrap stub -> 'globals' -> 'korz' -> 'facet' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots dataSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addAllSlotFormals: formals = ( |
            | 
            [formals noneSatisfy: [|:f| f isPositionalAt: 2]] assert.
            resend.addAllSlotFormals: formals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         addDefaultArgumentFormalIfAbsentIsAssignable: isa = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            [david asymmetric].
            isa ifFalse: [
              (formalsInSlot noneSatisfy: [|:f| f isPositionalAt: 1] ) ifTrue: [
                addSlotFormal: korz formal copyForConstantSlotArgument.
              ].
            ].
            korz slotHeap add: self.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         addFormalForConstantArgumentTo: formals = ( |
             cf.
            | 
            cf: korz formal copyForConstantSlotArgument.
            [formals noneSatisfy: [|:f| f formalName = cf formalName]] assert.
            formals add: cf.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         argumentFormal = ( |
            | 
            formalsInSlot findFirst: [|:f| f isPositionalAt: 1] IfPresent: [|:f| f] IfAbsent: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         copy = ( |
            | 
            resend.copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
             r.
            | 
            r: clone.
            r formalsInSlot: formalsInSlot copyMappedBy: [|:f|
              f copyForSlot: r DispatchingOn: newFacet InsteadOf: oldFacet
            ].
            r checkFormals.
            korz slotHeap add: r.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: s = ( |
            | 
            copy selector: s canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel ArgumentFacetOrNil: af InitialContents: ic = ( |
             formals.
            | 

            [unifyDataAndMethodSlotsFormalsSomeday].
            formals: set copyRemoveAll.

            "OK if af is nil, means undispatched, since must be able to access arg, must always add in formal"
            formals add:  ((korz formal copy formalName: korz context positionalFacetNameAt: 1)
                                             isExplicit: true)
                                     dispatchOnIfNotNil: af.

            copySelector: sel Formals: formals  InitialContents: ic).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel ConstantContents: ic = ( |
             constantIfNotBootstrapping.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            constantIfNotBootstrapping: (sel = korz facets foyerName) || [sel = korz facets constantName]
             ifTrue: [nil] False: [korz facets constant].
            copySelector: sel 
            ArgumentFacetOrNil: constantIfNotBootstrapping
            InitialContents: ic).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: sel Formals: formals InitialContents: ic = ( |
             r.
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].

            r: copySelector: sel.
            r addAllSlotFormals: formals.
            r initialContents: ic.
            r checkFormals.
            r isAnActivationSlot ifFalse: [r supercedeCompetingSlots].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copySelector: name Formals: formals InitialContents: facet IsAssignable: isA Guard: slotGuardASTOrNil = ( |
            | 
            isA               ifFalse:  [ addFormalForConstantArgumentTo: formals ].
            slotGuardASTOrNil ifNotNil: [ formals addAll: slotGuardASTOrNil asKorzFormals].

            copySelector: name Formals: formals InitialContents: facet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            exists ifFalse: [ ^ '"non-existent slot"' ].
            ast parseTree source).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateSlotInContext: ctx = ( |
             pf.
            | 
            pf: ctx positionalFacets.
            pf isEmpty ifTrue: [^ contents].
            contents: pf first.
            contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initForAST: ast EnclosingObject: eoOrNil In: aContext = ( |
            | 
            resend.initForAST: ast EnclosingObject: eoOrNil In: aContext.

            "set the initial contents before the selector in case the contents expression uses the same selector"
            ast isKorzParent ifTrue: [halt. unimp. david.].
            initialContents: ast evaluateContentsDclInContext: aContext
                                                        IfNLR: [vaporize. ^ nil].
            [contents isNotNil] assert.
            ast isObjectLiteralDeclaration ifTrue:  [ setKorzCreatorSlotHint ].
            selector: ast name. [unifyDataAndMethodSlotsFormalsSomeday].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initFormalsFromASTEnclosingObject: eoOrNil In: aContext = ( |
            | 
            ast addImplicitFormalsFromGuardToDataSlot: self.
            ifNeededSetReceiverFacetToEnclosingObject: eoOrNil. [dualCounter].
            addDefaultArgumentFormalIfAbsentIsAssignable: ast isAssignable).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         initialContents: x = ( |
            | contents: x).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isAssignable = ( |
             af.
            | 
            af: argumentFormal.
            af ifNil: [^ true].
            af isDispatched ifFalse: [^ true].
            af childFacets size > 1  ifTrue: [^ true].
            af childFacets first != (korz facets foyer getContentsOfWellKnownDataSlotNamed: korz facets constantName IfFail: [^ true])).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isCreator = ( |
            | 
            contents isNil ifTrue: [^ false].
             = contents korzCreatorSlotHint).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isDataSlotContaining: aFacet = ( |
            | 
            contents = aFacet).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isFormalOptional: aFormal = ( |
            | 

            aFormal isPositionalAt: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isOnlyAssignmentArgumentDispatched = ( |
            | 
            (implicitFormals allSatisfy: [|:f| f isDispatched not]) && [|af| af: argumentFormal. af isNotNil && [af isDispatched]]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         matchesSelector: s PositionalArgumentCount: n = ( |
            | 
            resend.matchesSelector: ((n = 1) && [s last = ':'] ifFalse: [s] True: [s copyWithoutLast]) PositionalArgumentCount: n = 0 ifTrue: 1 False: n).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         positionalFormalCount = ( |
            | 
            1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         requiredFormalsWhenMatching: sel = ( |
            | 
            formalsInSlot copyFilteredBy: [|:f|
              (f isPositionalAt: 1) not  ||  [sel last = ':']
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         resetKorzCreatorSlotHint = ( |
            | 
            contents korzCreatorSlotHint: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         setKorzCreatorSlotHint = ( |
            | 
            contents korzCreatorSlotHint: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'dataSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         value = ( |
            | contents).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         methodSlot = bootstrap define: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'ast' From:
             bootstrap remove: 'parent' From:
             bootstrap remove: 'selector' From:
             globals korz slots abstractSlot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots methodSlot.

CopyDowns:
globals korz slots abstractSlot. copy 
SlotsToOmit: ast parent selector.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (korz ast methodDeclaration)'
        
         ast <- bootstrap stub -> 'globals' -> 'korz' -> 'ast' -> 'methodDeclaration' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals korz slots methodSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyEvaluateAndVaporizeForAST: ast In: ctx = ( |
             r.
             slot.
            | 
            slot: copyForAST: ast EnclosingObject: ctx receiverFacet In: ctx.
            r: slot evaluateSlotInContext: ctx.
            slot vaporize.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: copying facets\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         copyIfDataSlotAndCreateOrAdjustFormalsPertainingToCopyOf: oldFacet To: newFacet = ( |
             formalsToAdjust.
            | 
            formalsToAdjust: formalsDispatchedOn: oldFacet.
            formalsToAdjust do: [|:f| f dispatchOnIfNotNil: newFacet.  newFacet addKorzParentFormal: f].
            checkFormals.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         declarationsAndExpressionsExtent = ( |
            | 
            ast declarationsAndExpressionsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         declarationsExtent = ( |
            | 
            ast declarationsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringAssignable = ( |
            | 
            exists ifFalse: [ ^ '"non-existent slot"' ].
            ast sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evalStringsForLocalSlots = ( |
            | 
            localSlotASTs copyMappedBy: [|:s| s evalStringAssignable leftShrinkwrapped]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         evaluateSlotInContext: ctx = ( |
            | 
            ast evaluateASTInContext: ctx).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         expressionsExtent = ( |
            | ast expressionsExtent).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: creating from an AST\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         initFormalsFromASTEnclosingObject: eoOrNil In: aContext = ( |
            | 
            [unifyDataAndMethodSlotsFormalsSomeday].
            [dualCounter].
            addAllSlotFormals:
              ast formalsOfASTForMethodSlotCreation
               copyMappedBy: [|:formalDecl| korz formal copyForAST: formalDecl Slot: self
              ].
            ifNeededSetReceiverFacetToEnclosingObject: eoOrNil.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         isMethod = ( |
            | 
            true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         korzOrSelfSource = ( |
            | 
            [xxx].
            method sourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         localSlotASTs = ( |
            | 
            ast localDeclarations).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         method = ( |
            | 
            ast).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         mustBeDisassembled = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         nameForPositionalFormalAt: i = ( |
            | 
            ast nameForPositionalFormalAt: i).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'abstractSlot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         selector = ( |
            | ast selector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         source = ( |
            | 
            sourceIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceIfFail: fb = ( |
            | 
            sourceStringIfFail: fb).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceString = ( |
            | 
            sourceStringIfFail: raiseError).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> 'methodSlot' -> 'parent' -> () From: ( | {
         'Category: mirroroidal\x7fCategory: getting source\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         sourceStringIfFail: fb = ( |
            | 
            ast expressionsSourceString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'traits' -> 'oddball' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'korz' -> 'slots' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsFromFormals: formals = ( |
            | 
            formals mapBy: [|:f| f mySlot] Into: identitySet copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         korz = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'copyright' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules korz.

CopyDowns:
globals modules init. copy 
SlotsToOmit: copyright directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'Category: state\x7fModuleInfo: Module: korz InitialContents: InitializeToExpression: (\'
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
\')\x7fVisibility: public'
        
         copyright <- '
Copyright 2007-2013 IBM.
See the LICENSE file for license information.
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allKorz'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         postFileIn = ( |
            | 
            korz worldMaker makeVM.
            modules selfObjectModel beClean.
            resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'korz' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'korzSelfDebugger
korzMorphs
korzTests
korzWorldMaker
korzPath
korzNames
korzMDLookup
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfObjectModel' -> 'parent' -> 'buttonDescriptions' -> () From: ( | {
         'Category: browsing\x7fCategory: Get source\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         getSource = ( |
            | 
            event sourceHand attach: 
              (event sourceHand world outlinerForMirror: target model mirror reflectee source asMirror).
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfObjectModel' -> 'parent' -> () From: ( | {
         'Category: menu operations\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: private'
        
         buttonsToPutInMenu = ( |
             hasS.
             r.
            | 
            hasS: slotsInMeAndSubcategories isEmpty not.
            r: 'addSlot' & 'addCategory' & 'createSubclass' & nil.
            hasS ifTrue: [
              r: r & 'tearOffCopy' & 'tearOff' & nil
                   & 'userDefined' & nil.
            ].

            r: r & myOutliner showOrHideComment 
                 & myOutliner showOrHideAnnotation & 'setModule' & nil.

            mirror copyDowns isEmpty ifFalse: [r: r & 'copyDownParents'].
            r: r & 'copiedDownChildren'.
            mirror isComplete ifFalse: [ r: r & 'showTraitsFamily' ].
            r: r & 'children' & 'references' & 'findSlot'.
            mirror hasAnyMissingSlots ifTrue: [r: r & 'missingSlots'].
            (mirror doesCompletelyUnderstand: 'keys'    ) ifTrue: [r: r & 'asVectorOfKeys'].
            (mirror doesCompletelyUnderstand: 'asVector') ifTrue: [r: r & 'asVector'].
            (mirror doesCompletelyUnderstand: 'source') ifTrue: [r: r & 'getSource'].
            r: r & nil.

            r: r & expandOrCollapseAll.

                (mirror isOKToSend: 'isShowableAsMorph')
            && [ mirror reflectee isShowableAsMorph]
              ifTrue: [ r: r & 'showMorph' ].
            (mirror doesCompletelyUnderstand: 'model' ) ifTrue: [r: r & 'showModel'].

            r asVector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'true' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         asKorzObject = ( |
            | 
            korz facets getWellKnownFacet: 'true').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: FollowSlot'
        
         todo = '
new syntax for sends
implicit dim coords eval in proper scope
redo core, parents of foyers
parent slot syntax
bottom context coord syntax?'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: korz InitialContents: InitializeToExpression: (false)'
        
         xxx <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'mirrors' -> 'abstractMirror' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         isKorzSlot = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'number' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzNumber = ( |
            | (korz facets getWellKnownFacet: 'protoNumber') copy value: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'number' -> () From: ( | {
         'Category: Korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzObject = ( |
            | 
            asKorzNumber).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sequence' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzObject = ( |
            | asKorzOrderedCollection).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'sequence' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot'
        
         asKorzOrderedCollection = ( |
            | 
            (korz facets getWellKnownFacet: 'protoOrderedCollection') copy value: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'string' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzObject = ( |
            | asKorzString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'string' -> () From: ( | {
         'Category: korz\x7fModuleInfo: Module: korz InitialContents: FollowSlot\x7fVisibility: public'
        
         asKorzString = ( |
            | 
            (korz facets getWellKnownFacet: 'protoString') copy value: canonicalize).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'korzSelfDebugger' From: 'applications/allKorz'
 bootstrap read: 'korzMorphs' From: 'applications/allKorz'
 bootstrap read: 'korzTests' From: 'applications/allKorz'
 bootstrap read: 'korzWorldMaker' From: 'applications/allKorz'
 bootstrap read: 'korzPath' From: 'applications/allKorz'
 bootstrap read: 'korzNames' From: 'applications/allKorz'
 bootstrap read: 'korzMDLookup' From: 'applications/allKorz'



 '-- Side effects'

 globals modules korz postFileIn
