' $Revision: 30.1 $ '

"Copyright 1992-2001 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

" David Ungar 11/28/92 "


traits  _AddSlotsIfAbsent: ( | ^ applications* = () | )
globals _AddSlotsIfAbsent: ( | ^ applications* = () | )

traits     applications _AddSlotsIfAbsent: ( | bufferedFile = () |)
globals applications _AddSlotsIfAbsent: ( | bufferedFile = () |)

traits applications bufferedFile _AddSlotsIfAbsent: ( | 
    reader = ().
    writer = ().
    general  = ().
| )

globals applications bufferedFile _AddSlotsIfAbsent: ( |
    reader = ().
    writer = ().
    general  = ().
| )

bufferedFile _AddSlots: ( |
  ^ parent* = traits oddball.

  ^ openForReading: n = (reader copy openForReading: n).
  ^ openForWriting: n = (writer copy openForWriting: n).
| )

" common parent "

traits applications bufferedFile general _Define: ( |
    parent* = traits clonable.

  ^ copy = (
	resend.copy  buffer: buffer copy ).

  _ init = (next: 0.  free: 0).

  _ avail = (buffer size - free).

  ^ size = (file size).
| )


globals applications bufferedFile general _Define: ( |
    parent* = traits applications bufferedFile general.

    buffer <- mutableString copySize: statStructure st_blksize.

    next  <- 0.
    free   <- 0.
    file   <- os_file.
| )



traits applications bufferedFile writer _Define: ( |
  _ parent* = traits applications bufferedFile general.

  ^ currentPosition = (file currentPosition + free).

  ^ openForWriting: n = (
        init.  
	file: file openForWriting: n).

  ^ close  = (flush.  file close).

  ^ openForWriting: n  IfFail: fb = (
        init.  
	file: file openForWriting: n IfFail: fb).

  ^ closeIfFail: fb  = (
        flushIfFail: [|:e| ^ fb value: e].
	file closeIfFail: fb).

  flush           = (file writeFrom: buffer Count: free.  free: 0).

  flushIfFail: fb = (
      file writeFrom: buffer Count: free IfFail: [|:e|
          free: 0.
	^ fb value: e
      ].
      free: 0).
 
  ^ write: buf = ( | sent <- 0. i |
         [sent  <  buf size] whileTrue: [
             i: avail min: buf size - sent.
	     i do: [|:j| buffer at: free + j Put: buf at: sent + j].
	     free: free + i.
	     sent: sent + i.
	     free = buffer size ifTrue: [flush].
	 ].
	 self).
| )

(globals applications bufferedFile writer _Define: 
  globals applications bufferedFile general copy _AddSlots: ( |
   _  parent* = traits applications bufferedFile writer.
| ) )


traits applications bufferedFile reader _Define: ( |
    parent* = traits applications bufferedFile general.

  ^ currentPosition = (file currentPosition - (free - next)).

  ^ openForReading: n = (
        init.  
	file: file openForReading: n).

  ^ close  = ( file close).

  ^ openForReading: n  IfFail: fb = (
        init.  
	file: file openForReading: n IfFail: fb).

  ^ closeIfFail: fb  = (
	file closeIfFail: fb).

  fill           = (free: file readInto: buffer. next: 0).

  ^ readCount: n = ( | read <- 0. r |
         r: buffer copySize: n.
         [read  <  n] whileTrue: [
	     next = free  ifTrue: [
	         fill.  
		 free = 0 ifTrue: [^ buffer copySize: 0]
             ].
             i: free - next min: n - read.
	     i do: [|:j| r at: read + j Put: buffer at: next + j].
	     read: read + i.
	     next: next + i.
	 ].
	 r).
| )

(globals applications bufferedFile reader _Define: 
  globals applications bufferedFile general copy _AddSlots: ( |
    parent* = traits applications bufferedFile reader.
| ) )


modules raw _AddSlots: ( | 
    bufferedFile = ( |
	revision = 'Sun-$Revision:$'.
	comment = ( ''
	    ).
	scontents = '
	 traits  applications bufferedFileself.
	 globals applications bufferedFileself.
	 '.
    | ).
| )
