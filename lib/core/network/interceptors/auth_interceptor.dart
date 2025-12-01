import 'package:dio/dio.dart';

import '../../../app/constants/api_constants.dart';
import '../../../core/storage/secure_storage.dart';

class AuthInterceptor extends Interceptor {
  final SecureStorage _secureStorage;

  AuthInterceptor(this._secureStorage);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await _secureStorage.getToken();

    if (token != null) {
      options.headers[ApiConstants.authorizationHeader] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == ApiConstants.unauthorizedCode) {
      // Token expired or invalid, clear storage
      _secureStorage.clearAll();
    }

    super.onError(err, handler);
  }
}