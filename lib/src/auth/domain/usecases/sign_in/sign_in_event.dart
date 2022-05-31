part of 'sign_in_usecase.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String value) = EmailChanged;
  const factory SignInEvent.passwordChanged(String value) = PasswordChanged;
  const factory SignInEvent.submitSignInForm() = SubmitSignInForm;
  const factory SignInEvent.backFromEmailScreen() = BackFromEmailScreen;
  const factory SignInEvent.backFromPasswordScreen() = BackFromPasswordScreen;
  const factory SignInEvent.continueFromEmailScreen() = ContinueFromEmailScreen;
}
