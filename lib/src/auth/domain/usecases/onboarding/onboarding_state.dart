part of 'onboarding_usecase.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    required OnboardingFlow flow,
  }) = _OnboardingState;

  factory OnboardingState.initial() => const OnboardingState(
        flow: Onboarding(),
      );
}

@freezed
class OnboardingFlow with _$OnboardingFlow {
  const factory OnboardingFlow.onboarding() = Onboarding;
  const factory OnboardingFlow.toSignIn() = ToSignIn;
  const factory OnboardingFlow.toSignUp() = ToSignUp;
}
