// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/home/domain/models/user_model.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const UserEntity._();
  const factory UserEntity({
    int? id,
    String? email,
    String? first_name,
    String? last_name,
    String? avatar,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);

  UserModel toDomain() {
    return UserModel(
      id: id!,
      email: email!,
      firstName: first_name!,
      lastName: last_name!,
      avatar: avatar!,
    );
  }
}
