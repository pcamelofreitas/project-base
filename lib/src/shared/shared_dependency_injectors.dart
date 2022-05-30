import 'package:dio/dio.dart';
import 'package:project_base/dependency_injector.dart';
import 'package:project_base/src/shared/data/repositories/api_repository.dart';

void setupSharedDI() {
  di.registerFactory(
    () => Dio(
      BaseOptions(baseUrl: 'https://reqres.in/'),
    ),
  );

  di.registerLazySingleton(
    () => ApiRepository(
      httpClient: di(),
    ),
  );
}
