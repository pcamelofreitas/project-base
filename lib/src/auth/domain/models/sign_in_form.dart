import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/shared/types/form_field.dart';
import 'package:project_base/src/shared/types/form_utils.dart';
import 'package:project_base/src/shared/types/form_validator.dart';
import 'package:project_base/src/shared/types/result.dart';

part 'sign_in_form.freezed.dart';

@freezed
class SignInForm with _$SignInForm, FormUtils {
  const SignInForm._();
  const factory SignInForm({
    @Default(FormField<String>(name: 'email')) FormField<String> email,
    @Default(FormField<String>(name: 'password')) FormField<String> password,
  }) = _SignInForm;

  Result<String> get emailValidation => validateField(
        field: email.field,
        validators: FormValidators.email,
      );

  Result<String> get passwordValidation => validateField(
        field: password.field,
        validators: FormValidators.password,
      );

  Map<String, dynamic> toJson() => fieldsToJson([email, password]);
}
