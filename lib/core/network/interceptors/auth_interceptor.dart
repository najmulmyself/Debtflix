import 'package:dio/dio.dart';

import '../../../app/constants/api_constants.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // For now, skip token injection
    // TODO: Implement proper token injection when secure storage is available
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == ApiConstants.unauthorizedCode) {
      // Token expired or invalid
      // TODO: Implement proper token clearing when secure storage is available
    }

    handler.next(err);
  }
}