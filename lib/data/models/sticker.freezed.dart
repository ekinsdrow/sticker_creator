// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
class _$StickerTearOff {
  const _$StickerTearOff();

  _Sticker call({required int id, required String path, required int packId}) {
    return _Sticker(
      id: id,
      path: path,
      packId: packId,
    );
  }

  Sticker fromJson(Map<String, Object?> json) {
    return Sticker.fromJson(json);
  }
}

/// @nodoc
const $Sticker = _$StickerTearOff();

/// @nodoc
mixin _$Sticker {
  int get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  int get packId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res>;
  $Res call({int id, String path, int packId});
}

/// @nodoc
class _$StickerCopyWithImpl<$Res> implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  final Sticker _value;
  // ignore: unused_field
  final $Res Function(Sticker) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? packId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      packId: packId == freezed
          ? _value.packId
          : packId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StickerCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$StickerCopyWith(_Sticker value, $Res Function(_Sticker) then) =
      __$StickerCopyWithImpl<$Res>;
  @override
  $Res call({int id, String path, int packId});
}

/// @nodoc
class __$StickerCopyWithImpl<$Res> extends _$StickerCopyWithImpl<$Res>
    implements _$StickerCopyWith<$Res> {
  __$StickerCopyWithImpl(_Sticker _value, $Res Function(_Sticker) _then)
      : super(_value, (v) => _then(v as _Sticker));

  @override
  _Sticker get _value => super._value as _Sticker;

  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? packId = freezed,
  }) {
    return _then(_Sticker(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      packId: packId == freezed
          ? _value.packId
          : packId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sticker implements _Sticker {
  _$_Sticker({required this.id, required this.path, required this.packId});

  factory _$_Sticker.fromJson(Map<String, dynamic> json) =>
      _$$_StickerFromJson(json);

  @override
  final int id;
  @override
  final String path;
  @override
  final int packId;

  @override
  String toString() {
    return 'Sticker(id: $id, path: $path, packId: $packId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sticker &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.packId, packId) || other.packId == packId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, path, packId);

  @JsonKey(ignore: true)
  @override
  _$StickerCopyWith<_Sticker> get copyWith =>
      __$StickerCopyWithImpl<_Sticker>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StickerToJson(this);
  }
}

abstract class _Sticker implements Sticker {
  factory _Sticker(
      {required int id,
      required String path,
      required int packId}) = _$_Sticker;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$_Sticker.fromJson;

  @override
  int get id;
  @override
  String get path;
  @override
  int get packId;
  @override
  @JsonKey(ignore: true)
  _$StickerCopyWith<_Sticker> get copyWith =>
      throw _privateConstructorUsedError;
}
