import 'package:project_base/src/auth/domain/models/sign_in_form.dart';
import 'package:project_base/src/shared/data/repositories/api_repository.dart';
import 'package:project_base/src/shared/errors/http_error.dart';
import 'package:project_base/src/shared/types/result.dart';

class AuthRepository {
  const AuthRepository({
    required ApiRepository apirepository,
  })  : _apiRepository = apirepository,
        super();
  final ApiRepository _apiRepository;

  Future<Result> signIn({
    required SignInForm signInForm,
  }) async {
    const String url = 'api/login';

    Result signInResponse = await _apiRepository.post(
      url: url,
      body: signInForm.toJson(),
    );

    return signInResponse.handle(
      onSuccess: (data) {
        try {
          return Success(data);
        } catch (e) {
          return Failure(HttpUnknownError(msg: e.toString()));
        }
      },
      onFailure: (error) {
        return Failure(error);
      },
    );
  }

  Future<Result> signUp({required signUpForm}) async {
    const String url = 'api/register';
    final Result signUpResponse = await _apiRepository.post(
      url: url,
      body: signUpForm.toJson(),
    );

    return signUpResponse.handle(
      onSuccess: (data) {
        try {
          return Success(data);
        } catch (e) {
          return Failure(HttpUnknownError(msg: e.toString()));
        }
      },
      onFailure: (error) {
        return Failure(error);
      },
    );
  }

  Future<Result<bool>> signOut() async {
    return const Success(true);
  }
}
