// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthResponseModelCopyWith<AuthResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseModelCopyWith<$Res> {
  factory $AuthResponseModelCopyWith(
          AuthResponseModel value, $Res Function(AuthResponseModel) then) =
      _$AuthResponseModelCopyWithImpl<$Res>;
  $Res call({int id, String token});
}

/// @nodoc
class _$AuthResponseModelCopyWithImpl<$Res>
    implements $AuthResponseModelCopyWith<$Res> {
  _$AuthResponseModelCopyWithImpl(this._value, this._then);

  final AuthResponseModel _value;
  // ignore: unused_field
  final $Res Function(AuthResponseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthResponseModelCopyWith<$Res>
    implements $AuthResponseModelCopyWith<$Res> {
  factory _$$_AuthResponseModelCopyWith(_$_AuthResponseModel value,
          $Res Function(_$_AuthResponseModel) then) =
      __$$_AuthResponseModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String token});
}

/// @nodoc
class __$$_AuthResponseModelCopyWithImpl<$Res>
    extends _$AuthResponseModelCopyWithImpl<$Res>
    implements _$$_AuthResponseModelCopyWith<$Res> {
  __$$_AuthResponseModelCopyWithImpl(
      _$_AuthResponseModel _value, $Res Function(_$_AuthResponseModel) _then)
      : super(_value, (v) => _then(v as _$_AuthResponseModel));

  @override
  _$_AuthResponseModel get _value => super._value as _$_AuthResponseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AuthResponseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthResponseModel implements _AuthResponseModel {
  const _$_AuthResponseModel({required this.id, required this.token});

  @override
  final int id;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthResponseModel(id: $id, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_AuthResponseModelCopyWith<_$_AuthResponseModel> get copyWith =>
      __$$_AuthResponseModelCopyWithImpl<_$_AuthResponseModel>(
          this, _$identity);
}

abstract class _AuthResponseModel implements AuthResponseModel {
  const factory _AuthResponseModel(
      {required final int id,
      required final String token}) = _$_AuthResponseModel;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseModelCopyWith<_$_AuthResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
