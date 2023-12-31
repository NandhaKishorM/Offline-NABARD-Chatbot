// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int llamasherpa_start(
    ffi.Pointer<ffi.Char> model_path,
    ffi.Pointer<ffi.Char> _prompt,
    ffi.Pointer<ffi.Char> _antiprompt,
    ffi.Pointer<show_output_cb> show_output,
  ) {
    return _llamasherpa_start(
      model_path,
      _prompt,
      _antiprompt,
      show_output,
    );
  }

  late final _llamasherpa_startPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<ffi.Char>,
              ffi.Pointer<show_output_cb>)>>('llamasherpa_start');
  late final _llamasherpa_start = _llamasherpa_startPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<ffi.Char>,
          ffi.Pointer<ffi.Char>, ffi.Pointer<show_output_cb>)>();

  int llamasherpa_continue(
    ffi.Pointer<ffi.Char> input,
    ffi.Pointer<show_output_cb> show_output,
  ) {
    return _llamasherpa_continue(
      input,
      show_output,
    );
  }

  late final _llamasherpa_continuePtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Pointer<ffi.Char>,
              ffi.Pointer<show_output_cb>)>>('llamasherpa_continue');
  late final _llamasherpa_continue = _llamasherpa_continuePtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, ffi.Pointer<show_output_cb>)>();

  void llamasherpa_exit() {
    return _llamasherpa_exit();
  }

  late final _llamasherpa_exitPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('llamasherpa_exit');
  late final _llamasherpa_exit =
      _llamasherpa_exitPtr.asFunction<void Function()>();
}

typedef show_output_cb
    = ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>;
