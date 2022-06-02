import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/usecases/sign_in/sign_in_usecase.dart';
import 'package:project_base/src/auth/presentation/dummies/sign_in/sign_in_email_screen.dart';
import 'package:project_base/src/auth/presentation/dummies/sign_in/sign_in_password_screen.dart';
import 'package:project_base/src/auth/presentation/smarties/onboarding_smart_view.dart';
import 'package:project_base/src/home/presentation/smarties/home_smart_view.dart';

class SignInSmartView extends StatefulWidget {
  const SignInSmartView({Key? key}) : super(key: key);

  @override
  State<SignInSmartView> createState() => _SignInSmartViewState();
}

class _SignInSmartViewState extends State<SignInSmartView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInUsecase(authRepository: di<AuthRepository>()),
      child: _builder(context),
    );
  }

  Widget _builder(BuildContext context) {
    return BlocConsumer<SignInUsecase, SignInState>(
      listenWhen: (SignInState previous, SignInState current) =>
          previous.flow != current.flow,
      listener: (context, state) {
        state.flow.maybeMap(
          closeFlow: (_) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => const OnboardingSmartView()),
              (route) => false,
            );
          },
          enterApp: (_) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const HomeSmartView(),
              ),
              (route) => false,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: state.flow.maybeWhen(
            orElse: () => [
              MaterialPage(child: Container()),
            ],
            emailScreen: () => const [
              MaterialPage(child: SignInEmailScreen()),
            ],
            passwordScreen: () => const [
              MaterialPage(child: SignInEmailScreen()),
              MaterialPage(child: SignInPasswordScreen()),
            ],
          ),
          onPopPage: (route, result) {
            if (route.navigator?.canPop() == false) {
              Navigator.of(context).pop();
            }
            return route.didPop(result);
          },
        );
      },
    );
  }
}
