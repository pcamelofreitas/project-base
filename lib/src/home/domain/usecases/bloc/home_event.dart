part of 'home_usecase.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.logout() = Logout;
  const factory HomeEvent.requestUsers() = RequestUsers;
  const factory HomeEvent.changePage(String page) = ChangePage;
}
