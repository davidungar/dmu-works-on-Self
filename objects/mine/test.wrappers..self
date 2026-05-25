fribble frabble _AddSlots: ( |

  copy_color: copy_color Shape: shape = ( 
    copy_color: copy_color Shape: shape IfFail: [|:e|
      ^error: 'primitive new Inode  failed: ', e])

  copy_color: copy_color Shape: shape IfFail: failureBlock = (
    copy_color _newInodeShape: shape IfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
      copy_color  _newInodeShape: shape  IfFail: [|:n. :e|
        ^failureBlock value: e]]).

  delete = ( 
    deleteIfFail: [|:e|
      ^error: 'primitive delete Inode  failed: ', e])

  deleteIfFail: failureBlock = (
     _deleteInodeIfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
        _deleteInodeIfFail: [|:n. :e|
        ^failureBlock value: e]].  self).

  errorNumber = ( 
    errorNumberIfFail: [|:e|
      ^error: 'primitive get  errno failed: ', e])

  errorNumberIfFail: failureBlock = (
     _geterrnoIfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
       _geterrnoIfFail: [|:n. :e|
        ^failureBlock value: e]]).

  errorNumber: errorNumber = ( 
    errorNumber: errorNumber IfFail: [|:e|
      ^error: 'primitive set  errno failed: ', e])

  errorNumber: errorNumber IfFail: failureBlock = (
    errorNumber _seterrnoIfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
      errorNumber  asSmallInteger _seterrnoIfFail: [|:n. :e|
        ^failureBlock value: e]].  self).

  time = ( 
    timeIfFail: [|:e|
      ^error: 'primitive call  ftime failed: ', e])

  timeIfFail: failureBlock = (
     _callftimeIfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
       _callftimeIfFail: [|:n. :e|
        ^failureBlock value: e]]).

  open: open Mode: mode = ( 
    open: open Mode: mode IfFail: [|:e|
      ^error: 'primitive call  open failed: ', e])

  open: open Mode: mode IfFail: failureBlock = (
    open _callopenMode: mode IfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
      open  asByteVector _callopenMode: mode  asSmallInteger IfFail: [|:n. :e|
        ^failureBlock value: e]]).

  open: open Mode: mode = ( 
    open: open Mode: mode IfFail: [|:e|
      ^error: 'primitive call  open failed: ', e])

  open: open Mode: mode IfFail: failureBlock = (
    open _callopenMode: mode IfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
      open  asByteVector _callopenMode: mode  asSmallInteger IfFail: [|:n. :e|
        ^failureBlock value: e]]).

  exit: exit = ( 
    exit: exit IfFail: [|:e|
      ^error: 'primitive call  exit failed: ', e])

  exit: exit IfFail: failureBlock = (
    exit _callexitIfFail: [|:n. :e|
      ('badTypeError' isPrefixOf: e) ifFalse: [
	^failureBlock value: e].
      exit  asSmallInteger _callexitIfFail: [|:n. :e|
        ^failureBlock value: e]].  self).

| )


