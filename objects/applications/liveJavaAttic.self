 '$Revision:$'
 '
Copyright 1992-2004 Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpreter = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals parseKit interpreter.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals parseKit interpreter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: InitializeToExpression: (list copyRemoveAll)'
        
         resultStack <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpreter = bootstrap define: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit interpreter copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals javaParser interpreter.

CopyDowns:
globals parseKit interpreter. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals javaParser interpreter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         expression: node = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         invocation: kw Arguments: argList = ( |
            | childMustIMplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         new: kw Type: t = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'interpreter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'abstractExpression' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | 
            i expression: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'abstractInvocation' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | 
            i invocation: keyword Arguments: argumentList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'abstractNew' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | 
            new: newKeyword Type: type).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'abstractSelector' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'abstractStatement' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'abstractType' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'argument' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'argumentList' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'arrayAccess' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'arrayClass' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'attributeName' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'catchClause' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'coersion' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'compilationUnit' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'dimensionExpression' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'extendsClass' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'extendsInterfaces' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'forCond' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'forInit' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'forParenList' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'forUpdate' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'formalParameter' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'formalParameterList' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'implementsInterfaces' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'importOrPackageDcl' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'label' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'modifiers' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'nameNode' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'newInnerCreator' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'specialIDPrimary' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'startsWithModifiers' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'statementExpressionList' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'staticInitializer' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'superFieldAccess' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'switchLabel' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'throws' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'unorderedStatementBody' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'variableDeclarator' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'javaParser' -> 'parseNodes' -> 'variableInitializer' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> () From: ( | {
         'Category: attic\x7fModuleInfo: Module: liveJavaAttic InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         isJava <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         selfToJava = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals liveJava miniparsers selfToJava.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         blockParser = bootstrap define: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals javaParser blockParser copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals liveJava miniparsers selfToJava blockParser.

CopyDowns:
globals javaParser blockParser. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals liveJava miniparsers selfToJava blockParser parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'javaParser' -> 'blockParser' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         parseSelfSlot: sl Annotation: a = ( |
            | 
            [xxxlj if a not empty must output comment with anno].
            halt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> 'blockParser' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: private'
        
         parseTopStatements = ( |
            | 
            nodesToParse first isSelfSlotList ifTrue: [
              nodesToParse removeFirst slotsWithAnnotationsDo: [|:sl. :anno|
                parseSelfSlot: sl Annotation: anno
              ]
            ].
            resend.parseTopStatements.
            result).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'miniparsers' -> 'selfToJava' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'javaParser' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'liveJava' -> 'selfToJavaConverter' -> 'parent' -> () From: ( | {
         'Category: attic\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         treeToTree = ( |
            | 
            halt: outputTree: liveJava javaTreeBuilder copy walk: inputTree.
            xxxxlj.
            outputTree: inputTree interpretWith: liveJava javaTreeBuilder copy.
            insertParensWhereNeeded.
            indentNicely).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         liveJavaAttic = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules liveJavaAttic.

CopyDowns:
globals modules init. copy 
SlotsToOmit: directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision:$'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'liveJavaAttic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: private'
        
         subpartNames <- 'javaTreeBuilder
'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'childless' -> 'parent' -> () From: ( | {
         'Category: trasforming\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllParens = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: anInterpreter = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: trasforming\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllParens = ( |
            | 
            [xxxlj].
            mapSubnodesBy: [|:n|
                n isParenList && [n subnodeCount = 3]
                  ifTrue: [(n subnodeAt: 1) removeAllParens]
                   False: [n removeAllParens]
            ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpreter = bootstrap define: bootstrap stub -> 'globals' -> 'selfParser' -> 'interpreter' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit interpreter copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'selfParser' -> 'interpreter' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals selfParser interpreter.

CopyDowns:
globals parseKit interpreter. copy 
SlotsToOmit: parent.

'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'interpreter' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'selfParser' -> 'interpreter' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals selfParser interpreter parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'interpreter' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'interpreter' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpretStartWith: i = ( |
            | 
            i startBlock: self xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'blockOrObjectOrMethod' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpretWith: i = ( |
            | 
            interpretStartWith: i.
            slotListIfPresent: [|:sl|  sl interpretWith: i] IfAbsent: []).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'expressionSeries' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | 
            subnodes do: [|:expr| expr interpretWith: i].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpretStartWith: i = ( |
            | 
            [xxxlj].
            i startMethod: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpretStartWith: i = ( |
            | 
            i startObject: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | 
            assignmentAndValueIfPresent: [|:a. :v|
              i name: nameNode Assignment: a Value: v
            ] IfAbsent: [
              i name: nameNode IsArgument: isArgument
            ].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         interpretWith: i = ( |
            | 
            slotsWithAnnotationsDo: [|:slotNode. :annoString| i slot: slotNode WithAnnotation: annoString]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'selfParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: interpreting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot\x7fVisibility: public'
        
         interpretWith: i = ( |
            | xxxlj).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         attic = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'attic' -> () From: ( |
             {} = 'ModuleInfo: Creator: shell attic.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         absNonReflectiveVisitor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( |
             {} = 'ModuleInfo: Creator: shell attic absNonReflectiveVisitor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         nonreflectiveVisitor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( |
             {} = 'ModuleInfo: Creator: shell attic nonreflectiveVisitor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         attic = bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         name: n Assignment: asg Value: val = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         name: n IsArgument: isA = ( |
            | 
            childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         slot: slotNode WithAnnotation: aString = ( |
            | 
            currentAnnotation: aString.
            slotNode interpretWith: self.
            currentAnnotation: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'Category: starting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         startBlock: node = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'Category: starting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         startMethod: node = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'Category: starting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         startObject: node = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absNonReflectiveVisitor' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         unimplemented = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         absReflVis = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'attic' -> 'absReflVis' -> () From: ( |
             {} = 'ModuleInfo: Creator: shell attic absReflVis.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absReflVis' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         copy = ( |
            | resend.copy resultStack: resultStack copy).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absReflVis' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         ignoring: sel = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absReflVis' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         undefinedSelector: sel Type: t Delegatee: d MethodHolder: mh Arguments: args = ( |
            | 
               (('After:' isSuffixOf: sel) || ['Before:' isSuffixOf: sel])
            && [args size = 1]
              ifTrue: [ignoring: sel]
               False: [error: sel, ' not found']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absReflVis' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         visit: aNode Suffix: suff = ( |
            | 
            aNode asMirror creatorSlotHint name, suff, ':' sendTo: self With: aNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'absReflVis' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         walk: aTree = ( |
            | 
            aTree isToken ifTrue: [^ self].
            visit: aTree Suffix: 'Before'.
            aTree doSubnodesAndComments: [|:subTree|
              walk: subTree
            ].
            visit: aTree Suffix: 'After').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         annotatedSlotGroupAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         annotatedSlotGroupBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         binarySendAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         binarySendBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         binarySlotNameWithFormalAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         binarySlotNameWithFormalBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         blockAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         blockBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         expressionSeriesAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         expressionSeriesBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         keywordSendAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         keywordSendBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         keywordSlotNameWithFormalsAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         keywordSlotNameWithFormalsBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         keywordSlotNameWithoutFormalsAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         keywordSlotNameWithoutFormalsBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         methodAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         methodBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         objectAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         objectAnnotationSlotAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         objectAnnotationSlotBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         objectBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         popAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         popBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         returnAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         returnBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         slotAfter: n = ( |
            | 
            unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         slotBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         slotListAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         slotListBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         unarySendAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         unarySendBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         unarySlotNameAfter: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'nonreflectiveVisitor' -> () From: ( | {
         'Category: visiting\x7fModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         unarySlotNameBefore: n = ( |
            | unimplemented).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         reflectiveVisitor = bootstrap setObjectAnnotationOf: bootstrap stub -> 'shell' -> 'attic' -> 'reflectiveVisitor' -> () From: ( |
             {} = 'ModuleInfo: Creator: shell attic reflectiveVisitor.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'reflectiveVisitor' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         childMustImplement = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'reflectiveVisitor' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         slotBefore: n = ( |
            | 
            n isArgument ifTrue: [^ self].
            resultStack add:
              n assignmentAndValueIfPresent: [|:asg. :val|
                 [xxxlj asg is wrong].
                javaParser parseNodes variableDeclarator copyName: n nameNode source Squares: vector Equals: asg Initialzer: val
              ] IfAbsent: [
                javaParser parseNodes variableDeclarator copyName: n nameNode source Squares: vector
              ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'shell' -> 'attic' -> 'reflectiveVisitor' -> () From: ( | {
         'ModuleInfo: Module: liveJavaAttic InitialContents: FollowSlot'
        
         unimplemented = ( |
            | halt).
        } | ) 



 '-- Sub parts'

 bootstrap read: 'javaTreeBuilder' From: 'applications/liveJava'



 '-- Side effects'

 globals modules liveJavaAttic postFileIn
