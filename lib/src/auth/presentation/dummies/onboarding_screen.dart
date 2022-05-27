import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              //TODO: LOGIN FUNCTION IMPLEMENT
              //usecase.onSignInPressed;
            },
            child: const Text('Sign In'),
          ),
          ElevatedButton(
            onPressed: () {
              //TODO: REGISTER FUNCTION IMPLEMENT
              //usecase.onSignUpPressed
            },
            child: const Text('Sign Up'),
          )
        ],
      ),
    );
  }
}
