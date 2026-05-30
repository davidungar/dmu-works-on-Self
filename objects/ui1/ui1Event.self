 'Sun-$Revision: 30.0 $'
 '
Copyright 1992-2026 AUTHORS.
See the LICENSE file for license information.
'


 '-- Module body'

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> () From: ( | {
         'Category: userInterfaceCategory: EventsComment: Shared event-source contract: the object ui1s eventWatcher pulls events from
(eventWatcher watch = handler event: display nextEvent). Both backends inherit
this nextEvent, which unifies the wait strategy on sleep-polling (X used to
fd-block; we poll like ui2 so synthetic events injected for the autonomous test
harness are noticed): spin on rawEventsPending/injectedEvents, drain any injected
events first, else convert the next native event into one shared uiEvent (the
abstractUI2Event family, which ui1 reads through its ui1-view aliases) and
finishEvent: it. Backends supply rawEventsPending / rawNextEvent / convert:, and
may override finishEvent:. X source: traits xlib ui1EventSource (graphics/
xlib.self). Quartz source: traits quartz ui1EventSource (graphics/quartz.self).
-- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

         ui1EventSource = bootstrap setObjectAnnotationOf: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( |
             {} = 'ModuleInfo: Creator: traits ui1EventSource.
'.
            | ) .
        } | )

 bootstrap addSlotsTo: bootstrap stub -> 'traits' -> 'ui1EventSource' -> () From: ( | {
         'Comment: post-conversion fixup hook; default returns the event unchanged. A backend
may override it (e.g. to track the cursor or fill bounds). -- claude & dmu 5/2026ModuleInfo: Module: ui1Event InitialContents: FollowSlotVisibility: public'

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
if any, else convert the next native event into one shared uiEvent and finish it.
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
