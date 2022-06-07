// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() requestUsers,
    required TResult Function(String page) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Logout value) logout,
    required TResult Function(RequestUsers value) requestUsers,
    required TResult Function(ChangePage value) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.started'));
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
    required TResult Function() logout,
    required TResult Function() requestUsers,
    required TResult Function(String page) changePage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
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
    required TResult Function(Logout value) logout,
    required TResult Function(RequestUsers value) requestUsers,
    required TResult Function(ChangePage value) changePage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, (v) => _then(v as _$Logout));

  @override
  _$Logout get _value => super._value as _$Logout;
}

/// @nodoc

class _$Logout with DiagnosticableTreeMixin implements Logout {
  const _$Logout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() requestUsers,
    required TResult Function(String page) changePage,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Logout value) logout,
    required TResult Function(RequestUsers value) requestUsers,
    required TResult Function(ChangePage value) changePage,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements HomeEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class _$$RequestUsersCopyWith<$Res> {
  factory _$$RequestUsersCopyWith(
          _$RequestUsers value, $Res Function(_$RequestUsers) then) =
      __$$RequestUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestUsersCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$RequestUsersCopyWith<$Res> {
  __$$RequestUsersCopyWithImpl(
      _$RequestUsers _value, $Res Function(_$RequestUsers) _then)
      : super(_value, (v) => _then(v as _$RequestUsers));

  @override
  _$RequestUsers get _value => super._value as _$RequestUsers;
}

/// @nodoc

class _$RequestUsers with DiagnosticableTreeMixin implements RequestUsers {
  const _$RequestUsers();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.requestUsers()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeEvent.requestUsers'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() requestUsers,
    required TResult Function(String page) changePage,
  }) {
    return requestUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
  }) {
    return requestUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
    required TResult orElse(),
  }) {
    if (requestUsers != null) {
      return requestUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Logout value) logout,
    required TResult Function(RequestUsers value) requestUsers,
    required TResult Function(ChangePage value) changePage,
  }) {
    return requestUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
  }) {
    return requestUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (requestUsers != null) {
      return requestUsers(this);
    }
    return orElse();
  }
}

abstract class RequestUsers implements HomeEvent {
  const factory RequestUsers() = _$RequestUsers;
}

/// @nodoc
abstract class _$$ChangePageCopyWith<$Res> {
  factory _$$ChangePageCopyWith(
          _$ChangePage value, $Res Function(_$ChangePage) then) =
      __$$ChangePageCopyWithImpl<$Res>;
  $Res call({String page});
}

/// @nodoc
class __$$ChangePageCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$ChangePageCopyWith<$Res> {
  __$$ChangePageCopyWithImpl(
      _$ChangePage _value, $Res Function(_$ChangePage) _then)
      : super(_value, (v) => _then(v as _$ChangePage));

  @override
  _$ChangePage get _value => super._value as _$ChangePage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$ChangePage(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePage with DiagnosticableTreeMixin implements ChangePage {
  const _$ChangePage(this.page);

  @override
  final String page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.changePage(page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.changePage'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePage &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$ChangePageCopyWith<_$ChangePage> get copyWith =>
      __$$ChangePageCopyWithImpl<_$ChangePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() logout,
    required TResult Function() requestUsers,
    required TResult Function(String page) changePage,
  }) {
    return changePage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
  }) {
    return changePage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? logout,
    TResult Function()? requestUsers,
    TResult Function(String page)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Logout value) logout,
    required TResult Function(RequestUsers value) requestUsers,
    required TResult Function(ChangePage value) changePage,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Logout value)? logout,
    TResult Function(RequestUsers value)? requestUsers,
    TResult Function(ChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class ChangePage implements HomeEvent {
  const factory ChangePage(final String page) = _$ChangePage;

  String get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ChangePageCopyWith<_$ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeFlow get flow => throw _privateConstructorUsedError;
  RequestStatus<List<UserModel>> get userListRequestStatus =>
      throw _privateConstructorUsedError;
  String get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {HomeFlow flow,
      RequestStatus<List<UserModel>> userListRequestStatus,
      String page});

  $HomeFlowCopyWith<$Res> get flow;
  $RequestStatusCopyWith<List<UserModel>, $Res> get userListRequestStatus;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? flow = freezed,
    Object? userListRequestStatus = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as HomeFlow,
      userListRequestStatus: userListRequestStatus == freezed
          ? _value.userListRequestStatus
          : userListRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<UserModel>>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $HomeFlowCopyWith<$Res> get flow {
    return $HomeFlowCopyWith<$Res>(_value.flow, (value) {
      return _then(_value.copyWith(flow: value));
    });
  }

  @override
  $RequestStatusCopyWith<List<UserModel>, $Res> get userListRequestStatus {
    return $RequestStatusCopyWith<List<UserModel>, $Res>(
        _value.userListRequestStatus, (value) {
      return _then(_value.copyWith(userListRequestStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {HomeFlow flow,
      RequestStatus<List<UserModel>> userListRequestStatus,
      String page});

  @override
  $HomeFlowCopyWith<$Res> get flow;
  @override
  $RequestStatusCopyWith<List<UserModel>, $Res> get userListRequestStatus;
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? flow = freezed,
    Object? userListRequestStatus = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_HomeState(
      flow: flow == freezed
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as HomeFlow,
      userListRequestStatus: userListRequestStatus == freezed
          ? _value.userListRequestStatus
          : userListRequestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<List<UserModel>>,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeState with DiagnosticableTreeMixin implements _HomeState {
  const _$_HomeState(
      {required this.flow,
      required this.userListRequestStatus,
      required this.page});

  @override
  final HomeFlow flow;
  @override
  final RequestStatus<List<UserModel>> userListRequestStatus;
  @override
  final String page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(flow: $flow, userListRequestStatus: $userListRequestStatus, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('flow', flow))
      ..add(DiagnosticsProperty('userListRequestStatus', userListRequestStatus))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.flow, flow) &&
            const DeepCollectionEquality()
                .equals(other.userListRequestStatus, userListRequestStatus) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flow),
      const DeepCollectionEquality().hash(userListRequestStatus),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final HomeFlow flow,
      required final RequestStatus<List<UserModel>> userListRequestStatus,
      required final String page}) = _$_HomeState;

  @override
  HomeFlow get flow => throw _privateConstructorUsedError;
  @override
  RequestStatus<List<UserModel>> get userListRequestStatus =>
      throw _privateConstructorUsedError;
  @override
  String get page => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeFlow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Home value) home,
    required TResult Function(SignOut value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Home value)? home,
    TResult Function(SignOut value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Home value)? home,
    TResult Function(SignOut value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFlowCopyWith<$Res> {
  factory $HomeFlowCopyWith(HomeFlow value, $Res Function(HomeFlow) then) =
      _$HomeFlowCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeFlowCopyWithImpl<$Res> implements $HomeFlowCopyWith<$Res> {
  _$HomeFlowCopyWithImpl(this._value, this._then);

  final HomeFlow _value;
  // ignore: unused_field
  final $Res Function(HomeFlow) _then;
}

/// @nodoc
abstract class _$$HomeCopyWith<$Res> {
  factory _$$HomeCopyWith(_$Home value, $Res Function(_$Home) then) =
      __$$HomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeCopyWithImpl<$Res> extends _$HomeFlowCopyWithImpl<$Res>
    implements _$$HomeCopyWith<$Res> {
  __$$HomeCopyWithImpl(_$Home _value, $Res Function(_$Home) _then)
      : super(_value, (v) => _then(v as _$Home));

  @override
  _$Home get _value => super._value as _$Home;
}

/// @nodoc

class _$Home with DiagnosticableTreeMixin implements Home {
  const _$Home();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeFlow.home()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeFlow.home'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Home);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() logout,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? logout,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Home value) home,
    required TResult Function(SignOut value) logout,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Home value)? home,
    TResult Function(SignOut value)? logout,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Home value)? home,
    TResult Function(SignOut value)? logout,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class Home implements HomeFlow {
  const factory Home() = _$Home;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res> extends _$HomeFlowCopyWithImpl<$Res>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, (v) => _then(v as _$SignOut));

  @override
  _$SignOut get _value => super._value as _$SignOut;
}

/// @nodoc

class _$SignOut with DiagnosticableTreeMixin implements SignOut {
  const _$SignOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeFlow.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'HomeFlow.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Home value) home,
    required TResult Function(SignOut value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Home value)? home,
    TResult Function(SignOut value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Home value)? home,
    TResult Function(SignOut value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class SignOut implements HomeFlow {
  const factory SignOut() = _$SignOut;
}
