import 'package:dio/dio.dart';

import 'interceptors/common_interceptor.dart';

class DioProvider {
  static const int _CONNECT_TIMEOUT = 10000;
  static const int _RECEIVE_TIMEOUT = 5000;

  static Dio _dio;

  static Dio get dio {
    return _dio ??= _createDio();
  }

  static Dio _createDio() {
    Dio dio = Dio(BaseOptions(
      connectTimeout: _CONNECT_TIMEOUT,
      receiveTimeout: _RECEIVE_TIMEOUT,
    ));

    dio.interceptors.addAll(_getExtraInterceptors());
    return dio;
  }

  static List<Interceptor> _getExtraInterceptors() {
    List<Interceptor> interceptors = List<Interceptor>();
    interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      responseHeader: true,
      responseBody: true,
    ));
    interceptors.add(CommonInterceptor());
    return interceptors;
  }
}
