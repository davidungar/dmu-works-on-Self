_VerifyBeforeScavenge: true
_VerifyAfterScavenge: true
_Verify
        " tty support "

'termcap'               _RunScript
_Verify
'tty'                   _RunScript

	" preferences "

_Verify
'defaultPreferences'	_RunScript


         " tty based debugging support "

_Verify
'debugger'              _RunScript


" transporter application (optional) "

_Verify
'transporter'           _RunScript
