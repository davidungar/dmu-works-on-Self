/* Sun-$Revision: 30.8 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# pragma implementation "frame_iterator.hh"

# include "_frame_iterator.cpp.incl"


FrameIterator::FrameIterator( frame* _f, RegisterLocator* _rl, bool z, RegisterString m, bool r, OopClosure* c ) {
  f = _f; rl = _rl;  zap = z;  mask = m;  reinit = r;  oop_closure = c;
  do_all();
}


void FrameIterator::do_all() {
       if (f->is_interpreted_self_frame())  do_interpreted();
  else if (f->is_compiled_self_frame())     do_compiled();
  else                                      do_vm_frame();
}
  
  
void FrameIterator::do_interpreted() {
  // During a full-GC mark / unmark / switch_pointers frame walk, interpreters
  // are visited exactly once via the authoritative per-process active_interp_list
  // (see Process::gc_mark_contents et al.). Processing them here too would
  // double-visit -- fatal for the destructive mark template (DERIVED_MARK_TEMPLATE
  // asserts each location is seen once). The C-frame-chain walk is unreliable for
  // interps anyway, so the list is the sole authority for those phases. Scavenge
  // does not set this flag; it is idempotent and stays frame-walk + list.
  // -- claude & dmu 5/2026
  extern bool gc_walks_interps_via_list;
  if (gc_walks_interps_via_list) return;
  interpreter* interp = f->get_interpreter();
  // Never build an iterator on a NULL interpreter: do_all() entered here because
  // is_interpreted_self_frame() (an earlier get_interpreter() call) was non-NULL,
  // but if this lookup disagrees we would iterate &interp->mi._map_oop == 0x20 and
  // crash the scavenger. A NULL here means no live activation to walk. Belt to the
  // find_interpreter_for_frame() fix. -- claude & dmu 5/2026
  if (interp == NULL) return;
  InterpreterIterator ii(interp, oop_closure, zap, reinit);
}


# if !(defined(FAST_COMPILER) || defined(SIC_COMPILER))
  void FrameIterator::do_compiled() { ShouldNotReachHere(); }
# endif

void FrameIterator::do_patched_frame_saved_outgoing_args() {
# if TARGET_ARCH != AARCH64_ARCH
  // aarch64 saves the outgoing args at patch time even though the flag is
  // false (no asm glue does it); the slot must stay GC-visible
  if ( !SaveOutgoingArgumentsOfPatchedFrames )
    return;
# endif
  if ( f->is_patched() ) {
    oop* p = (oop*)f->patched_frame_saved_outgoing_args_addr();
    oop_closure->do_oop(p);
  }
}
