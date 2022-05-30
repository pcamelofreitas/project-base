import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/usecases/onboarding/onboarding_usecase.dart';
import 'package:project_base/src/auth/presentation/smarties/onboarding_smart_view.dart';
import 'package:project_base/src/shared/data/repositories/api_repository.dart';

class BaseApp extends StatefulWidget {
  final AuthRepository _authRepository;
  const BaseApp({
    Key? key,
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(key: key);

  @override
  State<BaseApp> createState() => _BaseAppState();
}

class _BaseAppState extends State<BaseApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          OnboardingUsecase(authRepository: widget._authRepository),
      child: const MaterialApp(
        title: 'project_base',
        home: OnboardingSmartView(),
      ),
    );
  }

  void _listener(context, state) {}
}
