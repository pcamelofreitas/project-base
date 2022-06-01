import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/models/sign_up_form.dart';

import 'package:project_base/src/shared/types/maybe.dart';
import 'package:project_base/src/shared/types/request_status.dart';
import 'package:project_base/src/shared/types/result.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_usecase.freezed.dart';

class SignUpUsecase extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _authRepository;
  SignUpUsecase({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(SignUpState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<NameChanged>(_onNameChanged);
    on<ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<SubmitSignUpForm>(_onSubmitSignUpForm);
    on<ContinueFromEmailScreen>(_onContinueFromEmailScreen);
    on<ContinueFromPasswordScreen>(_onContinueFromPasswordScreen);
    on<ContinueFromConfirmPasswordScreen>(_onContinueFromConfirmPasswordScreen);
    on<BackFromEmailScreen>(_onBackFromEmailScreen);
    on<BackFromPasswordScreen>(_onBackFromPasswordScreen);
    on<BackFromConfirmPasswordScreen>(_onBackFromConfirmPasswordScreen);
    on<BackFromNameScreen>(_onBackFromNameScreen);
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        signUpForm: state.signUpForm.copyWith(
          email: state.signUpForm.email.copyWith(
            field: Just(event.value),
          ),
        ),
      ),
    );
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        signUpForm: state.signUpForm.copyWith(
          password: state.signUpForm.password.copyWith(
            field: Just(event.value),
          ),
        ),
      ),
    );
  }

  void _onNameChanged(
    NameChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        signUpForm: state.signUpForm.copyWith(
          name: state.signUpForm.name.copyWith(
            field: Just(event.value),
          ),
        ),
      ),
    );
  }

  void _onConfirmPasswordChanged(
    ConfirmPasswordChanged event,
    Emitter<SignUpState> emit,
  ) {
    emit(
      state.copyWith(
        signUpForm: state.signUpForm.copyWith(
          confirmPassword: state.signUpForm.confirmPassword.copyWith(
            field: Just(event.value),
          ),
        ),
      ),
    );
  }

  void _onBackFromNameScreen(
    BackFromNameScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const ConfirmPasswordScreen()));
  }

  void _onBackFromPasswordScreen(
    BackFromPasswordScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const EmailScreen()));
  }

  void _onBackFromConfirmPasswordScreen(
    BackFromConfirmPasswordScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const PasswordScreen()));
  }

  void _onBackFromEmailScreen(
    BackFromEmailScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const CloseFlow()));
  }

  void _onContinueFromEmailScreen(
    ContinueFromEmailScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const PasswordScreen()));
  }

  void _onContinueFromPasswordScreen(
    ContinueFromPasswordScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const ConfirmPasswordScreen()));
  }

  void _onContinueFromConfirmPasswordScreen(
    ContinueFromConfirmPasswordScreen event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(flow: const NameScreen()));
  }

  Future<void> _onSubmitSignUpForm(
    SubmitSignUpForm event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(signUpRequestStatus: const Loading()));
    try {
      Result signUpRes =
          await _authRepository.signUp(signUpForm: state.signUpForm);
      signUpRes.handle(
        onSuccess: (_) {},
        onFailure: (_) {},
      );
    } catch (e) {
      null;
    }
  }
}
