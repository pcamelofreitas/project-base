import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/home/data/repositories/home_repository.dart';

void setupHomeDI() {
  di.registerFactory(
    () => HomeRepository(
      apirepository: di(),
    ),
  );
}
