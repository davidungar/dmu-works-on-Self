/* Sun-$Revision: 30.10 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# ifdef INTERFACE_PRAGMAS
  # pragma interface
# endif


inline oop memOopClass::gc_mark() {
  if (is_gc_marked())  return oop(gc_forwardee());
  // A slot can be reached by two walkers in the same mark phase -- e.g.
  // the frame walk's outgoing-argument coverage and a preservedArray
  // registered over the same stack words (sendDesc::sendMessage).  After
  // the first visit the slot holds the object-table token; the second
  // visitor must keep it rather than re-adding a non-heap address.
  // -- claude & dmu 7/2026
  if (!Memory->is_obj_heap((oop*) addr())) {
    // This branch is rare (only double-visited slots reach it), so the
    // object-table membership walk is affordable. Anything else here is
    // corruption; fail loudly in all builds rather than let the unmark
    // phase misread it as a token later.
    if (Memory->object_table->is_oTableEntry(addr()))
      return oop(this);
    fatal1("gc_mark: mem-tagged non-heap value %#lx is not a mark token",
           this);
  }
  return oop(Memory->object_table->add(this));
}

inline oop memOopClass::gc_mark_derived(oop* ptr, int32 offset) {
  assert(!Memory->is_heap(ptr), "should have derived pointers only on stack");
  if (offset != 0) {
    Memory->object_table->record_derivation((memOop*) ptr, offset);
  }
  return gc_mark();
}

inline oop memOopClass::gc_unmark() {
  // Mirror of gc_mark's double-visit tolerance: a slot two walkers cover
  // has already been restored to a (relocated) heap oop by the first
  // unmark visit; genuine tokens point into the object table's C-heap
  // area, never into the object heap.  -- claude & dmu 7/2026
  if (Memory->is_obj_heap((oop*) addr()))  return oop(this);
  return oop(as_oTableEntry()->obj);
}

inline oop memOopClass::gc_unmark_derived(oop* ptr) {
  assert(!Memory->is_heap(ptr), "should have derived pointers only on stack");
  memOop p = memOop(gc_unmark());
  p = Memory->object_table->restore_derivation(p, (memOop*) ptr);
  return oop(p);
}

inline smi memOopClass::identity_hash() {
  // don't clean up the addr()->_mark below to mark(), 
  // since hash_markOop can modify its argument
  return hash_markOop(addr()->_mark);
}

