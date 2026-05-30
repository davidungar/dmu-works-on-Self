 'Sun-$Revision: 30.0 $'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> () From: ( | {
         'Category: userInterfaceCategory: EventsComment: THE ui1 input-event protocol -- the single object every backend builds and
the queueingEventHandler (graphics/eventHandler.self) consumes. To add or change
a backend, satisfy exactly these messages. Quartz builds it in quartz.self (event
parent setUI1Event:); X in this file (xlib events <T> setUI1Event:). Protocol:
typeName (dispatch discriminator, e.g. buttonPress/keyPress/motionNotify/
configureNotify/expose/clientMessage); x y (location); button buttonName (mouse);
state newState hasInputStateInfo (modifiers+buttons); keycode lookupString
(keyboard); width height count (configure/expose); deleteWindow isDeleteWindow
(close); hasLocationInfo; delete (lifecycle no-op -- a plain Self object the GC
reclaims). Was globals quartz ui1Event; moved here so X and Quartz share it and
the contract is visible in one place. -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         ui1Event = bootstrap setObjectAnnotationOf: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( |
             {} = 'ModuleInfo: Creator: globals ui1Event.
IsComplete: '.
            | ) .
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'Comment: 1=left, 2=middle, 3=right.ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         button <- 1.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         count <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         deleteWindow <- bootstrap stub -> 'globals' -> 'false' -> ().
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'Comment: true on mouse/key events (state carries the modifier+button bitmask the
cursor reads); false on window events (configure/expose/clientMessage), so
cursor getInfo: (drag-time collapseMotionEvents) ignores their state, matching
native X. -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         hasInputStateInfo <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'Comment: true on mouse/key events; false on window events, so cursor getInfo:
ignores their x/y (which mean window bounds, not cursor position). -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         hasLocationInfo <- bootstrap stub -> 'globals' -> 'true' -> ().
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         height <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         keycode <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         lookupString <- ''.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: private'

         parent* = bootstrap stub -> 'traits' -> 'ui1Event' -> ().
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'Comment: X-style modifier+button bitmask.ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         state <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'Comment: milliseconds.ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         time <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         typeName <- 'otherEvent'.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         width <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         x <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'globals' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         y <- 0.
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlot'

         ui1Event = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1Event' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1Event.
'.
            | ) .
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1Event' -> () From: ( | {
         'Comment: X button name from the button number, for the queueingEventHandler
(leftButtonDownAt:Event: etc.). -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         buttonName = ( |
            |
            button = 2 ifTrue: [^ 'middle'].
            button = 3 ifTrue: [^ 'right'].
            'left').
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1Event' -> () From: ( | {
         'Comment: ui1 deletes events after processing; this is a plain Self object so there
is nothing to free -- the GC handles it. -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         delete = ( |
            | self).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         isDeleteWindow = ( |
            | deleteWindow).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1Event' -> () From: ( | {
         'Comment: X reports state-before-event and toggles the changed button; the Mac
mouseChord we put in state is already the post-transition button set, so it
serves directly as the cursors new state. -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         newState = ( |
            | state).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1Event' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: private'

         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | )



 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'Category: userInterfaceCategory: EventsComment: Shared event-source contract: the object ui1s eventWatcher pulls events from
(eventWatcher watch = handler event: display nextEvent). Both backends inherit
this nextEvent, which unifies the wait strategy on sleep-polling (X used to
fd-block; we poll like ui2 so synthetic events injected for the autonomous test
harness are noticed): spin on rawEventsPending/injectedEvents, drain any injected
ui1Events first, else convert the next native event into one ui1Event (the single
visible-contract family) and finishEvent: it. Backends supply the three hooks
rawEventsPending / rawNextEvent / convert:, and may override finishEvent: for
post-conversion fixups. Quartz source: traits quartz ui1EventSource (graphics/
quartz.self). X source: traits xlib ui1EventSource (graphics/xlib.self).
-- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         ui1EventSource = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1EventSource.
'.
            | ) .
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( | {
         'Comment: post-conversion fixup hook; default returns the event unchanged. Quartz
overrides it to track the cursor, stamp key events with the last cursor
position (point-to-type), and fill configure/expose bounds. -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         finishEvent: e = ( |
            | e).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( | {
         'Comment: synthetic events (the ui1TestDriver harness) jump the native queue so the
watcher drains them through the real handler -- no OS input, works on both
backends. -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         inject: e = ( |
            | injectedEvents add: e. self).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( | {
         'Comment: the seam eventWatcher blocks on. Sleep-poll the native queue (no fd to
block on for Quartz; X is polled too so injected events are seen and the
times-delay lets check_carbon_events pump Cocoa), then return an injected event
if any, else convert the next native event into one ui1Event and finish it.
-- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         nextEvent = ( |
            |
            [(rawEventsPending = 0) && [injectedEvents isEmpty]] whileTrue: [ times delay: pollDelayMS ].
            injectedEvents isEmpty ifFalse: [ ^ injectedEvents removeFirst ].
            finishEvent: convert: rawNextEvent).
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( | {
         'ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: private'

         parent* = bootstrap stub -> 'traits' -> 'clonable' -> ().
        } | )



 '-- Side effects'

 globals modules ui1Event postFileIn
