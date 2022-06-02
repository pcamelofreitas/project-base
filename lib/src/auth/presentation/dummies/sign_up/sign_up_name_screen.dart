import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:project_base/src/shared/domain/models/base_text_controller.dart';
import 'package:project_base/src/shared/domain/models/base_text_field.dart';
import 'package:project_base/src/shared/presentation/widgets/snack_bar.dart';
import 'package:project_base/src/shared/types/form_validator.dart';

class SignUpNameScreen extends StatefulWidget {
  const SignUpNameScreen({Key? key}) : super(key: key);

  @override
  State<SignUpNameScreen> createState() => _SignUpNameScreenState();
}

class _SignUpNameScreenState extends State<SignUpNameScreen> {
  late final BaseTextFieldController controller;

  @override
  void initState() {
    controller = BaseTextFieldController(
      "",
      validators: FormValidators.required,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpUsecase, SignUpState>(
      listenWhen: (previous, current) =>
          previous.signUpRequestStatus != current.signUpRequestStatus,
      listener: _listener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Name'),
            leading: IconButton(
              onPressed: () {
                context.read<SignUpUsecase>().add(const BackFromNameScreen());
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
                  hintText: "Name",
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

  void _listener(BuildContext context, SignUpState state) {
    state.signUpRequestStatus.maybeMap(
      orElse: () {},
      failed: (error) {
        BaseSnackBar.showNotification(error);
      },
    );
  }

  void _onChanged(String name, BuildContext context) =>
      context.read<SignUpUsecase>().add(NameChanged(name));

  void _onContinue(BuildContext context) {
    controller.showValidationState();

    context.read<SignUpUsecase>().add(const SubmitSignUpForm());
  }
}
