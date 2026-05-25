'got' printLine
"$Revision: 30.1 $"
"Copyright 1991:
    The Self Group: David Ungar, Craig Chambers, Bay-Wei Chang, Urs Hoelzle
    Stanford University, Stanford, CA"

"CAUTION: This file is not part of the documented Self world.  It may be
 be changed or removed at any time, and it will not be documented.
 This file can be removed without affecting the Self world in any way."

  "Template used by primitiveMaker to create Xlib primitives."

primitiveMaker reader copy create: 'xlibPrims' From: '

macroName: xlib

traits: traits xlib display raw

  _ Display xInternAtom: string OnlyIfExists: bool \
            = proxy Atom Atom_seal {xlib atom} call XInternAtom canAWS

'
