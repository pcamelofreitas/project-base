import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/auth/data/repositories/auth_repository.dart';
import 'package:project_base/src/auth/domain/usecases/onboarding/onboarding_usecase.dart';

void setupAuthDI() {
  // di.registerFactory(() => OnboardingUsecase(authRepository: di()));
  // di.registerFactory(() => SignInUsecase(authRepository: di()));
  // di.registerFactory(() => SignUpUsecase(authRepository: di()));

  di.registerFactory(
    () => AuthRepository(
      apirepository: di(),
    ),
  );
}
