"$Revision: 30.1 $"
"Copyright 1991:
    The Self Group: David Ungar, Craig Chambers, Bay-Wei Chang, Urs Hoelzle
    Stanford University, Stanford, CA"

  "traits <userInterface> uiHalt"
  "<prototypes userInterface> uiHalt"

traits userInterface _AddSlotsIfAbsent: ( | ^ uiHalt = () | )
traits uiHalt _Define: ( |
    _ parent** = traits clonable.
    ^ halt: p Message: msg = ( | h |
	 h: clone. h process: p. h message: msg. haltedProcess: h ).

    haltedProcess.
    ^ haveHaltedProcess = ( (haltedProcess == nil) not ).
    ^ removeHaltedProcess = ( haltedProcess: nil ).
| )

prototypes userInterface _AddSlotsIfAbsent: ( | ^ uiHalt = () | )
uiHalt _Define: ( |
    _ parent* = traits uiHalt.

    "hack for demo purposes"
    ^ process.
    ^ message.
| )

