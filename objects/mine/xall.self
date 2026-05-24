"Sun-$Revision: 30.1 $"

"Copyright 1992 Sun Microsystems, Inc. and Stanford University.
 See the LICENSE file for license information."

  "Read in the complete Self world."


myTime: _TimeReal
'all-core'  _RunScript

	" graphical UI "

codeCache flush	    	"speeds up the read-in process a little bit"
'all-ui'		_RunScript

	" public key encryption (optional, but used by tests) "

'crypto'		_RunScript

	" primitive maker (optional, but used by tests) "

'primitiveMaker'	_RunScript

	" tests and benchmarks (optional) "

'all-tests'		_RunScript

        " examples and other pedagogy (optional) "

'example'

	" final actions "

shell db: debugger copy "make a copy of the debugger ready to use"
codeCache flush		"flush all the little dinky doIts"
memory garbageCollect	"throw away code strings for the little dinky doIts"
pathCache refill	"fill the pathCache with nice names"
myTime: _TimeReal - myTime
prompt start		"start the scheduler and the read-eval-print process"
