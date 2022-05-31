import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_in/sign_in_usecase.dart';
import 'package:project_base/src/shared/domain/models/base_text_controller.dart';
import 'package:project_base/src/shared/domain/models/base_text_field.dart';
import 'package:project_base/src/shared/presentation/widgets/snack_bar.dart';
import 'package:project_base/src/shared/types/form_validator.dart';

class SignInPasswordScreen extends StatefulWidget {
  const SignInPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SignInPasswordScreen> createState() => _SignInPasswordScreenState();
}

class _SignInPasswordScreenState extends State<SignInPasswordScreen> {
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
    return BlocConsumer<SignInUsecase, SignInState>(
      listener: _listener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Center(child: Text('Password')),
            leading: IconButton(
              onPressed: () => context
                  .read<SignInUsecase>()
                  .add(const BackFromPasswordScreen()),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseTextField(
                  hintText: "Password",
                  keyboardType: TextInputType.visiblePassword,
                  controller: controller,
                  onSubmitted: (value) => _onContinue(context),
                  onChanged: (value) => _onChanged(value, context),
                ),
                ElevatedButton(
                  onPressed: () => _onContinue(context),
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _listener(BuildContext context, SignInState state) {
    state.signInRequestStatus.maybeMap(
      orElse: () {},
      failed: (error) {
        BaseSnackBar.showNotification(error);
      },
    );
  }

  void _onChanged(String password, BuildContext context) =>
      context.read<SignInUsecase>().add(PasswordChanged(password));

  void _onContinue(BuildContext context) {
    controller.showValidationState();
    context.read<SignInUsecase>().add(const SubmitSignInForm());
  }
}
