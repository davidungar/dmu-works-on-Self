"$Revision: 30.1 $"
"Copyright 1990:
    The Self Group: David Ungar, Craig Chambers, Bay-Wei Chang, Urs Hoelzle
    Stanford University, Stanford, CA"

  "Part of the prototype user interface."

  "traits <userInterface> parentsBox"
  "<prototypes userInterface> parentsBox"

traits userInterface _AddSlotsIfAbsent: ( | ^ parentsBox = () | )
traits parentsBox _Define: ( |
    _ parent* = traits enumBox.

    sprout = (
	sprout: parents
	Constrain: [|:b| b absoluteActiveBound bottomCenter + (0 @@ spacing)]
	       To:	 base absoluteActiveBound topCenter.
	self ).

    _ parents = ( | par |
	par: list copy.
	base objMirror do: [ | :slot |
	    slot isParent ifTrue: [ par add: slot value ] ].
	par ).
| )

prototypes userInterface _AddSlotsIfAbsent: ( | ^ parentsBox = () | )
parentsBox _Define: ( |
    _ parent* = traits parentsBox.

    onBox <- baseBox.
    location <- point.
    activeBound <- rectangle.
    backBound   <- rectangle.
    height <- 0.
| )
