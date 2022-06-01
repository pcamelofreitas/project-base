part of 'sign_up_usecase.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.emailChanged(String value) = EmailChanged;
  const factory SignUpEvent.passwordChanged(String value) = PasswordChanged;
  const factory SignUpEvent.confirmPasswordChanged(String value) =
      ConfirmPasswordChanged;
  const factory SignUpEvent.nameChanged(String value) = NameChanged;
  const factory SignUpEvent.submitSignUpForm() = SubmitSignUpForm;
  const factory SignUpEvent.backFromEmailScreen() = BackFromEmailScreen;
  const factory SignUpEvent.backFromPasswordScreen() = BackFromPasswordScreen;
  const factory SignUpEvent.backFromConfirmPasswordScreen() =
      BackFromConfirmPasswordScreen;
  const factory SignUpEvent.backFromNameScreen() = BackFromNameScreen;
  const factory SignUpEvent.continueFromEmailScreen() = ContinueFromEmailScreen;
  const factory SignUpEvent.continueFromPasswordScreen() =
      ContinueFromPasswordScreen;
  const factory SignUpEvent.continueFromConfirmPasswordScreen() =
      ContinueFromConfirmPasswordScreen;
  const factory SignUpEvent.enterTheApp() = EnterTheApp;
}
