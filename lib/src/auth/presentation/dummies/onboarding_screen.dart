import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/onboarding/onboarding_usecase.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OnboardingUsecase, OnboardingState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'PROJECT BASE',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<OnboardingUsecase>().add(const SignIn());
                      },
                      child: const Text('Sign In'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<OnboardingUsecase>().add(const SignUp());
                      },
                      child: const Text('Sign Up'),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
