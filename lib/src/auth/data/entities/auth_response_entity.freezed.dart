// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponseEntity _$AuthResponseEntityFromJson(Map<String, dynamic> json) {
  return _AuthResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseEntityCopyWith<AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseEntityCopyWith<$Res> {
  factory $AuthResponseEntityCopyWith(
          AuthResponseEntity value, $Res Function(AuthResponseEntity) then) =
      _$AuthResponseEntityCopyWithImpl<$Res>;
  $Res call({int? id, String? token});
}

/// @nodoc
class _$AuthResponseEntityCopyWithImpl<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  _$AuthResponseEntityCopyWithImpl(this._value, this._then);

  final AuthResponseEntity _value;
  // ignore: unused_field
  final $Res Function(AuthResponseEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthResponseEntityCopyWith<$Res>
    implements $AuthResponseEntityCopyWith<$Res> {
  factory _$$_AuthResponseEntityCopyWith(_$_AuthResponseEntity value,
          $Res Function(_$_AuthResponseEntity) then) =
      __$$_AuthResponseEntityCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? token});
}

/// @nodoc
class __$$_AuthResponseEntityCopyWithImpl<$Res>
    extends _$AuthResponseEntityCopyWithImpl<$Res>
    implements _$$_AuthResponseEntityCopyWith<$Res> {
  __$$_AuthResponseEntityCopyWithImpl(
      _$_AuthResponseEntity _value, $Res Function(_$_AuthResponseEntity) _then)
      : super(_value, (v) => _then(v as _$_AuthResponseEntity));

  @override
  _$_AuthResponseEntity get _value => super._value as _$_AuthResponseEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AuthResponseEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponseEntity extends _AuthResponseEntity {
  const _$_AuthResponseEntity({this.id, this.token}) : super._();

  factory _$_AuthResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseEntityFromJson(json);

  @override
  final int? id;
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthResponseEntity(id: $id, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseEntityCopyWith<_$_AuthResponseEntity> get copyWith =>
      __$$_AuthResponseEntityCopyWithImpl<_$_AuthResponseEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseEntityToJson(this);
  }
}

abstract class _AuthResponseEntity extends AuthResponseEntity {
  const factory _AuthResponseEntity({final int? id, final String? token}) =
      _$_AuthResponseEntity;
  const _AuthResponseEntity._() : super._();

  factory _AuthResponseEntity.fromJson(Map<String, dynamic> json) =
      _$_AuthResponseEntity.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseEntityCopyWith<_$_AuthResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
