lobby _AddSlots: ( |
      mtp = ( |s. s1. n|
          s: set copyRemoveAll.
	  s add: reflect: self.
	  [
	      n: s size.
	      s1: s copy.
	      s do: [|:m| m do: [|:s| s isParent ifTrue: [s1 add: s value]]].
	      s: s1.
	      s size = n ifTrue: [^s].
          ] loop).
     mtpe = ( | v. l |
         l: list copyRemoveAll.
	 do: [|:m| m isEmpty ifTrue: [l addLast: m reflectee]].
	 l asVector).

     mtpex = (nil mtp mtpe do: [|:x|
         (reflect: x) name print. ' ' print. x _Print. '' printLine]).     
| )
	      
_PrintOopAddress: true