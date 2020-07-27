import 'package:dio/dio.dart';

class CommonInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options) async {
    return super.onRequest(options);
  }

  @override
  onResponse(Response response) {
    return super.onResponse(response);
  }

  @override
  onError(DioError err) {
    return super.onError(err);
  }
}
