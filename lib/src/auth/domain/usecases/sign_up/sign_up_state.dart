part of 'sign_up_usecase.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required SignUpForm signUpForm,
    required SignUpFlow flow,
    required RequestStatus signUpRequestStatus,
  }) = _SignUpState;

  factory SignUpState.initial() => const SignUpState(
        signUpForm: SignUpForm(),
        flow: EmailScreen(),
        signUpRequestStatus: Idle(),
      );
}

@freezed
class SignUpFlow with _$SignUpFlow {
  const factory SignUpFlow.emailScreen() = EmailScreen;
  const factory SignUpFlow.passwordScreen() = PasswordScreen;
  const factory SignUpFlow.confirmPasswordScreen() = ConfirmPasswordScreen;
  const factory SignUpFlow.nameScreen() = NameScreen;
  const factory SignUpFlow.enterApp() = EnterApp;
  const factory SignUpFlow.closeFlow() = CloseFlow;
}
