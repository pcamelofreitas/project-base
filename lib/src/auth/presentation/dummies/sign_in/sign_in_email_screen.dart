import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_in/sign_in_usecase.dart';
import 'package:project_base/src/shared/types/form_validator.dart';

class SignInEmailScreen extends StatefulWidget {
  const SignInEmailScreen({Key? key}) : super(key: key);

  @override
  State<SignInEmailScreen> createState() => _SignInEmailScreenState();
}

class _SignInEmailScreenState extends State<SignInEmailScreen> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormFieldState>(debugLabel: '_EmailFormState');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInUsecase, SignInState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Email'),
            leading: IconButton(
              onPressed: () => context
                  .read<SignInUsecase>()
                  .add(const BackFromEmailScreen()),
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  key: _formKey,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: _onChanged,
                  decoration: const InputDecoration(hintText: 'Email'),
                  controller: emailController,
                  autofocus: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Your email address is empty';
                    } else if (!RegExp(EMAIL_REGEX).hasMatch(value)) {
                      return 'Your email adress is incorrect ';
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context
                          .read<SignInUsecase>()
                          .add(const ContinueFromEmailScreen());
                    }
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

  void _onChanged(String email) =>
      context.read<SignInUsecase>().add(EmailChanged(email));

  void _onContinue() {
    context.read<SignInUsecase>().add(const ContinueFromEmailScreen());
  }
}

const EMAIL_REGEX =
    r"""^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$""";
