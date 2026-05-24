boxSizeForHiRes _AddSlots: ( |
    ^ fontName = 'screen.b.16'.
| )

ui invalidateCaches

lobby _AddSlots: ( |
    inheritance_talk* = ( |
        example_1* = ().
        example_2* = ().
        example_3* = ().
        example_4* = ().
        example_5* = ().
        example_6* = ( |
            what = 'name spaces'.
            lobby = lobby.
        | ).
    | ).
| )
	
	

inheritance_talk example_1 _AddSlots: ( |
            what = 'sharing code within a type'.
            stack_traits = ( |
                parent* = traits clonable.

	        push: thingToPush = (
	           contents at: sp Put: thingToPush.
		   sp: sp + 1.
		   self).

	       pop = (
	           sp: sp - 1.
                   contents at: sp).

               copy = (clone contents: contents copy).
            | ).	           
| )

inheritance_talk example_1 _AddSlots: ( |
            stack_prototype = ( |
	        parent* = inheritance_talk example_1 stack_traits.
		sp <- 0.
		contents <- vector copySize: 10.
            | ).
| )

inheritance_talk example_2 _AddSlots: ( |
    what = 'sharing code between types, and sharing data within a type'.
    counting_stack_traits1 = ( |
        parent* = inheritance_talk example_1 stack_traits.
        pop_count  <- 0.
        push_count <- 0.
	pop = (
	       pop_count: pop_count + 1.
	       resend.pop).
        push: x = (
               push_count: push_count + 1.
               resend.push: x).
     | ).
| )

inheritance_talk example_2 _AddSlots: ( |
       counting_stack_prototype1 = ( |
	        parent* = inheritance_talk example_2 counting_stack_traits1.
		sp <- 0.
		contents <- vector copySize: 10.
            | ).
| )

inheritance_talk example_3 _AddSlots: ( |
    what = 'data parents for representation sharing'.
    counting_stack_traits2 = ( |
        pop_count  <- 0.
        push_count <- 0.
	pop = (
	       pop_count: pop_count + 1.
	       resend.pop).
        push: x = (
               push_count: push_count + 1.
               resend.push: x).
        copy = (
	       clone dataParent: dataParent copy).
    | )
| )

inheritance_talk example_3 _AddSlots: ( |
       counting_stack_prototype2 = ( |
	        parent* = inheritance_talk example_3 counting_stack_traits2.
                dataParent** <- inheritance_talk example_1 stack_prototype.
       | ).
| )


inheritance_talk example_4 _AddSlots: ( |
    what = 'altering representation'.
    point_traits = ( |
        parent* = traits clonable.
	+ aPoint = (
          | result |
	    result: inheritance_talk example_4 rect_point copy.
	    result x: x + aPoint x.
	    result y: y + aPoint y.
	    result).
    | ).
| )

inheritance_talk example_4 _AddSlots: ( |
    rect_point = ( |
        parent* = inheritance_talk example_4 point_traits.
        x <- 0.
        y <- 0.
    | ).
| )

inheritance_talk example_4 _AddSlots: ( |
    polar_point = ( |
        parent* = ( |
            parent* = inheritance_talk example_4 point_traits.
            x = (r * theta cos).
            y = (r * theta sin).
         | ).
         rho <- 0.
         theta <- 0.
    | ).
| )


inheritance_talk example_5 _AddSlots: ( |
    what = 'behavioral modes'.

    window_traits = ( |
	parent* = traits clonable.
        move = (
	    position: 17 @ 17.
            display).
        flash = ('xor, xor').
    | ).
| )

inheritance_talk example_5 _AddSlots: ( |
    icon_traits = ( |
        parent* = inheritance_talk example_5 window_traits.
        size = 32 @ 32.
        iconify = (self).
        display = ('display icon').
        expand = (
	    modeParent: myExpansion.
	    display).
    | ).
    expanded_traits = ( |
        parent* = inheritance_talk example_5 window_traits.
        expand = (self).
        display = ('display expanded window').
        iconify = (
	    modeParent: myIcon.
	    display).
    | ).
| )

inheritance_talk example_5 _AddSlots: ( |
    a_window = ( |
        color <- 'red'.
        myIcon = ( |
	    parent* = inheritance_talk example_5 icon_traits.
            position <- 16 @ 16.
            image <- 'a bitmap'.
            label <- 'my file'.
        | ).
        myExpansion = ( |
	    parent* = inheritance_talk example_5 expanded_traits.
            position <- 100 @ 200.
            size <- 300 @ 200.
            contents <- '...'.
        | ).
    | ).
| )

inheritance_talk example_5 a_window _AddSlots: ( |
    modeParent* <- inheritance_talk example_5 a_window myIcon.
| )

inheritance_talk example_6 _AddSlots: ( |
    what = 'lexical scoping'.
    huff <- 'huff'.
    scope_test = (
	   | and <- ' and ' |
           (2 + 2) = 4 ifTrue: [
	       | puff <- 'puff' |
	       huff printLine.
	       and  printLine.
               puff printLine.
               ui add: process this.
	       halt.
           ].
    ).
| )

