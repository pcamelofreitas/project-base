import 'package:get_it/get_it.dart';
import 'package:project_base/src/auth/auth_dependency_injectors.dart';
import 'package:project_base/src/home/home_dependency_injectors.dart';
import 'package:project_base/src/shared/shared_dependency_injectors.dart';

final GetIt di = GetIt.instance;

setupDI() {
  setupSharedDI();
  setupAuthDI();
  setupHomeDI();
}
