import '../errors/form_error.dart';
import 'form_field.dart';
import 'result.dart';

import 'maybe.dart';

class FormUtils {
  Result<String> validateField({
    required Maybe field,
    required List<String? Function(String)> validators,
  }) {
    List<String> errorMsgs = [];

    for (Function validator in validators) {
      String? error = validator(field.when(
        nothing: () => '',
        just: (val) => val != null ? val.toString() : '',
      ));

      if (error != null) errorMsgs.add(error);
    }

    return errorMsgs.isEmpty
        ? const Success('')
        : Failure(
            FormError(
              slug: errorMsgs.first,
            ),
          );
  }

  Map<String, dynamic> fieldsToJson(List<FormField> fields) {
    final data = <String, dynamic>{};

    for (var e in fields) {
      e.field.map(
        nothing: (_) => {},
        just: (val) {
          data[e.name] = val.value;
        },
      );
    }

    return data;
  }
}
