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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInUsecase, SignInState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Passwors'),
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
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onChanged: _onChanged,
                  decoration: const InputDecoration(hintText: 'Password'),
                  controller: passwordController,
                ),
                ElevatedButton(
                  onPressed: () {
                    _onContinue();
                    print(state.signInForm.toJson());
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
