import 'package:dio/dio.dart';
import 'package:project_base/src/shared/errors/http_error.dart';
import 'package:project_base/src/shared/types/result.dart';

class ApiRepository {
  final Dio _httpClient;
  ApiRepository({
    required Dio httpClient,
  })  : _httpClient = httpClient,
        super();

  Future<Options> get headers async {
    return Options();
  }

  Future<Result> get({
    required String url,
    Map<String, dynamic> queryParams = const {},
  }) async {
    try {
      final Response response = await _httpClient.get(
        url,
        queryParameters: queryParams,
        options: await headers,
      );
      return Success(response.data);
    } on DioError catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(exception, stackTrace);

      return Failure(error);
    } catch (e) {
      return Failure(HttpUnknownError());
    }
  }

  Future<Result> post({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.post(
        url,
        data: body,
        options: await headers,
      );

      return Success(response.data);
    } on DioError catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(exception, stackTrace);

      return Failure(error);
    } catch (e) {
      return Failure(HttpUnknownError(slug: e.toString()));
    }
  }

  Future<Result> put({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.put(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioError catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(exception, stackTrace);

      return Failure(error);
    } catch (e) {
      return Failure(HttpUnknownError(slug: e.toString()));
    }
  }

  Future<Result> delete({
    required String url,
    Map<String, dynamic> body = const {},
  }) async {
    try {
      final Response response = await _httpClient.delete(
        url,
        data: body,
        options: await headers,
      );
      return Success(response.data);
    } on DioError catch (exception, stackTrace) {
      final HttpError error = await parseHttpError(exception, stackTrace);

      return Failure(error);
    } catch (e) {
      return Failure(HttpUnknownError(slug: e.toString()));
    }
  }
}
