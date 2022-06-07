import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/auth/presentation/smarties/onboarding_smart_view.dart';
import 'package:project_base/src/home/data/repositories/home_repository.dart';
import 'package:project_base/src/home/domain/usecases/bloc/home_usecase.dart';
import 'package:project_base/src/home/presentation/dummies/home_screen.dart';

class HomeSmartView extends StatefulWidget {
  const HomeSmartView({Key? key}) : super(key: key);

  @override
  State<HomeSmartView> createState() => _HomeSmartViewState();
}

class _HomeSmartViewState extends State<HomeSmartView> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeUsecase(homeRepository: di<HomeRepository>()),
      child: _builder(context),
    );
  }

  Widget _builder(BuildContext context) {
    return BlocConsumer<HomeUsecase, HomeState>(
      builder: (context, state) {
        return Navigator(
          key: navigatorKey,
          pages: state.flow.when(
              home: () => const [
                    MaterialPage(child: HomeScreen()),
                  ],
              logout: () => []),
          onPopPage: (route, result) {
            if (route.navigator?.canPop() == false) {
              Navigator.of(context).pop();
            }
            return route.didPop(result);
          },
        );
      },
      listenWhen: (previous, current) => previous.flow != current.flow,
      listener: (context, state) {
        state.flow.maybeMap(
          orElse: () {},
          logout: (_) {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const OnboardingSmartView(),
              ),
              (_) => false,
            );
          },
        );
      },
    );
  }
}
