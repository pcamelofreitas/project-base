import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:project_base/src/shared/domain/models/base_text_controller.dart';
import 'package:project_base/src/shared/domain/models/base_text_field.dart';

class SignUpConfirmPasswordScreen extends StatefulWidget {
  const SignUpConfirmPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SignUpConfirmPasswordScreen> createState() =>
      _SignUpConfirmPasswordScreenState();
}

class _SignUpConfirmPasswordScreenState
    extends State<SignUpConfirmPasswordScreen> {
  late final BaseTextFieldController controller;

  @override
  void initState() {
    final SignUpState state = context.read<SignUpUsecase>().state;
    controller = BaseTextFieldController(
        state.signUpForm.confirmPassword.field.getOrElse(''),
        equalsTo: state.signUpForm.password.field.getOrElse(''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpUsecase, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Confirm Password'),
            leading: IconButton(
              onPressed: () {
                context
                    .read<SignUpUsecase>()
                    .add(const BackFromConfirmPasswordScreen());
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseTextField(
                  hintText: "Confirm Password",
                  controller: controller,
                  onSubmitted: (value) => _onContinue(context),
                  onChanged: (value) => _onChanged(value, context),
                ),
                ElevatedButton(
                  onPressed: () => _onContinue(context),
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onChanged(String confirmPassword, BuildContext context) => context
      .read<SignUpUsecase>()
      .add(ConfirmPasswordChanged(confirmPassword));

  void _onContinue(BuildContext context) {
    controller.showValidationState();

    context
        .read<SignUpUsecase>()
        .add(const ContinueFromConfirmPasswordScreen());
  }
}
