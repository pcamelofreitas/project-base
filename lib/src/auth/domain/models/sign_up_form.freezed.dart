// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpForm {
  FormField<String> get email => throw _privateConstructorUsedError;
  FormField<String> get password => throw _privateConstructorUsedError;
  FormField<String> get confirmPassword => throw _privateConstructorUsedError;
  FormField<String> get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormCopyWith<SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormCopyWith<$Res> {
  factory $SignUpFormCopyWith(
          SignUpForm value, $Res Function(SignUpForm) then) =
      _$SignUpFormCopyWithImpl<$Res>;
  $Res call(
      {FormField<String> email,
      FormField<String> password,
      FormField<String> confirmPassword,
      FormField<String> name});

  $FormFieldCopyWith<String, $Res> get email;
  $FormFieldCopyWith<String, $Res> get password;
  $FormFieldCopyWith<String, $Res> get confirmPassword;
  $FormFieldCopyWith<String, $Res> get name;
}

/// @nodoc
class _$SignUpFormCopyWithImpl<$Res> implements $SignUpFormCopyWith<$Res> {
  _$SignUpFormCopyWithImpl(this._value, this._then);

  final SignUpForm _value;
  // ignore: unused_field
  final $Res Function(SignUpForm) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }

  @override
  $FormFieldCopyWith<String, $Res> get email {
    return $FormFieldCopyWith<String, $Res>(_value.email, (value) {
      return _then(_value.copyWith(email: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get password {
    return $FormFieldCopyWith<String, $Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get confirmPassword {
    return $FormFieldCopyWith<String, $Res>(_value.confirmPassword, (value) {
      return _then(_value.copyWith(confirmPassword: value));
    });
  }

  @override
  $FormFieldCopyWith<String, $Res> get name {
    return $FormFieldCopyWith<String, $Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignUpFormCopyWith<$Res>
    implements $SignUpFormCopyWith<$Res> {
  factory _$$_SignUpFormCopyWith(
          _$_SignUpForm value, $Res Function(_$_SignUpForm) then) =
      __$$_SignUpFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormField<String> email,
      FormField<String> password,
      FormField<String> confirmPassword,
      FormField<String> name});

  @override
  $FormFieldCopyWith<String, $Res> get email;
  @override
  $FormFieldCopyWith<String, $Res> get password;
  @override
  $FormFieldCopyWith<String, $Res> get confirmPassword;
  @override
  $FormFieldCopyWith<String, $Res> get name;
}

/// @nodoc
class __$$_SignUpFormCopyWithImpl<$Res> extends _$SignUpFormCopyWithImpl<$Res>
    implements _$$_SignUpFormCopyWith<$Res> {
  __$$_SignUpFormCopyWithImpl(
      _$_SignUpForm _value, $Res Function(_$_SignUpForm) _then)
      : super(_value, (v) => _then(v as _$_SignUpForm));

  @override
  _$_SignUpForm get _value => super._value as _$_SignUpForm;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SignUpForm(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FormField<String>,
    ));
  }
}

/// @nodoc

class _$_SignUpForm extends _SignUpForm {
  const _$_SignUpForm(
      {this.email = const FormField<String>(name: 'email'),
      this.password = const FormField<String>(name: 'password'),
      this.confirmPassword = const FormField<String>(name: 'confirmPassword'),
      this.name = const FormField<String>(name: 'name')})
      : super._();

  @override
  @JsonKey()
  final FormField<String> email;
  @override
  @JsonKey()
  final FormField<String> password;
  @override
  @JsonKey()
  final FormField<String> confirmPassword;
  @override
  @JsonKey()
  final FormField<String> name;

  @override
  String toString() {
    return 'SignUpForm(email: $email, password: $password, confirmPassword: $confirmPassword, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpForm &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpFormCopyWith<_$_SignUpForm> get copyWith =>
      __$$_SignUpFormCopyWithImpl<_$_SignUpForm>(this, _$identity);
}

abstract class _SignUpForm extends SignUpForm {
  const factory _SignUpForm(
      {final FormField<String> email,
      final FormField<String> password,
      final FormField<String> confirmPassword,
      final FormField<String> name}) = _$_SignUpForm;
  const _SignUpForm._() : super._();

  @override
  FormField<String> get email => throw _privateConstructorUsedError;
  @override
  FormField<String> get password => throw _privateConstructorUsedError;
  @override
  FormField<String> get confirmPassword => throw _privateConstructorUsedError;
  @override
  FormField<String> get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFormCopyWith<_$_SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}
