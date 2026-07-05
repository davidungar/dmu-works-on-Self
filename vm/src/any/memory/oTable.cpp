/* Sun-$Revision: 30.8 $ */

/* Copyright 1992-2012 AUTHORS.
   See the LICENSE file for license information. */

# pragma implementation  "oTable.hh"
# pragma implementation  "oTable_inline.hh"

# include "_oTable.cpp.incl"

void* oTableObj::operator new(size_t size){ 
  assert(Memory->object_table, "object_table must exist");
  return Memory->object_table->resource_area.allocate_bytes(size);
}

void oTable::grow() {
  if (!bottom) {
#  if GENERATE_DEBUGGING_AIDS
    if (CheckAssertions) {
     // Since resource marks can not be used on this separate resource area
     // the nesting level is incremented manually to prevent warnings.
     resource_area.nesting++;
    }
#   endif
   bottom = new oTableBuffer; 
   point.buffer = bottom; 
   offsets = NULL; 
 } else {
   point.buffer->next = new oTableBuffer;
   point.buffer = point.buffer->next;
   point.index = 0;
 }
}

void oTable::gc_mark_contents() {
  current.buffer= bottom;  current.index= 0;
  gc_mark_rest();
}

void oTable::gc_mark_rest() {
  for (; current.buffer;
         current.buffer= current.buffer->next, current.index= 0) {
    for (; current.index < object_table_size; current.index++) {
      if (   current.buffer == point.buffer
          && current.index == point.index) return;
      oopsOop p = (oopsOop) current.buffer->entries[current.index].obj;
      // TEMPORARY diagnostic guard (REVERT ME -- goes with the vm64
      // SCAV/MARK-BAD staleness diagnostics): a stale oop that slips into
      // the table has a garbage map slot; dispatching through it crashes.
      // Skip such entries so the full GC can complete and report them.
      // -- claude & dmu 7/2026
      { mapOop __mo = p->addr()->_map;
        void*  __vt = (__mo->is_mem()
                       && Memory->is_obj_heap((oop*) memOop(__mo)->addr()))
                      ? *(void**) __mo->map_addr() : NULL;
        if (__vt == NULL || Memory->is_obj_heap((oop*) __vt)) {
          lprintf("OTABLE-BAD-ENTRY obj %#lx map-slot %#lx\n",
                  (unsigned long) p, (unsigned long) __mo);
          continue;
        }
      }
#     if GENERATE_DEBUGGING_AIDS
        if (CheckAssertions) {
          LOG_EVENT2("Marking map of 0x%x index %d", p, current.index);
        }
#     endif
      p->map()->gc_mark_contents(p);
#     if GENERATE_DEBUGGING_AIDS
        if (CheckAssertions) {
          LOG_EVENT1("Marking referents of 0x%x", p);
        }
#     endif
      p->gc_mark_referents();
    }
  }
}

bool oTable::contains(memOopClass* p) {
  for (oTableBuffer* b = bottom; b; b = b->next) {
    if (b == point.buffer) {
      if ((oTableEntry*)p >= &b->entries[0] && 
          (oTableEntry*)p < &b->entries[point.index]) {
        return true;
      }
    } else if ((oTableEntry*)p >= &b->entries[0] && 
               (oTableEntry*)p < &b->entries[object_table_size]) {
        return true;
      }
  }
  return false;
}
      
