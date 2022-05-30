import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_usecase.freezed.dart';

class OnboardingUsecase extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingUsecase({
    required AuthRepository authRepository,
  }) : super(OnboardingState.initial()) {
    on<SignIn>(_onSignIn);
    on<SignUp>(_onSignUp);
    on<_Started>(_onStarted);
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
    _Started event,
    Emitter<OnboardingState> emit,
  ) async {
    emit(state.copyWith(flow: const Onboarding()));
  }
}
