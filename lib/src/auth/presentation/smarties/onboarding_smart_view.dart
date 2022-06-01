import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/domain/usecases/onboarding/onboarding_usecase.dart';
import 'package:project_base/src/auth/presentation/dummies/onboarding_screen.dart';
import 'package:project_base/src/auth/presentation/smarties/sign_up_smart_view.dart';

import 'sign_in_smart_view.dart';

class OnboardingSmartView extends StatefulWidget {
  const OnboardingSmartView({
    Key? key,
  }) : super(key: key);

  @override
  State<OnboardingSmartView> createState() => _OnboardingSmartViewState();
}

class _OnboardingSmartViewState extends State<OnboardingSmartView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingUsecase(),
      child: _builder(context),
    );
  }

  Widget _builder(BuildContext context) {
    return BlocConsumer<OnboardingUsecase, OnboardingState>(
      listenWhen: (previous, current) => previous.flow != current.flow,
      listener: (context, state) {
        state.flow.maybeMap(
          orElse: () {},
          toSignIn: (_) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignInSmartView(),
              ),
            );
          },
          toSignUp: (_) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignUpSmartView(),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: const [MaterialPage(child: OnboardingScreen())],
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
