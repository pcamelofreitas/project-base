import 'package:dio/dio.dart';

import 'app_error.dart';
import 'package:stack_trace/stack_trace.dart';

abstract class HttpError extends AppError {
  final int code;

  HttpError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
    this.code = -2,
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace.isNotEmpty
              ? stackTrace
              : Chain.current().terse.toString(),
        );
}

class HttpBadRequestError extends HttpError {
  final Map<String, dynamic> errors;

  @override
  String get msg => errors['msg'] ?? '';

  String get msgDev => errors['msg_dev'] ?? '';

  HttpBadRequestError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
    this.errors = const {},
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 400,
        );
}

class HttpUnknownError extends HttpError {
  HttpUnknownError({
    String slug =
        'Algo inesperado aconteceu. Se o problema persistir, procure o suporte.',
    String msg =
        'Algo inesperado aconteceu. Se o problema persistir, procure o suporte.',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: -1,
        );
}

class HttpNotFoundError extends HttpError {
  HttpNotFoundError({
    String slug = '',
    String msg = '',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
          code: 404,
        );
}

Future<HttpError> parseHttpError(DioError error, StackTrace stackTrace) async {
  late String msg;

  if (error.response != null &&
      error.response?.headers.value('Content-Type') == 'application/json' &&
      (error.response?.data as Map).containsKey('msg')) {
    msg = error.response?.data["msg"];
  } else {
    msg = "Algo inesperado aconteceu. Tente novamente mais tarde.";
  }

  if (error.type == DioErrorType.response) {
    switch (error.response?.statusCode) {
      case 400:
        return HttpBadRequestError(
          slug: msg,
          msg: msg,
          errors: error.response?.data,
        );

      case 404:
        return HttpNotFoundError(
          slug: msg,
          msg: msg,
        );

      default:
        return HttpUnknownError();
    }
  } else if (error.type == DioErrorType.connectTimeout ||
      error.type == DioErrorType.receiveTimeout ||
      error.type == DioErrorType.sendTimeout ||
      error.type == DioErrorType.other) {
    return HttpUnknownError();
  } else {
    return HttpUnknownError();
  }
}
