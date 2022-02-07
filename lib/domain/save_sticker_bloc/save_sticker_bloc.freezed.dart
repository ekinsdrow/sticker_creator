// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_sticker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveStickerEventTearOff {
  const _$SaveStickerEventTearOff();

  Save save(
      {required int packId, required File image, required String filename}) {
    return Save(
      packId: packId,
      image: image,
      filename: filename,
    );
  }
}

/// @nodoc
const $SaveStickerEvent = _$SaveStickerEventTearOff();

/// @nodoc
mixin _$SaveStickerEvent {
  int get packId => throw _privateConstructorUsedError;
  File get image => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int packId, File image, String filename) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int packId, File image, String filename)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packId, File image, String filename)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveStickerEventCopyWith<SaveStickerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveStickerEventCopyWith<$Res> {
  factory $SaveStickerEventCopyWith(
          SaveStickerEvent value, $Res Function(SaveStickerEvent) then) =
      _$SaveStickerEventCopyWithImpl<$Res>;
  $Res call({int packId, File image, String filename});
}

/// @nodoc
class _$SaveStickerEventCopyWithImpl<$Res>
    implements $SaveStickerEventCopyWith<$Res> {
  _$SaveStickerEventCopyWithImpl(this._value, this._then);

  final SaveStickerEvent _value;
  // ignore: unused_field
  final $Res Function(SaveStickerEvent) _then;

  @override
  $Res call({
    Object? packId = freezed,
    Object? image = freezed,
    Object? filename = freezed,
  }) {
    return _then(_value.copyWith(
      packId: packId == freezed
          ? _value.packId
          : packId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SaveCopyWith<$Res> implements $SaveStickerEventCopyWith<$Res> {
  factory $SaveCopyWith(Save value, $Res Function(Save) then) =
      _$SaveCopyWithImpl<$Res>;
  @override
  $Res call({int packId, File image, String filename});
}

/// @nodoc
class _$SaveCopyWithImpl<$Res> extends _$SaveStickerEventCopyWithImpl<$Res>
    implements $SaveCopyWith<$Res> {
  _$SaveCopyWithImpl(Save _value, $Res Function(Save) _then)
      : super(_value, (v) => _then(v as Save));

  @override
  Save get _value => super._value as Save;

  @override
  $Res call({
    Object? packId = freezed,
    Object? image = freezed,
    Object? filename = freezed,
  }) {
    return _then(Save(
      packId: packId == freezed
          ? _value.packId
          : packId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Save implements Save {
  const _$Save(
      {required this.packId, required this.image, required this.filename});

  @override
  final int packId;
  @override
  final File image;
  @override
  final String filename;

  @override
  String toString() {
    return 'SaveStickerEvent.save(packId: $packId, image: $image, filename: $filename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Save &&
            (identical(other.packId, packId) || other.packId == packId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packId, image, filename);

  @JsonKey(ignore: true)
  @override
  $SaveCopyWith<Save> get copyWith =>
      _$SaveCopyWithImpl<Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int packId, File image, String filename) save,
  }) {
    return save(packId, image, filename);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int packId, File image, String filename)? save,
  }) {
    return save?.call(packId, image, filename);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int packId, File image, String filename)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(packId, image, filename);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements SaveStickerEvent {
  const factory Save(
      {required int packId,
      required File image,
      required String filename}) = _$Save;

  @override
  int get packId;
  @override
  File get image;
  @override
  String get filename;
  @override
  @JsonKey(ignore: true)
  $SaveCopyWith<Save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SaveStickerStateTearOff {
  const _$SaveStickerStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Success success({required Sticker sticker}) {
    return Success(
      sticker: sticker,
    );
  }

  Error error({required String error}) {
    return Error(
      error: error,
    );
  }
}

/// @nodoc
const $SaveStickerState = _$SaveStickerStateTearOff();

/// @nodoc
mixin _$SaveStickerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sticker sticker) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveStickerStateCopyWith<$Res> {
  factory $SaveStickerStateCopyWith(
          SaveStickerState value, $Res Function(SaveStickerState) then) =
      _$SaveStickerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveStickerStateCopyWithImpl<$Res>
    implements $SaveStickerStateCopyWith<$Res> {
  _$SaveStickerStateCopyWithImpl(this._value, this._then);

  final SaveStickerState _value;
  // ignore: unused_field
  final $Res Function(SaveStickerState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SaveStickerStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SaveStickerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sticker sticker) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SaveStickerState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$SaveStickerStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SaveStickerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sticker sticker) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SaveStickerState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({Sticker sticker});

  $StickerCopyWith<$Res> get sticker;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> extends _$SaveStickerStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? sticker = freezed,
  }) {
    return _then(Success(
      sticker: sticker == freezed
          ? _value.sticker
          : sticker // ignore: cast_nullable_to_non_nullable
              as Sticker,
    ));
  }

  @override
  $StickerCopyWith<$Res> get sticker {
    return $StickerCopyWith<$Res>(_value.sticker, (value) {
      return _then(_value.copyWith(sticker: value));
    });
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success({required this.sticker});

  @override
  final Sticker sticker;

  @override
  String toString() {
    return 'SaveStickerState.success(sticker: $sticker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success &&
            (identical(other.sticker, sticker) || other.sticker == sticker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sticker);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sticker sticker) success,
    required TResult Function(String error) error,
  }) {
    return success(sticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
  }) {
    return success?.call(sticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(sticker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements SaveStickerState {
  const factory Success({required Sticker sticker}) = _$Success;

  Sticker get sticker;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$SaveStickerStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SaveStickerState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Sticker sticker) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Sticker sticker)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements SaveStickerState {
  const factory Error({required String error}) = _$Error;

  String get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
