import 'package:project_base/src/home/data/entities/user_entity.dart';
import 'package:project_base/src/home/domain/models/user_model.dart';
import 'package:project_base/src/shared/data/repositories/api_repository.dart';

import 'package:project_base/src/shared/types/result.dart';

class HomeRepository {
  const HomeRepository({
    required ApiRepository apirepository,
  })  : _apiRepository = apirepository,
        super();
  final ApiRepository _apiRepository;

  Future<Result<List<UserModel>>> getUsers() async {
    List<UserModel> users = [];
    Result response = await _apiRepository.get(url: 'api/users');
    Result responseTwo = await _apiRepository.get(url: 'api/users?page=2');

    response.handle(
      onSuccess: (data) {
        var userListJson = data['data'];

        for (var user in userListJson) {
          UserModel userModel = UserEntity.fromJson(user).toDomain();

          users.add(userModel);
        }
      },
      onFailure: (error) {
        return Failure(error);
      },
    );
    responseTwo.handle(
      onSuccess: (data) {
        var userListJson = data['data'];

        for (var user in userListJson) {
          UserModel userModel = UserEntity.fromJson(user).toDomain();

          users.add(userModel);
        }
      },
      onFailure: (error) {
        return Failure(error);
      },
    );
    return Success(users);
  }
}
