(|m|
m: reflect: lobby.
(reflect: traits clonable)
 do: [|:s|  (s value = m) && [s isParent] ifTrue: ['got one' print]] )
