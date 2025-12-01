import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logRequest(options);
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logResponse(response);
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _logError(err);
    handler.next(err);
  }

  void _logRequest(RequestOptions options) {
    print('🚀 REQUEST: ${options.method} ${options.uri}');
    if (options.data != null) {
      print('📤 DATA: ${options.data}');
    }
    if (options.headers.isNotEmpty) {
      print('📋 HEADERS: ${options.headers}');
    }
  }

  void _logResponse(Response response) {
    print('✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}');
    if (response.data != null) {
      print('📥 DATA: ${response.data}');
    }
  }

  void _logError(DioException err) {
    print('❌ ERROR: ${err.message}');
    print('📍 URI: ${err.requestOptions.uri}');
    print('🔢 STATUS: ${err.response?.statusCode}');
    if (err.response?.data != null) {
      print('📤 ERROR DATA: ${err.response?.data}');
    }
  }
}