"Sun-$Revision: 30.1 $"

"This file, example.self, is an example of a simple self program.
 You can copy and edit it to write your own self program.
 This paragraph is a comment (comments are enclosed in double-quotes).
 The first line of the file is also a comment, but its real
 purpose is to give RCS a place to put the file revision number.
 You do not need it for Self, it is just there for our own
 source control here in the Self project. --Dave Ungar 2/92"


traits applications _AddSlotsIfAbsent: ( | spaceWar = () | )

"Now define its contents: inherit from traits clonable
 in order to obtain cloning behavior. Define copy in terms of clone.
 (Copy is the public interface, clone is a private low-level operation.)
 (The circumflex character denotes public, and the underbar denotes
 private.)"

traits spaceWar _Define: ( |
  _ parent* = traits window.
  expose: event = (
      resend.expose: event.
      redraw).

  redraw = (
      [
          pr fillRectangle: boundingBox center ## (10@10) Color: 1.
          pr fillRectangle: boundignBox center ## (10@10) Color: 0.
      ] loop.
      self).
      
  open = (pr: pixrect copy open: '/dev/fb'. windowParent: resend.open).

| )

prototypes applications _AddSlotsIfAbsent: ( | spaceWar = () | )

spaceWar _Define: ( |
    windowParent**  <- window.
  _ spaceWarParent* = traits spaceWar.
    pr <- pixrect.
| )



