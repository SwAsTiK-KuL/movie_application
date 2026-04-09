import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';

class ChaosInterceptor extends Interceptor {
  final _random = Random();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method.toUpperCase() != 'GET') {
      return handler.next(options);
    }

    final roll = _random.nextDouble();

    if (roll < 0.15) {
      return handler.reject(
        DioException(
          requestOptions: options,
          error: const SocketException('Simulated network failure'),
          type: DioExceptionType.connectionError,
          message: 'Simulated SocketException from ChaosInterceptor',
        ),
        true,
      );
    } else if (roll < 0.30) {
      return handler.reject(
        DioException(
          requestOptions: options,
          response: Response(
            requestOptions: options,
            statusCode: 500,
            statusMessage: 'Internal Server Error (Simulated)',
          ),
          type: DioExceptionType.badResponse,
          message: 'Simulated 500 from ChaosInterceptor',
        ),
        true,
      );
    }

    handler.next(options);
  }
}
