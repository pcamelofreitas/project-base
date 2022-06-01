import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_base/src/shared/types/form_field.dart';
import 'package:project_base/src/shared/types/form_utils.dart';

part 'sign_up_form.freezed.dart';

@freezed
class SignUpForm with _$SignUpForm, FormUtils {
  const SignUpForm._();
  const factory SignUpForm({
    @Default(FormField<String>(name: 'email')) FormField<String> email,
    @Default(FormField<String>(name: 'password')) FormField<String> password,
    @Default(FormField<String>(name: 'confirmPassword'))
        FormField<String> confirmPassword,
    @Default(FormField<String>(name: 'name')) FormField<String> name,
  }) = _SignUpForm;

  Map<String, dynamic> toJson() => fieldsToJson([email, password, name]);
}
