import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/sign_in/sign_in_usecase.dart';

class SignInPasswordScreen extends StatefulWidget {
  const SignInPasswordScreen({Key? key}) : super(key: key);

  @override
  State<SignInPasswordScreen> createState() => _SignInPasswordScreenState();
}

class _SignInPasswordScreenState extends State<SignInPasswordScreen> {
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormFieldState>(debugLabel: '_PasswordFormState');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInUsecase, SignInState>(
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
                TextFormField(
                  key: _formKey,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  autofocus: true,
                  onChanged: _onChanged,
                  decoration: const InputDecoration(hintText: 'Password'),
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Your password is empty";
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
                          .add(const SubmitSignInForm());
                    }
                  },
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onChanged(String email) =>
      context.read<SignInUsecase>().add(PasswordChanged(email));

  void _onContinue() {
    context.read<SignInUsecase>().add(const SubmitSignInForm());
  }
}
