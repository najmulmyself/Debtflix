import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../app/constants/api_constants.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

@singleton
class DioClient {
  static Dio? _instance;

  Dio get instance {
    _instance ??= _createDio();
    return _instance!;
  }

  Dio _createDio() {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.apiTimeout,
        receiveTimeout: ApiConstants.apiTimeout,
        sendTimeout: ApiConstants.apiTimeout,
        headers: {
          ApiConstants.contentTypeHeader: ApiConstants.jsonContentType,
          ApiConstants.acceptHeader: ApiConstants.jsonContentType,
        },
      ),
    );

    // Add interceptors
    dio.interceptors.addAll([
      AuthInterceptor(),
      LoggingInterceptor(),
    ]);

    return dio;
  }
}