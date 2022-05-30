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
