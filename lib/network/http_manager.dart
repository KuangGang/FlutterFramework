import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutterframework/generated/json/base/json_convert_content.dart';
import 'package:flutterframework/helper/constants/constants_method.dart';
import 'package:flutterframework/helper/util/app_util.dart';
import 'package:quiver/strings.dart';

import 'dio_provider.dart';
import 'exception/dio_exception_handler.dart';
import 'exception/http_exception_handler.dart';
import 'response_data.dart';

class HttpManager {
  // GET请求
  static Stream<ResponseData<T>> get<T>(path, {Map<String, dynamic> params}) {
    return Stream.fromFuture(
      _request<T>(path, params, Options(method: "GET")),
    );
  }

  // POST请求
  static Stream<ResponseData<T>> post<T>(path, {Map<String, dynamic> params}) {
    return Stream.fromFuture(
      _request<T>(path, params, Options(method: "POST")),
    );
  }

  // 网络请求
  static Future<ResponseData<T>> _request<T>(
      path, Map<String, dynamic> params, Options options) async {
    bool connected = await AppUtil.isNetworkAvailable();
    if (!connected) {
      return HttpExceptionHandler.networkError();
    }

    // 获取header
    Map<dynamic, dynamic> headers = await MethodConstants.methodChannel
        .invokeMethod(MethodConstants.GET_HEADER);
    options.headers = headers.cast<String, dynamic>();

    Response response;
    try {
      bool isGetRequest = equalsIgnoreCase("get", options.method);
      response = await DioProvider.dio.request(path,
          queryParameters: isGetRequest ? params : null,
          data: isGetRequest ? null : params,
          options: options);
    } on DioError catch (e) {
      return DioExceptionHandler.handleDioException(e);
    }

    if (response?.statusCode == 200 || response?.statusCode == 201) {
      return parseJson<T>(response.toString());
    } else {
      return HttpExceptionHandler.handleHttpException(response?.statusCode);
    }
  }

  static ResponseData<T> parseJson<T>(String response) {
    var jsonData = jsonDecode(response);
    int code = jsonData['code'];
    String msg = jsonData['msg'];
    try {
      T data = jsonData['data'] != null
          ? JsonConvert.fromJsonAsT<T>(jsonData['data'])
          : null;
      ResponseData<T> obj = new ResponseData<T>(
          code: code, msg: msg, data: data, response: response);
      return obj;
    } catch (e) {
      ResponseData<T> obj =
          new ResponseData<T>(code: code, msg: msg, response: response);
      return obj;
    }
  }
}
