// self_vm.h - public C entry point for embedding the Self VM
//
// When OurSelf64 is built with -DSELF_AS_LIBRARY=ON (the default on
// visionOS/iOS/tvOS), the VM produces libSelf.a instead of an executable.
// A host app (e.g. SpatialSelf in ~/code/separatingForInlining) links the
// library and invokes the VM through this header.
//
// Typical sequence on the host:
//   self_vm_set_io_fds(stdinReadFD, stdoutWriteFD, stderrWriteFD);
//   self_vm_main(argc, argv);   // does not return under normal operation
//
// -- claude & dmu May 2026

#ifndef SELF_VM_H
#define SELF_VM_H

#ifdef __cplusplus
extern "C" {
#endif

// Replaces STDIN/STDOUT/STDERR with caller-supplied file descriptors before
// the VM does any stdio. Pass -1 to leave a stream untouched. Must be called
// before self_vm_main().
void self_vm_set_io_fds(int stdin_fd, int stdout_fd, int stderr_fd);

// Entry point. Same contract as main(): argv[0] is the program name; the
// VM consumes its own flags from argv and treats remaining arguments as
// Self source files / snapshot. Does not return during normal operation.
int self_vm_main(int argc, char *argv[]);

#ifdef __cplusplus
}
#endif

#endif // SELF_VM_H
