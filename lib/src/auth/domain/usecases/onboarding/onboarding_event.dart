part of 'onboarding_usecase.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.started() = _Started;
  const factory OnboardingEvent.signIn() = SignIn;
  const factory OnboardingEvent.signUp() = SignUp;
}
