// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  final OnboardingEvent _value;
  // ignore: unused_field
  final $Res Function(OnboardingEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OnboardingEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OnboardingEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, (v) => _then(v as _$SignIn));

  @override
  _$SignIn get _value => super._value as _$SignIn;
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn();

  @override
  String toString() {
    return 'OnboardingEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements OnboardingEvent {
  const factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class _$$SignUpCopyWith<$Res> {
  factory _$$SignUpCopyWith(_$SignUp value, $Res Function(_$SignUp) then) =
      __$$SignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpCopyWithImpl<$Res> extends _$OnboardingEventCopyWithImpl<$Res>
    implements _$$SignUpCopyWith<$Res> {
  __$$SignUpCopyWithImpl(_$SignUp _value, $Res Function(_$SignUp) _then)
      : super(_value, (v) => _then(v as _$SignUp));

  @override
  _$SignUp get _value => super._value as _$SignUp;
}

/// @nodoc

class _$SignUp implements SignUp {
  const _$SignUp();

  @override
  String toString() {
    return 'OnboardingEvent.signUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signUp,
  }) {
    return signUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
  }) {
    return signUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SignIn value)? signIn,
    TResult Function(SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUp implements OnboardingEvent {
  const factory SignUp() = _$SignUp;
}

/// @nodoc
mixin _$OnboardingState {
  OnboardingFlow get flow => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
  $Res call({OnboardingFlow flow});

  $OnboardingFlowCopyWith<$Res> get flow;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as OnboardingFlow,
    ));
  }

  @override
  $OnboardingFlowCopyWith<$Res> get flow {
    return $OnboardingFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }
}

/// @nodoc
abstract class _$$_OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$_OnboardingStateCopyWith(
          _$_OnboardingState value, $Res Function(_$_OnboardingState) then) =
      __$$_OnboardingStateCopyWithImpl<$Res>;
  @override
  $Res call({OnboardingFlow flow});

  @override
  $OnboardingFlowCopyWith<$Res> get flow;
}

/// @nodoc
class __$$_OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$$_OnboardingStateCopyWith<$Res> {
  __$$_OnboardingStateCopyWithImpl(
      _$_OnboardingState _value, $Res Function(_$_OnboardingState) _then)
      : super(_value, (v) => _then(v as _$_OnboardingState));

  @override
  _$_OnboardingState get _value => super._value as _$_OnboardingState;

  @override
  $Res call({
    Object? flow = freezed,
  }) {
    return _then(_$_OnboardingState(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as OnboardingFlow,
    ));
  }
}

/// @nodoc

class _$_OnboardingState implements _OnboardingState {
  const _$_OnboardingState({required this.flow});

  @override
  final OnboardingFlow flow;

  @override
  String toString() {
    return 'OnboardingState(flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingState &&
            const DeepCollectionEquality().equals(other.flow, flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flow));

  @JsonKey(ignore: true)
  @override
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      __$$_OnboardingStateCopyWithImpl<_$_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState implements OnboardingState {
  const factory _OnboardingState({required final OnboardingFlow flow}) =
      _$_OnboardingState;

  @override
  OnboardingFlow get flow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingStateCopyWith<_$_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OnboardingFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onboarding,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingFlowCopyWith<$Res> {
  factory $OnboardingFlowCopyWith(
          OnboardingFlow value, $Res Function(OnboardingFlow) then) =
      _$OnboardingFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnboardingFlowCopyWithImpl<$Res>
    implements $OnboardingFlowCopyWith<$Res> {
  _$OnboardingFlowCopyWithImpl(this._value, this._then);

  final OnboardingFlow _value;
  // ignore: unused_field
  final $Res Function(OnboardingFlow) _then;
}

/// @nodoc
abstract class _$$OnboardingCopyWith<$Res> {
  factory _$$OnboardingCopyWith(
          _$Onboarding value, $Res Function(_$Onboarding) then) =
      __$$OnboardingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnboardingCopyWithImpl<$Res>
    extends _$OnboardingFlowCopyWithImpl<$Res>
    implements _$$OnboardingCopyWith<$Res> {
  __$$OnboardingCopyWithImpl(
      _$Onboarding _value, $Res Function(_$Onboarding) _then)
      : super(_value, (v) => _then(v as _$Onboarding));

  @override
  _$Onboarding get _value => super._value as _$Onboarding;
}

/// @nodoc

class _$Onboarding implements Onboarding {
  const _$Onboarding();

  @override
  String toString() {
    return 'OnboardingFlow.onboarding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Onboarding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onboarding,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return onboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
  }) {
    return onboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return onboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
  }) {
    return onboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (onboarding != null) {
      return onboarding(this);
    }
    return orElse();
  }
}

abstract class Onboarding implements OnboardingFlow {
  const factory Onboarding() = _$Onboarding;
}

/// @nodoc
abstract class _$$ToSignInCopyWith<$Res> {
  factory _$$ToSignInCopyWith(
          _$ToSignIn value, $Res Function(_$ToSignIn) then) =
      __$$ToSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignInCopyWithImpl<$Res> extends _$OnboardingFlowCopyWithImpl<$Res>
    implements _$$ToSignInCopyWith<$Res> {
  __$$ToSignInCopyWithImpl(_$ToSignIn _value, $Res Function(_$ToSignIn) _then)
      : super(_value, (v) => _then(v as _$ToSignIn));

  @override
  _$ToSignIn get _value => super._value as _$ToSignIn;
}

/// @nodoc

class _$ToSignIn implements ToSignIn {
  const _$ToSignIn();

  @override
  String toString() {
    return 'OnboardingFlow.toSignIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onboarding,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return toSignIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
  }) {
    return toSignIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return toSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
  }) {
    return toSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignIn != null) {
      return toSignIn(this);
    }
    return orElse();
  }
}

abstract class ToSignIn implements OnboardingFlow {
  const factory ToSignIn() = _$ToSignIn;
}

/// @nodoc
abstract class _$$ToSignUpCopyWith<$Res> {
  factory _$$ToSignUpCopyWith(
          _$ToSignUp value, $Res Function(_$ToSignUp) then) =
      __$$ToSignUpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToSignUpCopyWithImpl<$Res> extends _$OnboardingFlowCopyWithImpl<$Res>
    implements _$$ToSignUpCopyWith<$Res> {
  __$$ToSignUpCopyWithImpl(_$ToSignUp _value, $Res Function(_$ToSignUp) _then)
      : super(_value, (v) => _then(v as _$ToSignUp));

  @override
  _$ToSignUp get _value => super._value as _$ToSignUp;
}

/// @nodoc

class _$ToSignUp implements ToSignUp {
  const _$ToSignUp();

  @override
  String toString() {
    return 'OnboardingFlow.toSignUp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToSignUp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onboarding,
    required TResult Function() toSignIn,
    required TResult Function() toSignUp,
  }) {
    return toSignUp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
  }) {
    return toSignUp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onboarding,
    TResult Function()? toSignIn,
    TResult Function()? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Onboarding value) onboarding,
    required TResult Function(ToSignIn value) toSignIn,
    required TResult Function(ToSignUp value) toSignUp,
  }) {
    return toSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
  }) {
    return toSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Onboarding value)? onboarding,
    TResult Function(ToSignIn value)? toSignIn,
    TResult Function(ToSignUp value)? toSignUp,
    required TResult orElse(),
  }) {
    if (toSignUp != null) {
      return toSignUp(this);
    }
    return orElse();
  }
}

abstract class ToSignUp implements OnboardingFlow {
  const factory ToSignUp() = _$ToSignUp;
}
