import 'dart:math';
import 'package:dio/dio.dart';

class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetries;
  final Duration baseDelay;

  RetryInterceptor({
    required this.dio,
    this.maxRetries = 4,
    this.baseDelay = const Duration(milliseconds: 500),
  });

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final attempt = err.requestOptions.extra['retryCount'] as int? ?? 0;

    final shouldRetry = attempt < maxRetries && _isRetryable(err);

    if (!shouldRetry) {
      return handler.next(err);
    }

    final delay = baseDelay * pow(2, attempt).toInt();
    await Future.delayed(delay);

    err.requestOptions.extra['retryCount'] = attempt + 1;

    try {
      final response = await dio.fetch(err.requestOptions);
      return handler.resolve(response);
    } on DioException catch (e) {
      return handler.next(e);
    }
  }

  bool _isRetryable(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionError:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return true;
      case DioExceptionType.badResponse:
        final status = err.response?.statusCode ?? 0;
        return status == 500 || status == 502 || status == 503;
      default:
        return false;
    }
  }
}
