import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
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
    return BlocConsumer<SignInUsecase, SignInState>(
      listenWhen: (previous, current) => previous.flow != current.flow,
      listener: (context, state) {
        state.flow.maybeMap(
          orElse: () {},
          closeFlow: (_) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                  builder: (context) => const OnboardingSmartView()),
              (route) => false,
            );
          },
          emailScreen: (_) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignInEmailScreen()));
          },
          passwordScreen: (_) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignInPasswordScreen()));
          },
          enterApp: (_) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const HomeSmartView(),
              ),
              (route) => false,
            );
          },
        );
      },
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: const [MaterialPage(child: SignInEmailScreen())],
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
