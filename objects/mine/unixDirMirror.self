traits _AddSlotsIfAbsent: ( | unixDirectoryMirror = () | )
prototypes _AddSlotsIfAbsent: ( | unixDirectoryMirror = () | )

traits unixDirectoryMirror _Define: ( |
       parent* = traits fakeMirror.

       cheat = dictionary copy.
       size = (dir names size).
       nameAt: i = (dir names at: i).
       contentsAt: i = (
           (dir names at: i) = '.' ifTrue: [self] False: [
	       copyFor: dir name, '/', (nameAt: i)]).
       = x = (name = x name).
       reflecteeIdentityHash = (name hash).
       name = (dir name).
       copyFor: n = (cheat at: n IfAbsent: [cheat at: n Put: _Clone for: n. cheat at: n ]).
     _ for: n = ( dir: dir copy name: n).
| )

unixDirectoryMirror _Define: ( |
    parent* = traits unixDirectoryMirror.		    
    _ dir <- unixDirectory.
| )