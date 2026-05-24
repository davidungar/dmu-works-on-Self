"$Revision:$"

traits     _AddSlotsIfAbsent: ( | enumResult = () | )
prototypes _AddSlotsIfAbsent: ( | enumResult = () | )
traits     _AddSlotsIfAbsent: ( | enumObjectsResult = () | )
prototypes _AddSlotsIfAbsent: ( | enumObjectsResult = () | )
traits     _AddSlotsIfAbsent: ( | enumSlotsResult = () | )
prototypes _AddSlotsIfAbsent: ( | enumSlotsResult = () | )

traits enumResult _Define: ( |
    _ parent* = traits fakeMirror.
    ^ objects: v = (contents: v).
    ^ copy = (clone contents: contents copy).
    _ clone = (_Clone).

    ^ name = (type, ' of ', (source nameSize: 40)).
    ^ targetSlotName = (' ', type, ' of').

    ^ nameAt: i = (
        i = 0 ifTrue: [^targetSlotName].
	(reflect: (contents at: i pred)) nameSize: 20).

    ^ size = (contents size succ).

    ^ contentsAt: i = (
        i = 0 ifTrue: [^source].
	reflect: (contents at: i pred)).

    ^ = x = ((name = x name) && [source = x source]).
        
| )

traits enumObjectsResult _Define: ( |
    _ parent* = traits enumResult.
| )

traits enumSlotsResult _Define: ( |
    _ parent* = traits enumResult.
| )

enumResult _Define: ( |
    _ parent* = traits enumResult.
    ^ name <- 'an uninitialized enumResult'.
    _ contents <- dictionary.
| )

enumObjectsResult _Define: ( |
    _ parent* = traits enumObjectsResult.
    ^ type <- ''.
    ^ source <- reflect: self.
    "_XXX" contents <- dictionary.
| )

enumSlotsResult _Define: ( |
    _ parent* = traits enumSlotsResult.
    ^ name <- 'an uninitialized enumSlotsResult'.
    _ contents <- dictionary.
| )