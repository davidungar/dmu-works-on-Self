oddballs   applications _AddSlotsIfAbsent: ( | unixDirectoryPackage = () | )

traits     applications _AddSlotsIfAbsent: ( | unixDirectory = () | )
prototypes applications _AddSlotsIfAbsent: ( | unixDirectory = () | )

oddballs unixDirectoryPackage _Define: ( |

    _ opendir.
    _ readdir.
    _ telldir.
    _ seekdir. 
    _ closedir.

    _ get_d_off.
    _ get_d_fileNo.
    _ get_d_name.

    _ initialize = ( | handle |
        (opendir _IsLiveIfFail: false) ifTrue: [^self].

        handle: '/home/rocious/ungar/self/mine/libdirs.so.1.1' _Dlopen: 1.
    
        opendir:  handle _FctLookup: '_opendir_glue'.
        readdir:  handle _FctLookup: '_readdir_glue'.
        telldir:  handle _FctLookup: '_telldir_glue'.
        seekdir:  handle _FctLookup: '_seekdir_glue'.
        closedir: handle _FctLookup: '_closedir_glue'.

        get_d_off:    handle _FctLookup: '_get_d_off_glue'.
        get_d_fileNo: handle _FctLookup: '_get_d_fileNo_glue'.
        get_d_name:   handle _FctLookup: '_get_d_name_glue'.

        self).


    _ call: h With: a          IfFail: fb  = (h _Call: a         IfFail: [|:n. :e| fb value: e]).
    _ call: h With: a With: b  IfFail: fb  = (h _Call: a With: b IfFail: [|:n. :e| fb value: e]).

    ^ open: dirName         IfFail: fb = (call: opendir  With: dirName IfFail: fb ).
    ^ read: dirH            IfFail: fb = (call: readdir  With: dirH    IfFail: fb ).
    ^ tell: dirH            IfFail: fb = (call: telldir  With: dirH    IfFail: fb ).
    ^ seek: dirH To: where  IfFail: fb = (call: seekdir  With: dirH With: where IfFail: fb ).
    ^ close: dirH           IfFail: fb = (call: closedir With: dirH    IfFail: fb ).

    ^ get_d_off:    ent IfFail: fb = (call: get_d_off    With: ent IfFail: fb).
    ^ get_d_fileNo: ent IfFail: fb = (call: get_d_fileNo With: ent IfFail: fb).
    ^ get_d_name:   ent IfFail: fb = (call: get_d_name   With: ent IfFail: fb).
| )


traits unixDirectory _Define: ( |
    _ parent* = traits clonable.
    _ dirs* = unixDirectoryPackage.

    ^ copy = (resend.copy names: names copy).

    ^ name: n = ( | newNames. dir |
	newNames: names copyRemoveAll.
	initialize. "set up fct handles"
        dir:  open: n IfFail: [|:e| error: 'could not open dir: ', n, ', ', e].
	[ | :exit.  ent |
	    ent: read: dir IfFail: [|:e|
	        e = 'ENOENT' ifTrue: exit.
		error: 'readdir failed: ', e.
            ].
	    newNames add: get_d_name: ent
	           IfFail: [|:e| error: 'get_d_name: ', e].
        ] loopExit.
	close: dir IfFail: nil.
	myName:  n.
        names: newNames.
	self).

     ^ name = ( myName ).

     ^ printString = ('a unixDirectory named ', name).
| )


unixDirectory _Define: ( |
    _  parent* = traits unixDirectory.
    _  myName <- ''.
    _^ names <- set.	      
    _  thisObjectPrints = true.
| )

unixDirectory name: '.'