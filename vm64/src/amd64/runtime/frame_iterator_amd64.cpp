# if  TARGET_ARCH == I386_ARCH || TARGET_ARCH == X86_64_ARCH || TARGET_ARCH == AARCH64_ARCH
/* Sun-$Revision: 1.4 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# pragma implementation "frame_iterator_amd64.hh"

# include "_frame_iterator_amd64.cpp.incl"


void FrameIterator::do_vm_frame() {
  assert(!processSemaphore, "oopClosure will not be called on resultOop in HandleReturnTrap");
# if TARGET_ARCH == I386_ARCH
  assert(SaveOutgoingArgumentsOfPatchedFrames, "always true for I386");
# endif
  if (!SaveOutgoingArgumentsOfPatchedFrames)
    return;
  // KNOWN GAP (aarch64, flag off): while a compiled send is in the VM doing
  // its lookup, the in-flight receiver and arguments live in the sender's
  // outgoing area with no GC coverage -- the callee frame that would cover
  // them via do_incoming_arguments does not exist yet, so a scavenge during
  // the lookup hands the interpreted callee stale oops at birth (richards'
  // results-check failure).  An attempt to walk them here regardless of the
  // flag fixed that but crashed on other in-flight shapes (non-send VM
  // calls, layouts outgoing_arg_count misjudges) even with the sendDesc-
  // relocation validation below; enabling this safely needs the compiler to
  // record in-flight send geometry rather than heuristics over parked pcs.
  do_incoming_arguments_of_vm_frame_called_from_self();
}


void FrameIterator::do_incoming_arguments_of_vm_frame_called_from_self() {
# if !defined(FAST_COMPILER) && !defined(SIC_COMPILER)
  // Interpreter-only: no compiled frames exist, and the send-site
  // classification below reads JIT-only nmethod state.
  return;
# else
  frame* s = f->sender();
  // Compiled senders only: an interpreted sender's return pc is VM code, not
  // a sendDesc, so send_desc()/outgoing_arg_count would read garbage -- and
  // its in-flight send values live in walked interpreter state anyway.
  if (s == NULL  ||  !s->is_compiled_self_frame())
    return;
  // Trust only genuine send sites: compiled code also calls the VM from
  // non-send positions (allocation, stack checks), where interpreting the
  // return pc as a sendDesc reads garbage.  The nmethod registers each real
  // sendDesc as a relocation entry; require the parked pc to be one of them.
  { nmethod* nm = s->code();
    if (nm == NULL) return;
    sendDesc* sd = s->send_desc();
    bool genuine = false;
    for (addrDesc* l = nm->locs(), *lend = nm->locsEnd(); l < lend; l++)
      if (l->isSendDesc() && l->asSendDesc(nm) == sd) { genuine = true; break; }
    if (!genuine) return;
  }
  // hit the outgoing args of the self frame in case it is later patched
  // (when a frame is patched we grab its outgoing args)
  fint n = s->outgoing_arg_count(f);
  for (fint i = 0;  i < n + 1 /*rcvr*/;  ++i)
    oop_closure->do_oop(
      f->location_addr_of_incoming_argument(LocationOfSavedOutgoingArgInSendee(i-1), NULL));
# endif // !FAST_COMPILER && !SIC_COMPILER
}


# if defined(FAST_COMPILER) || defined(SIC_COMPILER)
            
  void FrameIterator::do_incoming_arguments() {
    fint nargs = nm->incoming_arg_count();
    oop* p = f->first_incoming_arg_addr() - 1 /* rcvr */;
    for (fint i = -1 /* rcvr */;  i < nargs;  ++i, ++p) {
      assert(check_for_overwriting_patched_frame_saved_outgoing_args(p, i), "");
      oop_closure->do_oop(p);
    }
  }


  void FrameIterator::do_compiled() {
    nm = f->code();

    do_incoming_arguments();
    do_memory_locals();
    do_patched_frame_saved_outgoing_args();
    do_outgoing_arguments();
  }


  // sendDesc::arg_count() reads the selector oop; during the full-GC mark
  // phase's frame walk that word is already an object-table token (the
  // zone is marked before the processes), so resolve the token back to the
  // original object -- its bytes are intact until compaction -- before
  // counting.  During unmark the zone is restored before the frame walk,
  // and during a scavenge from-space originals keep their contents, so the
  // direct read is safe in those phases.  The mark and unmark walks of a
  // frame must produce the same count, or tokens would be left behind in
  // stack slots.  -- claude & dmu 7/2026
  static fint GC_safe_selector_arg_count(sendDesc* sd) {
    oop sel = oop(sd->selector());
    if (!sel->is_mem()) return -1;
    if (!Memory->is_obj_heap((oop*) memOop(sel)->addr()))
      sel = memOop(sel)->as_oTableEntry()->obj;    // mark-phase token
    return stringOop(sel)->arg_count();
  }

  // frame::outgoing_arg_count(), but with the GC-phase-safe selector read.
  static fint GC_safe_outgoing_arg_count(sendDesc* sd) {
    if (isPerformLookupType(sd->lookupType()))
      return -1;   // dynamic arity: the walk cannot size the outgoing area
    { char* target = (char*) sd->jump_addr();
      if (target == (char*) Memory->code->trapdoors->SendMessage_stub_td()
       || target == (char*) Memory->code->trapdoors->SendDIMessage_stub_td())
        return GC_safe_selector_arg_count(sd); }
    if (sd->isPrimCall()) {
      PrimDesc* pd = getPrimDescOfFirstInstruction(sd->jump_addr(), true);
      if (pd == NULL) return GC_safe_selector_arg_count(sd);
      return pd->arg_count();
    }
    return GC_safe_selector_arg_count(sd);
  }

  // A compiled frame parked at a send (or prim call) whose callee is NOT
  // compiled Self code -- a VM frame (prim, lookup, the tiered
  // compiled-to-interpreter bridge) or an interpreted activation -- holds
  // the in-flight receiver and arguments in its own outgoing area with no
  // other GC coverage: a compiled callee walks those words as its incoming
  // args, but a VM or interpreted callee does not (the interpreter copies
  // them and the GC walks only the copies).  Left unwalked they go stale at
  // the first scavenge, and later readers -- save_outgoing_arguments() when
  // a return trap patches this frame, the conversion's send restart --
  // resurrect the dead pointers as live objects.  (This was the tiered
  // world-build corruption: the stale to:By:Do: block literals.)  Walk them
  // here, but only at parked pcs the nmethod registers as genuine send or
  // prim-call sites: compiled code also calls the VM from non-send
  // positions where interpreting the return pc as a sendDesc reads garbage.
  // -- claude & dmu 7/2026
  void FrameIterator::do_outgoing_arguments() {
    if (SaveOutgoingArgumentsOfPatchedFrames)
      return;      // i386: these words are covered via do_vm_frame instead
    extern frame* frames_do_callee;
    frame* callee = frames_do_callee;
    if (callee == NULL) return;   // not inside a whole-stack GC walk
    if (callee->is_compiled_self_frame())
      return;      // covered as the callee's incoming arguments
    sendDesc* sd = f->send_desc();
    if (sd == NULL) return;
    bool genuine = false;
    for (addrDesc* l = nm->locs(), *lend = nm->locsEnd(); l < lend; l++)
      if ((l->isSendDesc()  && l->asSendDesc(nm)          == sd)
      ||  (l->isPrimitive() && l->asPrimitiveSendDesc(nm) == sd)) {
        genuine = true;
        break;
      }
    if (!genuine) return;
    fint n = GC_safe_outgoing_arg_count(sd);
    if (n < 0) return;
    oop* p = (oop*) f + ircvr_offset;
    for (fint i = 0;  i < n + 1 /* rcvr */;  ++i, ++p)
      oop_closure->do_oop(p);
  }
  
  
  void FrameIterator::do_memory_locals() {
    fint n = min(nm->number_of_memory_locals(),  sizeof(RegisterString) * BitsPerByte);
    oop* p = f->first_local_addr();
    fint i;
    for (i = 0;  i < n;  ++i, --p) {
      assert(check_for_overwriting_patched_frame_saved_outgoing_args(p, i), "");

           if ( isSet(mask, i) )  oop_closure->do_oop(p);
      else if ( zap            )  *p = badOop;
    }      
    # if GENERATE_DEBUGGING_AIDS
      if (CheckAssertions)
        for ( fint j = i; j  <  sizeof(RegisterString) * BitsPerByte;  ++j)  {
          assert( !isSet(mask, j), "nonsensical bit set in mask");
        }
    # endif
    
    for (  ;  i < nm->number_of_memory_locals();  ++i, --p ) {
      assert(check_for_overwriting_patched_frame_saved_outgoing_args(p, i), "");
      oop_closure->do_oop(p);
    }
  }
  

  bool FrameIterator::check_for_overwriting_patched_frame_saved_outgoing_args(oop* p, fint idx) {
    if (!f->is_patched())                                         return true;
    if (p != (oop*)f->patched_frame_saved_outgoing_args_addr(nm)) return true;
    WizardMode = true;
    lprintf("****** about to die at index %d, frame = 0x%x, next_frame = 0x%x, frame size = 0x%x (%d)\n",
            idx, f, f->sender(), f->frame_size(), f->frame_size());
    if (nm != f->code()) {
      lprintf("****** nm (0x%x) != f->code() (0x%x)\n", nm, f->code());
      nm = f->code();
    }
    if (!GCInProgress && !ScavengeInProgress) { // cannot do these when the heap is all weird
      lprintf("nmethod of offending frame is:\n");
      nm->verify();
      nm->print(); 
      lprintf("\n\n\ncode: \n");
      nm->printCode();
    }
    return false;
  }

  
# endif // either compiler
# endif // TARGET_ARCH == I386_ARCH || TARGET_ARCH == X86_64_ARCH || TARGET_ARCH == AARCH64_ARCH
