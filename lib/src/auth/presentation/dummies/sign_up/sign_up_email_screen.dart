import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:project_base/src/shared/domain/models/base_text_controller.dart';
import 'package:project_base/src/shared/domain/models/base_text_field.dart';
import 'package:project_base/src/shared/types/form_validator.dart';

class SignUpEmailScreen extends StatefulWidget {
  const SignUpEmailScreen({Key? key}) : super(key: key);

  @override
  State<SignUpEmailScreen> createState() => _SignUpEmailScreenState();
}

class _SignUpEmailScreenState extends State<SignUpEmailScreen> {
  late final BaseTextFieldController controller;

  @override
  void initState() {
    controller = BaseTextFieldController(
      "",
      validators: FormValidators.email,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpUsecase, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Email'),
            leading: IconButton(
              onPressed: () {
                context.read<SignUpUsecase>().add(const BackFromEmailScreen());
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
                  hintText: "Email",
                  controller: controller,
                  onSubmitted: (value) => _onContinue(context),
                  onChanged: (value) => _onChanged(value, context),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.showValidationState();

                    context
                        .read<SignUpUsecase>()
                        .add(const ContinueFromEmailScreen());
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

  void _onChanged(String email, BuildContext context) =>
      context.read<SignUpUsecase>().add(EmailChanged(email));

  void _onContinue(BuildContext context) {
    controller.showValidationState();

    context.read<SignUpUsecase>().add(const ContinueFromEmailScreen());
  }
}
