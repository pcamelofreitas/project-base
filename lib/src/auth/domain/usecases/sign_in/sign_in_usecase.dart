import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/models/sign_in_form.dart';
// import 'package:project_base/src/shared/errors/app_error.dart';
import 'package:project_base/src/shared/errors/http_error.dart';
import 'package:project_base/src/shared/types/maybe.dart';
import 'package:project_base/src/shared/types/request_status.dart';
import 'package:project_base/src/shared/types/result.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_usecase.freezed.dart';

class SignInUsecase extends Bloc<SignInEvent, SignInState> {
  final AuthRepository _authRepository;
  SignInUsecase({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(SignInState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SubmitSignInForm>(_onSubmitSignInForm);
    on<BackFromEmailScreen>(_onBackFromEmailScreen);
    on<ContinueFromEmailScreen>(_onContinueFromEmailScreen);
    on<BackFromPasswordScreen>(_onBackFromPasswordScreen);
  }

  void _onEmailChanged(
    EmailChanged event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(
      signInForm: state.signInForm.copyWith(
        email: state.signInForm.email.copyWith(
          field: Just(event.value),
        ),
      ),
    ));
  }

  void _onContinueFromEmailScreen(
    ContinueFromEmailScreen event,
    Emitter<SignInState> emit,
  ) {
    // Result<String> emailValidation = state.signInForm.emailValidation;

    // emailValidation.handle(
    //   onSuccess: (data) {
    emit(
      state.copyWith(flow: const PasswordScreen()),
    );
    // },
    // onFailure: (error) => {},
    // );
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(
      signInForm: state.signInForm.copyWith(
        password: state.signInForm.password.copyWith(
          field: Just(event.value),
        ),
      ),
    ));
  }

  void _onBackFromPasswordScreen(
      BackFromPasswordScreen event, Emitter<SignInState> emit) {
    emit(state.copyWith(flow: const EmailScreen()));
  }

  void _onBackFromEmailScreen(
      BackFromEmailScreen event, Emitter<SignInState> emit) {
    emit(state.copyWith(flow: const CloseFlow()));
  }

  Future<void> _onSubmitSignInForm(
    SubmitSignInForm event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(signInRequestStatus: const Loading()));
    try {
      Result signInRes =
          await _authRepository.signIn(signInForm: state.signInForm);

      signInRes.handle(
        onFailure: (error) {
          emit(state.copyWith(
            signInRequestStatus: Failed(
              HttpUnknownError(
                msg: error.toString(),
              ),
            ),
          ));
        },
        onSuccess: (data) {
          emit(state.copyWith(
            signInRequestStatus: Succeeded(data),
          ));
          emit(state.copyWith(flow: const EnterApp()));
        },
      );
    } catch (e) {
      emit(state.copyWith(
          signInRequestStatus: Failed(HttpUnknownError(msg: e.toString()))));
    }
  }
}
