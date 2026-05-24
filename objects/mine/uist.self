
[ | bp = boxBlueprint copy |
  bp hideOtherSlots.
  boxBlueprintDict add: (reflect: 0@0) Blueprint: bp.
] value

[ | bp = boxBlueprint copy |
  bp hideOtherSlots.
  boxBlueprintDict add: (reflect: 0) Blueprint: bp.
] value

   preferences ui	 boxFont:	   'lucidasanstypewriter-bold-24'
    preferences ui	menuFont:	   'lucidasanstypewriter-bold-24'



traits ui baseBox _AddSlots: ( |
  kbdF9 = (absoluteLocation printLine).
  nameLengthLimit = 100.
| )

