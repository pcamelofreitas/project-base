// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, (v) => _then(v as _$EmailChanged));

  @override
  _$EmailChanged get _value => super._value as _$EmailChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$EmailChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) {
    return emailChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) {
    return emailChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  const factory EmailChanged(final String value) = _$EmailChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$PasswordChanged));

  @override
  _$PasswordChanged get _value => super._value as _$PasswordChanged;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$PasswordChanged(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) {
    return passwordChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) {
    return passwordChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  const factory PasswordChanged(final String value) = _$PasswordChanged;

  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitSignInFormCopyWith<$Res> {
  factory _$$SubmitSignInFormCopyWith(
          _$SubmitSignInForm value, $Res Function(_$SubmitSignInForm) then) =
      __$$SubmitSignInFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitSignInFormCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$SubmitSignInFormCopyWith<$Res> {
  __$$SubmitSignInFormCopyWithImpl(
      _$SubmitSignInForm _value, $Res Function(_$SubmitSignInForm) _then)
      : super(_value, (v) => _then(v as _$SubmitSignInForm));

  @override
  _$SubmitSignInForm get _value => super._value as _$SubmitSignInForm;
}

/// @nodoc

class _$SubmitSignInForm implements SubmitSignInForm {
  const _$SubmitSignInForm();

  @override
  String toString() {
    return 'SignInEvent.submitSignInForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitSignInForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) {
    return submitSignInForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) {
    return submitSignInForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (submitSignInForm != null) {
      return submitSignInForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) {
    return submitSignInForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) {
    return submitSignInForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (submitSignInForm != null) {
      return submitSignInForm(this);
    }
    return orElse();
  }
}

abstract class SubmitSignInForm implements SignInEvent {
  const factory SubmitSignInForm() = _$SubmitSignInForm;
}

/// @nodoc
abstract class _$$BackFromEmailScreenCopyWith<$Res> {
  factory _$$BackFromEmailScreenCopyWith(_$BackFromEmailScreen value,
          $Res Function(_$BackFromEmailScreen) then) =
      __$$BackFromEmailScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackFromEmailScreenCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$BackFromEmailScreenCopyWith<$Res> {
  __$$BackFromEmailScreenCopyWithImpl(
      _$BackFromEmailScreen _value, $Res Function(_$BackFromEmailScreen) _then)
      : super(_value, (v) => _then(v as _$BackFromEmailScreen));

  @override
  _$BackFromEmailScreen get _value => super._value as _$BackFromEmailScreen;
}

/// @nodoc

class _$BackFromEmailScreen implements BackFromEmailScreen {
  const _$BackFromEmailScreen();

  @override
  String toString() {
    return 'SignInEvent.backFromEmailScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackFromEmailScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) {
    return backFromEmailScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) {
    return backFromEmailScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (backFromEmailScreen != null) {
      return backFromEmailScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) {
    return backFromEmailScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) {
    return backFromEmailScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (backFromEmailScreen != null) {
      return backFromEmailScreen(this);
    }
    return orElse();
  }
}

abstract class BackFromEmailScreen implements SignInEvent {
  const factory BackFromEmailScreen() = _$BackFromEmailScreen;
}

/// @nodoc
abstract class _$$BackFromPasswordScreenCopyWith<$Res> {
  factory _$$BackFromPasswordScreenCopyWith(_$BackFromPasswordScreen value,
          $Res Function(_$BackFromPasswordScreen) then) =
      __$$BackFromPasswordScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BackFromPasswordScreenCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$BackFromPasswordScreenCopyWith<$Res> {
  __$$BackFromPasswordScreenCopyWithImpl(_$BackFromPasswordScreen _value,
      $Res Function(_$BackFromPasswordScreen) _then)
      : super(_value, (v) => _then(v as _$BackFromPasswordScreen));

  @override
  _$BackFromPasswordScreen get _value =>
      super._value as _$BackFromPasswordScreen;
}

/// @nodoc

class _$BackFromPasswordScreen implements BackFromPasswordScreen {
  const _$BackFromPasswordScreen();

  @override
  String toString() {
    return 'SignInEvent.backFromPasswordScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BackFromPasswordScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) {
    return backFromPasswordScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) {
    return backFromPasswordScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (backFromPasswordScreen != null) {
      return backFromPasswordScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) {
    return backFromPasswordScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) {
    return backFromPasswordScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (backFromPasswordScreen != null) {
      return backFromPasswordScreen(this);
    }
    return orElse();
  }
}

abstract class BackFromPasswordScreen implements SignInEvent {
  const factory BackFromPasswordScreen() = _$BackFromPasswordScreen;
}

/// @nodoc
abstract class _$$ContinueFromEmailScreenCopyWith<$Res> {
  factory _$$ContinueFromEmailScreenCopyWith(_$ContinueFromEmailScreen value,
          $Res Function(_$ContinueFromEmailScreen) then) =
      __$$ContinueFromEmailScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContinueFromEmailScreenCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$ContinueFromEmailScreenCopyWith<$Res> {
  __$$ContinueFromEmailScreenCopyWithImpl(_$ContinueFromEmailScreen _value,
      $Res Function(_$ContinueFromEmailScreen) _then)
      : super(_value, (v) => _then(v as _$ContinueFromEmailScreen));

  @override
  _$ContinueFromEmailScreen get _value =>
      super._value as _$ContinueFromEmailScreen;
}

/// @nodoc

class _$ContinueFromEmailScreen implements ContinueFromEmailScreen {
  const _$ContinueFromEmailScreen();

  @override
  String toString() {
    return 'SignInEvent.continueFromEmailScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueFromEmailScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) emailChanged,
    required TResult Function(String value) passwordChanged,
    required TResult Function() submitSignInForm,
    required TResult Function() backFromEmailScreen,
    required TResult Function() backFromPasswordScreen,
    required TResult Function() continueFromEmailScreen,
  }) {
    return continueFromEmailScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
  }) {
    return continueFromEmailScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? emailChanged,
    TResult Function(String value)? passwordChanged,
    TResult Function()? submitSignInForm,
    TResult Function()? backFromEmailScreen,
    TResult Function()? backFromPasswordScreen,
    TResult Function()? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (continueFromEmailScreen != null) {
      return continueFromEmailScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SubmitSignInForm value) submitSignInForm,
    required TResult Function(BackFromEmailScreen value) backFromEmailScreen,
    required TResult Function(BackFromPasswordScreen value)
        backFromPasswordScreen,
    required TResult Function(ContinueFromEmailScreen value)
        continueFromEmailScreen,
  }) {
    return continueFromEmailScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
  }) {
    return continueFromEmailScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SubmitSignInForm value)? submitSignInForm,
    TResult Function(BackFromEmailScreen value)? backFromEmailScreen,
    TResult Function(BackFromPasswordScreen value)? backFromPasswordScreen,
    TResult Function(ContinueFromEmailScreen value)? continueFromEmailScreen,
    required TResult orElse(),
  }) {
    if (continueFromEmailScreen != null) {
      return continueFromEmailScreen(this);
    }
    return orElse();
  }
}

abstract class ContinueFromEmailScreen implements SignInEvent {
  const factory ContinueFromEmailScreen() = _$ContinueFromEmailScreen;
}

/// @nodoc
mixin _$SignInState {
  SignInForm get signInForm => throw _privateConstructorUsedError;
  SignInFlow get flow => throw _privateConstructorUsedError;
  RequestStatus<dynamic> get signInRequestStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {SignInForm signInForm,
      SignInFlow flow,
      RequestStatus<dynamic> signInRequestStatus});

  $SignInFormCopyWith<$Res> get signInForm;
  $SignInFlowCopyWith<$Res> get flow;
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? signInForm = freezed,
    Object? flow = freezed,
    Object? signInRequestStatus = freezed,
  }) {
    return _then(_value.copyWith(
      signInForm: signInForm == freezed
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignInFlow,
      signInRequestStatus: signInRequestStatus == freezed
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }

  @override
  $SignInFormCopyWith<$Res> get signInForm {
    return $SignInFormCopyWith<$Res>(_value.signInForm, (value) {
      return _then(_value.copyWith(signInForm: value));
    });
  }

  @override
  $SignInFlowCopyWith<$Res> get flow {
    return $SignInFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus {
    return $RequestStatusCopyWith<dynamic, $Res>(_value.signInRequestStatus,
        (value) {
      return _then(_value.copyWith(signInRequestStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SignInForm signInForm,
      SignInFlow flow,
      RequestStatus<dynamic> signInRequestStatus});

  @override
  $SignInFormCopyWith<$Res> get signInForm;
  @override
  $SignInFlowCopyWith<$Res> get flow;
  @override
  $RequestStatusCopyWith<dynamic, $Res> get signInRequestStatus;
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? signInForm = freezed,
    Object? flow = freezed,
    Object? signInRequestStatus = freezed,
  }) {
    return _then(_$_SignInState(
      signInForm: signInForm == freezed
          ? _value.signInForm
          : signInForm // ignore: cast_nullable_to_non_nullable
              as SignInForm,
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as SignInFlow,
      signInRequestStatus: signInRequestStatus == freezed
          ? _value.signInRequestStatus
          : signInRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.signInForm,
      required this.flow,
      required this.signInRequestStatus});

  @override
  final SignInForm signInForm;
  @override
  final SignInFlow flow;
  @override
  final RequestStatus<dynamic> signInRequestStatus;

  @override
  String toString() {
    return 'SignInState(signInForm: $signInForm, flow: $flow, signInRequestStatus: $signInRequestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality()
                .equals(other.signInForm, signInForm) &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.signInRequestStatus, signInRequestStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(signInForm),
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(signInRequestStatus));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {required final SignInForm signInForm,
          required final SignInFlow flow,
          required final RequestStatus<dynamic> signInRequestStatus}) =
      _$_SignInState;

  @override
  SignInForm get signInForm => throw _privateConstructorUsedError;
  @override
  SignInFlow get flow => throw _privateConstructorUsedError;
  @override
  RequestStatus<dynamic> get signInRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailScreen,
    required TResult Function() passwordScreen,
    required TResult Function() enterApp,
    required TResult Function() closeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailScreen value) emailScreen,
    required TResult Function(PasswordScreen value) passwordScreen,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(CloseFlow value) closeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFlowCopyWith<$Res> {
  factory $SignInFlowCopyWith(
          SignInFlow value, $Res Function(SignInFlow) then) =
      _$SignInFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFlowCopyWithImpl<$Res> implements $SignInFlowCopyWith<$Res> {
  _$SignInFlowCopyWithImpl(this._value, this._then);

  final SignInFlow _value;
  // ignore: unused_field
  final $Res Function(SignInFlow) _then;
}

/// @nodoc
abstract class _$$EmailScreenCopyWith<$Res> {
  factory _$$EmailScreenCopyWith(
          _$EmailScreen value, $Res Function(_$EmailScreen) then) =
      __$$EmailScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailScreenCopyWithImpl<$Res> extends _$SignInFlowCopyWithImpl<$Res>
    implements _$$EmailScreenCopyWith<$Res> {
  __$$EmailScreenCopyWithImpl(
      _$EmailScreen _value, $Res Function(_$EmailScreen) _then)
      : super(_value, (v) => _then(v as _$EmailScreen));

  @override
  _$EmailScreen get _value => super._value as _$EmailScreen;
}

/// @nodoc

class _$EmailScreen implements EmailScreen {
  const _$EmailScreen();

  @override
  String toString() {
    return 'SignInFlow.emailScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailScreen,
    required TResult Function() passwordScreen,
    required TResult Function() enterApp,
    required TResult Function() closeFlow,
  }) {
    return emailScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
  }) {
    return emailScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
    required TResult orElse(),
  }) {
    if (emailScreen != null) {
      return emailScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailScreen value) emailScreen,
    required TResult Function(PasswordScreen value) passwordScreen,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(CloseFlow value) closeFlow,
  }) {
    return emailScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
  }) {
    return emailScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
    required TResult orElse(),
  }) {
    if (emailScreen != null) {
      return emailScreen(this);
    }
    return orElse();
  }
}

abstract class EmailScreen implements SignInFlow {
  const factory EmailScreen() = _$EmailScreen;
}

/// @nodoc
abstract class _$$PasswordScreenCopyWith<$Res> {
  factory _$$PasswordScreenCopyWith(
          _$PasswordScreen value, $Res Function(_$PasswordScreen) then) =
      __$$PasswordScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordScreenCopyWithImpl<$Res>
    extends _$SignInFlowCopyWithImpl<$Res>
    implements _$$PasswordScreenCopyWith<$Res> {
  __$$PasswordScreenCopyWithImpl(
      _$PasswordScreen _value, $Res Function(_$PasswordScreen) _then)
      : super(_value, (v) => _then(v as _$PasswordScreen));

  @override
  _$PasswordScreen get _value => super._value as _$PasswordScreen;
}

/// @nodoc

class _$PasswordScreen implements PasswordScreen {
  const _$PasswordScreen();

  @override
  String toString() {
    return 'SignInFlow.passwordScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailScreen,
    required TResult Function() passwordScreen,
    required TResult Function() enterApp,
    required TResult Function() closeFlow,
  }) {
    return passwordScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
  }) {
    return passwordScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
    required TResult orElse(),
  }) {
    if (passwordScreen != null) {
      return passwordScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailScreen value) emailScreen,
    required TResult Function(PasswordScreen value) passwordScreen,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(CloseFlow value) closeFlow,
  }) {
    return passwordScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
  }) {
    return passwordScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
    required TResult orElse(),
  }) {
    if (passwordScreen != null) {
      return passwordScreen(this);
    }
    return orElse();
  }
}

abstract class PasswordScreen implements SignInFlow {
  const factory PasswordScreen() = _$PasswordScreen;
}

/// @nodoc
abstract class _$$EnterAppCopyWith<$Res> {
  factory _$$EnterAppCopyWith(
          _$EnterApp value, $Res Function(_$EnterApp) then) =
      __$$EnterAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterAppCopyWithImpl<$Res> extends _$SignInFlowCopyWithImpl<$Res>
    implements _$$EnterAppCopyWith<$Res> {
  __$$EnterAppCopyWithImpl(_$EnterApp _value, $Res Function(_$EnterApp) _then)
      : super(_value, (v) => _then(v as _$EnterApp));

  @override
  _$EnterApp get _value => super._value as _$EnterApp;
}

/// @nodoc

class _$EnterApp implements EnterApp {
  const _$EnterApp();

  @override
  String toString() {
    return 'SignInFlow.enterApp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailScreen,
    required TResult Function() passwordScreen,
    required TResult Function() enterApp,
    required TResult Function() closeFlow,
  }) {
    return enterApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
  }) {
    return enterApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
    required TResult orElse(),
  }) {
    if (enterApp != null) {
      return enterApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailScreen value) emailScreen,
    required TResult Function(PasswordScreen value) passwordScreen,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(CloseFlow value) closeFlow,
  }) {
    return enterApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
  }) {
    return enterApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
    required TResult orElse(),
  }) {
    if (enterApp != null) {
      return enterApp(this);
    }
    return orElse();
  }
}

abstract class EnterApp implements SignInFlow {
  const factory EnterApp() = _$EnterApp;
}

/// @nodoc
abstract class _$$CloseFlowCopyWith<$Res> {
  factory _$$CloseFlowCopyWith(
          _$CloseFlow value, $Res Function(_$CloseFlow) then) =
      __$$CloseFlowCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseFlowCopyWithImpl<$Res> extends _$SignInFlowCopyWithImpl<$Res>
    implements _$$CloseFlowCopyWith<$Res> {
  __$$CloseFlowCopyWithImpl(
      _$CloseFlow _value, $Res Function(_$CloseFlow) _then)
      : super(_value, (v) => _then(v as _$CloseFlow));

  @override
  _$CloseFlow get _value => super._value as _$CloseFlow;
}

/// @nodoc

class _$CloseFlow implements CloseFlow {
  const _$CloseFlow();

  @override
  String toString() {
    return 'SignInFlow.closeFlow()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CloseFlow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailScreen,
    required TResult Function() passwordScreen,
    required TResult Function() enterApp,
    required TResult Function() closeFlow,
  }) {
    return closeFlow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
  }) {
    return closeFlow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailScreen,
    TResult Function()? passwordScreen,
    TResult Function()? enterApp,
    TResult Function()? closeFlow,
    required TResult orElse(),
  }) {
    if (closeFlow != null) {
      return closeFlow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailScreen value) emailScreen,
    required TResult Function(PasswordScreen value) passwordScreen,
    required TResult Function(EnterApp value) enterApp,
    required TResult Function(CloseFlow value) closeFlow,
  }) {
    return closeFlow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
  }) {
    return closeFlow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailScreen value)? emailScreen,
    TResult Function(PasswordScreen value)? passwordScreen,
    TResult Function(EnterApp value)? enterApp,
    TResult Function(CloseFlow value)? closeFlow,
    required TResult orElse(),
  }) {
    if (closeFlow != null) {
      return closeFlow(this);
    }
    return orElse();
  }
}

abstract class CloseFlow implements SignInFlow {
  const factory CloseFlow() = _$CloseFlow;
}
