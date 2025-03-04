// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;

/// 卡顿检测
class NativePerfFreezeMonitor {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativePerfFreezeMonitor(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativePerfFreezeMonitor.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void uiThreadStacktrace(
    ffi.Pointer<TraceInfo> info,
    int length,
  ) {
    return _uiThreadStacktrace(
      info,
      length,
    );
  }

  late final _uiThreadStacktracePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<TraceInfo>, ffi.Uint32)>>('uiThreadStacktrace');
  late final _uiThreadStacktrace = _uiThreadStacktracePtr
      .asFunction<void Function(ffi.Pointer<TraceInfo>, int)>();
}

final class StacktraceInfo extends ffi.Struct {
  external Dl_info info;

  @ffi.UintPtr()
  external int address;

  @ffi.UintPtr()
  external int isolate_start;

  @ffi.UintPtr()
  external int vm_start;
}

typedef Dl_info = dl_info;

final class dl_info extends ffi.Struct {
  external ffi.Pointer<ffi.Char> dli_fname;

  external ffi.Pointer<ffi.Void> dli_fbase;

  external ffi.Pointer<ffi.Char> dli_sname;

  external ffi.Pointer<ffi.Void> dli_saddr;
}

typedef TraceInfo = StacktraceInfo;
