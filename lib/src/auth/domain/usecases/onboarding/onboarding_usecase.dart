import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_usecase.freezed.dart';

class OnboardingUsecase extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingUsecase() : super(OnboardingState.initial()) {
    on<SignIn>(_onSignIn);
    on<SignUp>(_onSignUp);
    on<Started>(_onStarted);
  }

  void _onSignIn(
    SignIn event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(flow: const ToSignIn()));
  }

  void _onSignUp(
    SignUp event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(flow: const ToSignUp()));
  }

  void _onStarted(
    Started event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(flow: const Onboarding()));
  }
}
