import 'package:flutter/material.dart';
import 'package:project_base/src/auth/presentation/smarties/onboarding_smart_view.dart';
import 'package:project_base/src/shared/presentation/widgets/snack_bar.dart';

class BaseApp extends StatelessWidget {
  const BaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project_base',
      home: const OnboardingSmartView(),
      scaffoldMessengerKey: BaseSnackBar.scaffoldMessengerStateKey,
    );
  }
}
