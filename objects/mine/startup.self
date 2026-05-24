"options"

"_FIrstCompiler: nic old new
 _Recompiler: none nic old new"
"_Recompiler: 'new'"
"_Recompiler: 'none'"

"
_MaxBlockFnInlineSize:  6
_MaxFnInlineSize:       4
_MaxBlockInlineSize:   50
_MaxExecInlineSize:    75
"

"_DividedSplitting: true"
"_ReluctantSplitting: false"
"_ExtendedReluctantSplitting: true"
"_EagerSplitting: true"
"_TailMerging: true"
"_DeferUncommonBranches: false"

"_PerformRangeAnalysis: false"
"_CSEConstants: false"
"_CSEAriths: false"
"_CSECells: false"
"_CSECellTypes: false"
"_CSECellBounds: false"

"_VectorsAreMoreCommon: true"

"_DontCheckOverflows: true"
"_DontCheckArrayBounds: true"
"_DontVerifyTypePredictions: true"
"_DontCheckPrimitiveFailure: true"
"_DontPerformCustomization: true"
"_DontPerformTypeAnalysis: true"
"_DontInlineNonTrivialMethods: true"
"_DontInlineNonLocalAccessMethods: true"

"_GenerateZapCode: false"
"_EarlyZapping: true"

"_CacheCompileTimeLookups: false"

"_PrintCompilation: true"
"_PrintInlining: true"
"_PrintEliminatingUnneededComputations: true"
"_PrintRegisterAllocation: true"

"_PrintScavenge: true"
"_PrintGC: true"

"_PrintInlineCacheInvalidation: true"
"_PrintCodeReclamation: true"
"_PrintMethodFlushing: true"

"_PrintResourceChunkAllocation: true"

_WizardMode: true
_PrintScriptName: true
"_PrintOopAddress: true"
_StackPrintLimit: 25

"_SnapshotCode: false"

"
    _VerifyBeforeScavenge: true
    _VerifyAfterScavenge:  true
"

"shell aliases"

_PIC: true

_AddSlots: ( |
    aliases* = ( |
        x. y. z.
        run = ( _RunScriptIfFail: [ |:x1.:x2.| 'all' _RunScript ] ).
        rs = ( _ReadSnapshotIfFail: [ |:x1.:x2.| '/mem/Snap' _ReadSnapshot ] ).
        ws = ( _WriteSnapshotIfFail: [ |:x1.:x2.| '/mem/Snap' _WriteSnapshot ] ).
        cg3 = ( host configurationTable at: 'amuck' Put:
		( | frameBufferName = '/dev/cgthree0' | ) ).
	spy = (_Spy: true).
	unc = (_UseNewCompiler: true).
	unc: b = (_UseNewCompiler: b).
	bm = (benchmarks measurePerformance).
	tp = (tests primitiveMakerTest).
	lru = (_PrintLRUSweep: true).
	lru: n = (_PrintLRUSweep: n).
	pc: n = (_PrintCompilation: n).
	gc = (_GarbageCollect).
	v = (_Verify).
	f = (_Flush. 0).
	cc = ( |
	    undefinedSelector: s Type: t Delegatee: d MethodHolder: mh
	        Arguments: a = ( s _RunScript).
	| ).
        s = (_Spy: true. cc all. '/mem/Snap' ws. ui start).
	uis = (ui start).
	db = (_AddSlots: ( | debug = true |) ).
	und = (_AddSlots: ( | debug = false |) ).
        as = (_AsObject).
	ia = (inspect: _AsObject).
	ps = (prompt start).
	cd = (_SourceDir: self).
	pwd = (_SourceDir).
	dirs = (pwd).
	bg = (audio playFile: '/usr/dist/local/share/sounds/breaking_glass.au').
        runbg = ((process copySend:
	           message copy receiver: self Selector: 'bg' With: vector)
                  resume).

        useNew  = (_FirstCompiler: 'new'. _Recompiler: 'none').
	useNic  = (_FirstCompiler: 'nic'. _Recompiler: 'none').
	useBoth = (_FirstCompiler: 'nic'. _Recompiler: 'new').
    | ).
| )

"rs"
"pc:true"
"prompt start"
