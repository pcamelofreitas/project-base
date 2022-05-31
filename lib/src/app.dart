import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/usecases/onboarding/onboarding_usecase.dart';
import 'package:project_base/src/auth/domain/usecases/sign_in/sign_in_usecase.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';
import 'package:project_base/src/auth/presentation/smarties/onboarding_smart_view.dart';
import 'package:project_base/src/home/domain/usecases/bloc/home_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardingUsecase(),
        ),
        BlocProvider(
          create: (context) =>
              SignInUsecase(authRepository: widget._authRepository),
        ),
        BlocProvider(
            create: (context) =>
                SignUpUsecase(authRepository: widget._authRepository)),
        BlocProvider(create: (context) => HomeBloc())
      ],
      child: const MaterialApp(
        title: 'project_base',
        home: OnboardingSmartView(),
      ),
    );
  }
}
