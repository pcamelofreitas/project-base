import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/auth/domain/models/auth_response_model.dart';

part 'auth_response_entity.freezed.dart';

@freezed
class AuthResponseEntity with _$AuthResponseEntity {
  const AuthResponseEntity._();
  const factory AuthResponseEntity({
    int? id,
    String? token,
  }) = _AuthResponseEntity;

  AuthResponseModel toDomain() {
    return AuthResponseModel(
      id: id!,
      token: token!,
    );
  }
}
