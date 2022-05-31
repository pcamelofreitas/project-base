import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/usecases/onboarding/onboarding_usecase.dart';
import 'package:project_base/src/auth/domain/usecases/sign_up/sign_up_usecase.dart';

import 'domain/usecases/sign_in/sign_in_usecase.dart';

void setupAuthDI() {
  di.registerFactory(() => OnboardingUsecase(
      // authRepository: di()
      ));
  di.registerFactory(() => SignInUsecase(authRepository: di()));
  di.registerFactory(() => SignUpUsecase(authRepository: di()));

  di.registerFactory(
    () => AuthRepository(
      apirepository: di(),
    ),
  );
}
