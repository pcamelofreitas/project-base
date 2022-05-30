part of 'sign_in_usecase.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required SignInForm signInForm,
    required SignInFlow flow,
    required RequestStatus signInRequestStatus,
  }) = _SignInState;

  factory SignInState.initial() => const SignInState(
        flow: EmailScreen(),
        signInForm: SignInForm(),
        signInRequestStatus: Idle(),
      );
}

@freezed
class SignInFlow with _$SignInFlow {
  const factory SignInFlow.emailScreen() = EmailScreen;
  const factory SignInFlow.passwordScreen() = PasswordScreen;
  const factory SignInFlow.enterApp() = EnterApp;
  const factory SignInFlow.closeFlow() = CloseFlow;
}
