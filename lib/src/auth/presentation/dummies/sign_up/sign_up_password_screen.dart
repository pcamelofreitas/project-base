import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:project_base/src/shared/domain/models/base_text_controller.dart';
import 'package:project_base/src/shared/domain/models/base_text_field.dart';
import 'package:project_base/src/shared/types/form_validator.dart';

class SignUpPasswordScreen extends StatefulWidget {
  const SignUpPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SignUpPasswordScreen> createState() => _SignUpPasswordScreenState();
}

class _SignUpPasswordScreenState extends State<SignUpPasswordScreen> {
  late final BaseTextFieldController controller;

  @override
  void initState() {
    controller = BaseTextFieldController(
      "",
      validators: FormValidators.password,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpUsecase, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('password'),
            leading: IconButton(
              onPressed: () {
                context
                    .read<SignUpUsecase>()
                    .add(const BackFromPasswordScreen());
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
                  hintText: "password",
                  controller: controller,
                  onSubmitted: (value) => _onContinue(context),
                  onChanged: (value) => _onChanged(value, context),
                ),
                ElevatedButton(
                  onPressed: () {
                    _onContinue(context);
                  },
                  child: const Text('Continue'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onChanged(String password, BuildContext context) =>
      context.read<SignUpUsecase>().add(PasswordChanged(password));

  void _onContinue(BuildContext context) {
    controller.showValidationState();

    context.read<SignUpUsecase>().add(const ContinueFromPasswordScreen());
  }
}
