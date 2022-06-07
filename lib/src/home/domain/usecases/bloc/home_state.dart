part of 'home_usecase.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required HomeFlow flow,
    required RequestStatus<List<UserModel>> userListRequestStatus,
    required String page,
  }) = _HomeState;
  factory HomeState.initial() => const HomeState(
        flow: Home(),
        userListRequestStatus: Idle(),
        page: '1',
      );
}

@freezed
class HomeFlow with _$HomeFlow {
  const factory HomeFlow.home() = Home;
  const factory HomeFlow.logout() = SignOut;
}
