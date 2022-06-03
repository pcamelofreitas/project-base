// ignore_for_file: hash_and_equals

abstract class AppError {
  final String slug;
  final String msg;
  final String stackTrace;

  AppError({
    this.slug = '',
    this.msg = '',
    this.stackTrace = '',
  });

  @override
  bool operator ==(other) {
    return (other.runtimeType == runtimeType) &&
        (other as AppError).slug == slug;
  }
}

class AppUnknownError extends AppError {
  AppUnknownError({
    String slug = '',
    String msg = 'Algo inesperado aconteceu',
    String stackTrace = '',
  }) : super(
          slug: slug,
          msg: msg,
          stackTrace: stackTrace,
        );

  @override
  String toString() => '''[AppUnknownError]: {
          slug: $slug,
          msg: $msg,
          stackTrace: $stackTrace,
        }''';
}
