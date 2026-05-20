/* Sun-$Revision: 30.8 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif


// if you change this you must also change the checks in 
// universe::check_sizes_for_snapshot
#define APPLY_TO_SPACE_SIZES(template) \
        template(eden_size)            \
        template(surv_size)            \
        template(old_size)             \
        template(code_size)            \
        template(pic_size)             \
        template(deps_size)            \
        template(debug_size)           \
        
#define SIZE_DECLARATION_TEMPLATE(s) smi s;

class spaceSizes {
public:
  APPLY_TO_SPACE_SIZES(SIZE_DECLARATION_TEMPLATE)
  void set_from_defaults();
  void cleanup();
  // If ForceFrequentScavengesViaSmallNewSpace is set, clamp eden_size/surv_size
  // to 1/10 of the defaults so scavenges happen far more often.
  // -- dmu 5/26
  void apply_force_frequent_scavenges_clamp();
};

oop get_current_space_sizes_prim(oop ignored, slotsOop proto, void *FH);
oop get_default_space_sizes_prim(oop);

#if TARGET_IS_64BIT
// On 64-bit, use a much larger heap address space.
// The 512MB boundary was a SPARCstation constraint that doesn't apply here.

constexpr long long MB = 1024LL * 1024;
constexpr long long GB = 1024LL * MB;

#if defined(__APPLE__) && defined(__aarch64__) && defined(TARGET_IS_EMBEDDED)
// visionOS/iOS ARM64: app processes get a much smaller usable virtual address
// space than macOS (no entitlement for high-address allocations), so the 32GB
// heap / 64GB code-zone layout used on macOS fails MAP_FIXED.  We previously
// used 8GB heap / 10GB code, but those addresses collide with framework
// images that UIKit lazy-loads via SoftLinking._sl_dlopen — and MAP_FIXED
// silently overwrites whatever is mapped there, corrupting the system
// framework's class metadata (manifests as a PAC failure in libobjc's
// readClass).  24GB heap base / 2GB heap budget puts code at 26GB, well
// above any ASLR-placed framework images. If MAP_FIXED still fails on a
// given OS version, inspect with vmmap on the device and raise/lower again.
// -- claude & dmu May 2026
constexpr long long HeapBase  = 24 * GB;
constexpr long long HeapMaxGB =  2;
constexpr long long CodeBase  = HeapBase + HeapMaxGB * GB;
#elif defined(__APPLE__) && defined(__aarch64__)
// ARM64 macOS: heap at 32GB (above system libraries at ~8GB), 32GB heap
// budget, code zones at 64GB. No JIT on ARM64 so code zones are minimal,
// but addresses must be valid.
constexpr long long HeapBase  = 32 * GB;
constexpr long long HeapMaxGB = 32;
constexpr long long CodeBase  = HeapBase + HeapMaxGB * GB;
#else
// 64-bit fallback (Linux, NetBSD, FreeBSD, amd64 macOS).  Heap is at 64MB
// and code at 16GB — not on round-GB boundaries, so HeapMaxGB doesn't fit.
constexpr long long HeapBase = 64 * MB;
constexpr long long CodeBase = 16 * GB;
#endif

// Layout invariant: heap mustn't grow into the code zone.
static_assert(CodeBase > HeapBase,
              "code zone must be above heap so heap expansion can't collide");

// Sub-zone sizes inside the code block (MB) — the layout's primary data.
constexpr long long NMethodMaxMB     = 58;
constexpr long long StubsMaxMB       = 16;
constexpr long long DepsMaxMB        = 16;
constexpr long long ScopesMaxMB      = 16;
constexpr long long ZoneIDMaxMB      =  2;
constexpr long long CountStubIDMaxMB =  2;
constexpr long long UseCountMaxMB    =  2;

// Offsets from CodeBase are running sums of the sizes above.
constexpr long long NMethodOff     = 0;
constexpr long long StubsOff       = NMethodOff     + NMethodMaxMB;
constexpr long long DepsOff        = StubsOff       + StubsMaxMB;
constexpr long long ScopesOff      = DepsOff        + DepsMaxMB;
constexpr long long ZoneIDOff      = ScopesOff      + ScopesMaxMB;
constexpr long long CountStubIDOff = ZoneIDOff      + ZoneIDMaxMB;
constexpr long long UseCountOff    = CountStubIDOff + CountStubIDMaxMB;
constexpr long long EndOff         = UseCountOff    + UseCountMaxMB;

const caddr_t HeapStart        = (caddr_t)(HeapBase);
const caddr_t NMethodStart     = (caddr_t)(CodeBase + NMethodOff     * MB);
const caddr_t StubsStart       = (caddr_t)(CodeBase + StubsOff       * MB);
const caddr_t DepsStart        = (caddr_t)(CodeBase + DepsOff        * MB);
const caddr_t ScopesStart      = (caddr_t)(CodeBase + ScopesOff      * MB);
const caddr_t ZoneIDStart      = (caddr_t)(CodeBase + ZoneIDOff      * MB);
const caddr_t CountStubIDStart = (caddr_t)(CodeBase + CountStubIDOff * MB);
const caddr_t UseCountStart    = (caddr_t)(CodeBase + UseCountOff    * MB);
const caddr_t AddrSpaceEnd     = (caddr_t)(CodeBase + EndOff         * MB);

#else
// mustn't cross the 512Mb boundary; can't map in there on SS-1s and 2s
const caddr_t HeapStart=        (caddr_t)(64*M);
const caddr_t NMethodStart=     (caddr_t)(400*M);
const caddr_t StubsStart=       (caddr_t)(458*M);
const caddr_t DepsStart=        (caddr_t)(474*M);
const caddr_t ScopesStart=      (caddr_t)(490*M);
const caddr_t ZoneIDStart=      (caddr_t)(506*M);
const caddr_t CountStubIDStart= (caddr_t)(508*M);
const caddr_t UseCountStart=    (caddr_t)(510*M);
const caddr_t AddrSpaceEnd=     (caddr_t)(512*M);
#endif

extern unsigned long MaxHeapSize;
extern unsigned long MaxNMethodSize;
extern unsigned long MaxStubsSize;
extern unsigned long MaxDepsSize;
extern unsigned long MaxScopesSize;
extern unsigned long MaxZoneIDSize;
extern unsigned long MaxCountStubIDSize;
extern unsigned long MaxUseCountSize;

