 '$Revision: 30.8 $'
 '
Copyright 1992-2009 AUTHORS, Sun Microsystems, Inc. and Stanford University.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         usParseNodes = bootstrap define: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'comment' From:
             bootstrap remove: 'directory' From:
             bootstrap remove: 'fileInTimeString' From:
             bootstrap remove: 'myComment' From:
             bootstrap remove: 'postFileIn' From:
             bootstrap remove: 'revision' From:
             bootstrap remove: 'subpartNames' From:
             globals modules init copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals modules usParseNodes.

CopyDowns:
globals modules init. copy 
SlotsToOmit: comment directory fileInTimeString myComment postFileIn revision subpartNames.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         directory <- 'applications/allUs/usParser'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (_CurrentTimeString)\x7fVisibility: public'
        
         fileInTimeString <- _CurrentTimeString.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         myComment <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         postFileIn = ( |
            | resend.postFileIn).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         revision <- '$Revision: 30.8 $'.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'modules' -> 'usParseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         subpartNames <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: manipulating subnodes\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         at: i PutSubnode: n = ( |
            | 
            mySubnodes: (mySubnodes asVector at: i Put: n) asList).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsBlock = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsImplicitSelf = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsMessageSend = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsMethod = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsObject = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsPop = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsReturn = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlotGroup = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlotGuard = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlotList = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSubexpression = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> () From: ( | {
         'Category: testing for Us\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsUnarySlotName = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> () From: ( | {
         'Category: parsing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         parseNodes = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractMessageSend = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes abstractMessageSend.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes abstractMessageSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotContents = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         delegateeIfPresent: pb IfAbsent: ab = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formals = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isPrimitive = ( |
            | 
            firstSelectorNode source first = '_').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isResend = ( |
            | delegateeIfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUndirectedResend = ( |
            | 
            delegateeIfPresent: [|:d| d isUsResendToken ]
                      IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsMessageSend = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         receiver = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorNodes = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'Category: abstract send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | childShouldImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         testResultString: depth = ( |
             padding.
             r <- ''.
             ra.
            | 
            padding: '' copySize: depth FillingWith: ' '.
            r: '\n', padding.
            padding: padding, ' '.
            preComments do: [|:pc| r: r, (pc testResultString: depth + 2)].
            r: r, basicTestResultString, ': ', (delegateeIfPresent: [|:d| d source] IfAbsent: ''), selectorString.
            postComments do: [|:pc| r: r, (pc testResultString: depth + 2)].
            ra: arguments asVector copyAddFirst: receiver.
            ra do: [|:x|
              x hasSubnodes ifFalse: [r: r, '\n', padding, (x testResultString: depth + 2)]
                              True:  [r: r, (x testResultString: depth + 2)].
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         abstractSlotName = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes abstractSlotName.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes abstractSlotName parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isArgumentSlotName = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | childMustImplement).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slot lists\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotSeries = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes slotSeries.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes slotSeries parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentSlotCount = ( |
             r <- 0.
            | 
            slotsWithAnnotationsDo: [|:s| s isUsArgumentSlot ifTrue: [r: r succ]].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         closeBracket = ( |
            | 
            dotIfPresent: [subnodes at: subnodeCount - 2]
               IfAbsent:  [ lastSubnode ]).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         openBracket = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsAndGroups = ( |
             r.
            | 
            r: subnodes copy.
            r removeFirst.
            removeAnnotationAndDotIfPresent: r.
            r removeLast.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotsWithAnnotationsDo: blk Prepending: a = ( |
             r.
            | 
            slotsAndGroups do: [|:sg|
              sg isUsSlotGroup ifTrue: [ sg slotsWithAnnotationsDo: blk Prepending: a ]
                                False: [ r: blk value: sg With: a ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slot lists\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         annotatedSlotGroup = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes slotSeries copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes annotatedSlotGroup.

CopyDowns:
globals usParser parseNodes slotSeries. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes annotatedSlotGroup parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         addDot: d = ( |
            | addSubnode: d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         annotation = ( |
            | subnodes at: 1).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o Annotation: a SlotsAndGroups: s Close: c = ( |
            | 
            (((copyRemoveAll
              addSubnode: o)
              addSubnode: a)
              addAllSubnodes: s)
              addSubnode: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dotIfPresent: pb IfAbsent: ab = ( |
            | 
            lastSubnode isUsSlotSeparator ifTrue: [pb value: lastSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlotGroup = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         removeAnnotationAndDotIfPresent: lst = ( |
            | 
            dotIfPresent: [lst removeLast] IfAbsent: [].
            lst removeFirst.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'annotatedSlotGroup' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         slotsWithAnnotationsDo: blk Prepending: a = ( |
            | 
            resend.slotsWithAnnotationsDo: blk Prepending: a, '\x07', annotation value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         unaryOrBinarySend = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes unaryOrBinarySend.

CopyDowns:
globals usParser parseNodes abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes unaryOrBinarySend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         delegateeIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount = subnodeCountWithDelegatee
              ifTrue: [  pb value: subnodes at: 1 ]
               False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         firstSelectorNode = ( |
            | selectorNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorNodes = ( |
            | 
            list copyRemoveAll addFirst: selectorNode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            selectorNode source canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         binarySend = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes unaryOrBinarySend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes binarySend.

CopyDowns:
globals usParser parseNodes unaryOrBinarySend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes binarySend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ( |
            | vector copyAddLast: lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReceiver: rcvr Delegatee: delOrNil Selector: s Argument: arg = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: rcvr.
            delOrNil = nil  ifFalse: [ r addSubnode: delOrNil ].
            r addSubnode: s.
            r addSubnode: arg.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorNode = ( |
            | 
            subnodes at: subnodeCount - 2).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         subnodeCountWithDelegatee = 4.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         binarySlotNameWithFormal = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes binarySlotNameWithFormal.

CopyDowns:
globals usParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes binarySlotNameWithFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOperator: op Formal: f = ( |
            | 
            (copyRemoveAll addSubnode: op) addSubnode: f).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formal = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsInSlot: s = ( |
            | vector copyAddFirst: formal).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         operator = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            operator value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         binarySlotNameWithoutFormal = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes binarySlotNameWithoutFormal.

CopyDowns:
globals usParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes binarySlotNameWithoutFormal parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 1.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOperator: o = ( |
            | copyRemoveAll addSubnode: o).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsInSlot: s = ( |
            | 
            s method objectBlockOrMethodBodyIfPresent: [|:b|
              b  slotListIfPresent: [|:sl| sl argumentsFromSlotList] IfAbsent: vector
            ] IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            halt.
            nameToken value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'binarySlotNameWithoutFormal' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         blockOrObjectOrMethodOrSubExpr = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes blockOrObjectOrMethodOrSubExpr.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes blockOrObjectOrMethodOrSubExpr parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotContents = ( |
            | 
            objectBlockOrMethodBodyIfPresent: [|:b| b argumentCountAsSlotContents] IfAbsent: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveSlots = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         closeBracket = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o Close: c = ( |
            | 
            copyOpen: o ObjectBlockOrMethodBodyOrNil: nil Close: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o ObjectBlockOrMethodBodyOrNil: b Close: c = ( |
             r.
            | 
            r: copyRemoveAll.
            r addSubnode: o.
            b ifNil: [] IfNotNil: [r addSubnode: b].
            r addSubnode: c.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBlockOrMethodBodyIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount > 2 ifTrue: [pb value: subnodeAt: 1] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         openBracket = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> () From: ( | {
         'Category: modifying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceBodyWith: pt IfFail: fb = ( |
            | 
            subnodeCount < 3 ifTrue: [^ fb error: 'not enough nodes'].
            at: 1 PutSubnode: pt).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         block = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'block' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'block' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes block.

CopyDowns:
globals usParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'block' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes block parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsBlock = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'block' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionSeries = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'expressionSeries' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'expressionSeries' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes expressionSeries.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'expressionSeries' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'expressionSeries' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes expressionSeries parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'expressionSeries' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywordSend = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractMessageSend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes keywordSend.

CopyDowns:
globals usParser parseNodes abstractMessageSend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         arguments <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes keywordSend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReceiver: rcvr Delegatee: delOrNil Keywords: kws Arguments: args = ( |
             c.
             r.
            | 
            r: copyRemoveAll.
            r addSubnode: rcvr.
            delOrNil = nil  ifFalse: [r addSubnode: delOrNil ].
            r selectorNodes:  kws asVector.
            r arguments:     args asVector.
            r selectorNodes size = r arguments size ifFalse: [error: 'keyword/argument mismatch'].
            c: collector copyFirst: ''.
            r selectorNodes  with:  r arguments Do: [|:k. :a|
              r addSubnode: k.  r addSubnode: a.  c: c & k source.
            ].
            r selectorString: c flatString.
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         copySubnodesFrom: n = ( |
            | 
            (((resend.copySubnodesFrom: n) 
              arguments:     n arguments)
              selectorNodes: n selectorNodes)
              selectorString: n selectorString).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         delegateeIfPresent: pb IfAbsent: ab = ( |
             d.
            | 
            d: subnodes at: 1.
            d isUsDelegatee ifTrue: [pb value: d] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         firstSelectorNode = ( |
            | selectorNodes first).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractMessageSend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllSubnodes = ( |
            | 
            ((resend.removeAllSubnodes arguments: vector)
               selectorNodes: vector)
               selectorString: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (vector)\x7fVisibility: public'
        
         selectorNodes <- ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (\'\')\x7fVisibility: public'
        
         selectorString <- ''.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywordSlotNameWithFormals = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes keywordSlotNameWithFormals.

CopyDowns:
globals usParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (list copyRemoveAll)\x7fVisibility: public'
        
         formals <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (list copyRemoveAll)\x7fVisibility: public'
        
         keywords <- list copyRemoveAll.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes keywordSlotNameWithFormals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = ( |
            | formals size).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyKeywords: kws Formals: frmls = ( |
             r.
            | 
            r: copyRemoveAll.
            r keywords: kws.
            r formals: frmls.
            kws with: frmls Do: [|:k. :f|  r addSubnode: k.  r addSubnode: f. ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         copySubnodesFrom: n = ( |
            | 
            ((resend.copySubnodesFrom: n)
            keywords: n keywords)
             formals: n formals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsInSlot: s = ( |
            | formals).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllSubnodes = ( |
            | 
            ((resend.removeAllSubnodes)
             keywords: list copyRemoveAll)
             formals:  list copyRemoveAll).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            (keywords gather: [|:kw| kw value] Into: sequence copyRemoveAll) asString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywordSlotNameWithoutFormals = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes keywordSlotNameWithoutFormals.

CopyDowns:
globals usParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes keywordSlotNameWithoutFormals parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = ( |
            | subnodeCount).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyKeywords: kws = ( |
            | 
            copyRemoveAll addAllSubnodes: kws).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsInSlot: s = ( |
            | 
            s method objectBlockOrMethodBody ifPresent: [|:b|
              b slotListIfPresent: [|:sl| sl argumentsFromSlotList] 
                         IfAbsent: vector
            ]
            IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         keywords = ( |
            | subnodes).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            (keywords gather: [|:kw| kw value] Into: sequence copyRemoveAll) asString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'keywordSlotNameWithoutFormals' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         method = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'method' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'method' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes method.

CopyDowns:
globals usParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'method' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes method parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsMethod = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'method' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         object = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes object.

CopyDowns:
globals usParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes object parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsObject = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'object' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slot = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes slot.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes slot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         assignmentAndValueIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount  >  (hasGuard asInteger + hasDot asInteger) succ
              ifTrue: [pb value: (subnodes at: nameNodeIndex succ) With: subnodes at: nameNodeIndex succ succ]
               False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n Assignment: aOrNil Value: vOrNil Dot: dOrNil = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: n.
            nil = aOrNil ifFalse: [
              r addSubnode: aOrNil.
              r addSubnode: vOrNil.
            ].
            nil = dOrNil ifFalse: [
              r addSubnode: dOrNil.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n Guard: gOrNil Assignment: aOrNil Value: vOrNil Dot: dOrNil = ( |
             r.
            | 
            r: copyRemoveAll.
            nil = gOrNil ifFalse: [
              r addSubnode: gOrNil.
            ].
            r addSubnode: n.
            nil = aOrNil ifFalse: [
              r addSubnode: aOrNil.
              r addSubnode: vOrNil.
            ].
            nil = dOrNil ifFalse: [
              r addSubnode: dOrNil.
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dotIfPresent: pb IfAbsent: ab = ( |
            | 
            lastSubnode isUsSlotSeparator ifTrue: [pb value: lastSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formals = ( |
            | 
            nameNode formalsInSlot: self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         guardIfPresent: pb IfAbsent: ab = ( |
            | 
            firstSubnode isUsSlotGuard ifTrue: [pb value: firstSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasDot = ( |
            | lastSubnode isUsSlotSeparator).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasGuard = ( |
            | 
            guardIfPresent: true IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsArgumentSlot = ( |
            | 
            nameNode isArgumentSlotName).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsAssignableSlot = ( |
            | 
            assignmentAndValueIfPresent: [|:a|
                a isUsConstantSlotAssignment not
              ]
              IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsDataSlot = ( |
            | 
            assignmentAndValueIfPresent: [|:a. :v|
              v isUsMethod not
            ]
            IfAbsent: true).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsMethodSlot = ( |
            | 
            assignmentAndValueIfPresent: [|:asg. :val|
              val isUsMethod
            ]
            IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         method = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameNode = ( |
            | 
            subnodeAt: nameNodeIndex).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         nameNodeIndex = ( |
            | 
            hasGuard asInteger).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: modifying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         replaceMethodBodyWith: methodBodyParseTree IfFail: fb = ( |
            | 
            assignmentAndValueIfPresent: [|:a. :v|
              v replaceBodyWith: methodBodyParseTree IfFail: fb.
            ] IfAbsent: [fb value: 'no body'].
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | nameNode selectorString canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectAnnotationSlot = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes slot copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes objectAnnotationSlot.

CopyDowns:
globals usParser parseNodes slot. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes objectAnnotationSlot parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlot' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slot' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         objectAnnotationSlotName = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes objectAnnotationSlotName.

CopyDowns:
globals usParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes objectAnnotationSlotName parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         annotationToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyAnnotation: a = ( |
            | copyRemoveAll addSubnode: a).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectAnnotationSlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         objectBlockOrMethodBody = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes objectBlockOrMethodBody.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         hasExpressionSeries <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: InitializeToExpression: (false)\x7fVisibility: public'
        
         hasSlotList <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes objectBlockOrMethodBody parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotContents = ( |
            | 
            slotListIfPresent: [|:sl| sl argumentSlotCount] IfAbsent: 0).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copySlotList: slOrNil ExpressionSeries: esOrNil = ( |
             r.
            | 
            r: copyRemoveAll.
            nil = slOrNil ifTrue: [r hasSlotList:          false]  False: [r addSubnode: slOrNil. r hasSlotList:         true].
            nil = esOrNil ifTrue: [r hasExpressionSeries:  false]  False: [r addSubnode: esOrNil. r hasExpressionSeries: true].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         copySubnodesFrom: n = ( |
            | 
            ((resend.copySubnodesFrom: n)
              hasSlotList:          n hasSlotList)
              hasExpressionSeries:  n hasExpressionSeries).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionSeriesIfPresent: pb IfAbsent: ab = ( |
            | 
            hasExpressionSeries ifTrue: [pb value: lastSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         hasExpressions = ( |
            | 
            expressionSeriesIfPresent: [|:es| es hasSubnodes] IfAbsent: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         locals = ( |
            | 
            slotListIfPresent: [|:sl| sl localsFromSlotList] IfAbsent: vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         removeAllSubnodes = ( |
            | 
            (resend.removeAllSubnodes hasSlotList: false) hasExpressionSeries: false).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'objectBlockOrMethodBody' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotListIfPresent: pb IfAbsent: ab = ( |
            | 
            hasSlotList ifTrue: [pb value: firstSubnode] False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         pop = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes pop.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes pop parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyExpression: e Dot: d = ( |
            | 
            (copyRemoveAll addSubnode: e) addSubnode: d).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dot = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsPop = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'pop' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         return = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes return.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes return parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReturn: r Expression: e = ( |
            | 
            (copyRemoveAll addSubnode: r) addSubnode: e).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expression = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsReturn = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'return' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         returnToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: context\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotGuard = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals parseKit parseNodes node copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes slotGuard.

CopyDowns:
globals parseKit parseNodes node. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes slotGuard parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         isUsSlotGuard = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'parseKit' -> 'parseNodes' -> 'node' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotGuard' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         slotsDo: blk = ( |
             slotList.
             ss.
            | 
            slotList: subnodeAt: 1.
            ss: slotList subnodes copy.
            ss removeFirst.
            ss removeLast.
            ss do: blk.
            self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slot lists\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotList = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes slotSeries copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes slotList.

CopyDowns:
globals usParser parseNodes slotSeries. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes slotList parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentsFromSlotList = ( |
             r.
            | 
            r: list copyRemoveAll.
            slotsWithAnnotationsDo: [|:sl. :a| 
              sl nameNode isArgumentSlotName ifTrue: [r addLast: sl nameNode selectorString]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyOpen: o SlotsAndGroups: s Close: c = ( |
            | 
            ((copyRemoveAll
              addSubnode: o)
              addAllSubnodes: s)
              addSubnode: c).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         dotIfPresent: pb IfAbsent: ab = ( |
            | 
            ab value).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSlotList = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         localsFromSlotList = ( |
             r.
            | 
            r: list copyRemoveAll.
            slotsWithAnnotationsDo: [|:sl. :a| 
              sl nameNode isArgumentSlotName ifFalse: [
                sl nameNode isUsUnarySlotName ifFalse: [error: sl nameNode selectorString, ': not unary?'].
                r addLast: sl nameNode selectorString
              ]
            ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotSeries' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         removeAnnotationAndDotIfPresent: list = ( |
            | self).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'slotList' -> 'parent' -> () From: ( | {
         'Category: iterating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         slotsWithAnnotationsDo: blk = ( |
            | 
            "eval blk with each slot and its anno string"
            slotsWithAnnotationsDo: blk Prepending: '').
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: objects, blocks, etc.\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         subexpression = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes blockOrObjectOrMethodOrSubExpr copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes subexpression.

CopyDowns:
globals usParser parseNodes blockOrObjectOrMethodOrSubExpr. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes subexpression parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveArguments = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         canHaveSlots = bootstrap stub -> 'globals' -> 'false' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         expressionSeriesIfFail: fb = ( |
            | 
            objectBlockOrMethodBodyIfPresent: [|:b|
              b expressionSeriesIfPresent: [|:es| es]
                IfAbsent: [fb value: 'parsed to subexpression with no expression series?']
            ]
            IfAbsent: [fb value: 'parsed to this with no expression series?']).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsSubexpression = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'subexpression' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'blockOrObjectOrMethodOrSubExpr' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: message sends\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         unarySend = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes unaryOrBinarySend copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes unarySend.

CopyDowns:
globals usParser parseNodes unaryOrBinarySend. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes unarySend parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         arguments = ((bootstrap stub -> 'globals') \/-> 'vector') -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: copying\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyReceiver: rcvr Delegatee: delOrNil Selector: sel = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: rcvr.
            delOrNil = nil  ifFalse: [ r addSubnode: delOrNil ].
            r addSubnode: sel).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unaryOrBinarySend' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         selectorNode = ( |
            | lastSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySend' -> 'parent' -> () From: ( | {
         'Category: send methods\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         subnodeCountWithDelegatee = 3.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> () From: ( | {
         'Category: slots\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot'
        
         unarySlotName = bootstrap define: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> () ToBe: bootstrap addSlotsTo: (
             bootstrap remove: 'parent' From:
             globals usParser parseNodes abstractSlotName copy ) From: bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> () From: ( |
             {} = 'Comment: The shared, abstract part of parseNode\'s.
A parseNode will typically have construction-specific
data slots, such as thenPart for an if-node.
It also behaves as a collection for its subnodes.
And, it knows the previous and next nodes.\x7fModuleInfo: Creator: globals usParser parseNodes unarySlotName.

CopyDowns:
globals usParser parseNodes abstractSlotName. copy 
SlotsToOmit: parent.

\x7fIsComplete: '.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals usParser parseNodes unarySlotName parent.
'.
            | ) .
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         argumentCountAsSlotName = 0.
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n = ( |
            | copyName: n Star: nil).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: creating\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         copyName: n Star: s = ( |
             r.
            | 
            r: copyRemoveAll addSubnode: n.
            nil = s  ifFalse: [ r addSubnode: s ].
            r).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         formalsInSlot: s = ( |
            | 
            vector).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isArgumentSlotName = ( |
            | 
            nameToken isUsArgument).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: testing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         isUsUnarySlotName = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         nameToken = ( |
            | firstSubnode).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'ModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: private'
        
         parent* = bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'abstractSlotName' -> 'parent' -> ().
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         selectorString = ( |
            | 
            nameToken value canonicalize).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         starIfPresent: pb IfAbsent: ab = ( |
            | 
            subnodeCount > 1  ifTrue: [pb value: lastSubnode]
                               False: ab).
        } | ) 

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'usParser' -> 'parseNodes' -> 'unarySlotName' -> 'parent' -> () From: ( | {
         'Category: accessing\x7fModuleInfo: Module: usParseNodes InitialContents: FollowSlot\x7fVisibility: public'
        
         suppliesAnyArgumentNames = bootstrap stub -> 'globals' -> 'true' -> ().
        } | ) 



 '-- Side effects'

 globals modules usParseNodes postFileIn
