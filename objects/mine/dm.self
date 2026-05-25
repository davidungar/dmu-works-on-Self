traits      _AddSlotsIfAbsent: ( | fakeMirror = () | )
prototypes  _AddSlotsIfAbsent: ( | fakeMirror = () | )

traits fakeMirror _Define: ( |
    parent* = traits mirror.
    
    referencesLimit:   limit IfFail: b = (vector).
    implementorsLimit: limit IfFail: b = (vector).
    allLimit:          limit IfFail: b = (vector).

    size = 0.

    nameAt:           i = ('fake mirror slot name').
    contentsAt:       i = (self).
    isParentAt:       i = (false).
    isAssignableAt:   i = (false).
    isArgumentAt:     i = (false).
    parentPriorityAt: i = (0).
    visibilityAt:     i = (undeclaredSlot).

    = x = (false).
    reflecteeIdentityHash = 0.

    evaluate: m = (self).

    define:   newObj = (error: 'cannot do this').
    addSlots: newObj = (error: 'cannot do this').

    removeAt: index               = (error).
    removeAt: index IfFail: block = (block value).

    atName: name Put: mir Visibility:vis ParentPriority: p = (error).
    atName: name Put: mir Visibility:vis                   = (error).
   
    name = 'fake mirror'.
| )


fakeMirror _Define: ( |
    parent* = traits fakeMirror.
| )

"
sys_getdirentries = 174
unix syscall:sys_getdirentries With: buf And: 0 With: buf length And: 0 

off_t d_off lseek offset  
u_long d_fileno inode
u_short d_reclen len of record offset from start to next
u_short d_namlen length 
char d_name[] null term




returns zero on end
EINVAL not big enought	
"