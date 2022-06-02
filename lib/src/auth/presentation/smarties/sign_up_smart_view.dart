import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:project_base/src/auth/presentation/dummies/sign_up/sign_up_confirm_password_screen.dart';
import 'package:project_base/src/auth/presentation/dummies/sign_up/sign_up_email_screen.dart';
import 'package:project_base/src/auth/presentation/dummies/sign_up/sign_up_name_screen.dart';
import 'package:project_base/src/auth/presentation/dummies/sign_up/sign_up_password_screen.dart';
import 'package:project_base/src/home/presentation/smarties/home_smart_view.dart';

import 'onboarding_smart_view.dart';

class SignUpSmartView extends StatefulWidget {
  const SignUpSmartView({Key? key}) : super(key: key);

  @override
  State<SignUpSmartView> createState() => _SignUpSmartViewState();
}

class _SignUpSmartViewState extends State<SignUpSmartView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpUsecase(authRepository: di<AuthRepository>()),
      child: BlocConsumer<SignUpUsecase, SignUpState>(
        listener: (context, state) => state.flow.maybeMap(
          orElse: () {
            return null;
          },
          closeFlow: (_) => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => const OnboardingSmartView()),
              (route) => false),
          enterApp: (_) => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const HomeSmartView(),
            ),
            (route) => false,
          ),
        ),
        builder: (context, state) => Navigator(
          key: navigatorKey,
          pages: state.flow.maybeWhen(
            orElse: () => [MaterialPage(child: Container())],
            emailScreen: () => const [MaterialPage(child: SignUpEmailScreen())],
            passwordScreen: () => const [
              MaterialPage(child: SignUpEmailScreen()),
              MaterialPage(child: SignUpPasswordScreen()),
            ],
            confirmPasswordScreen: () => const [
              MaterialPage(child: SignUpEmailScreen()),
              MaterialPage(child: SignUpPasswordScreen()),
              MaterialPage(child: SignUpConfirmPasswordScreen())
            ],
            nameScreen: () => const [
              MaterialPage(child: SignUpEmailScreen()),
              MaterialPage(child: SignUpPasswordScreen()),
              MaterialPage(child: SignUpConfirmPasswordScreen()),
              MaterialPage(child: SignUpNameScreen()),
            ],
          ),
          onPopPage: (route, result) {
            if (route.navigator?.canPop() == false) {
              Navigator.of(context).pop();
            }
            return route.didPop(result);
          },
        ),
      ),
    );
  }
}
