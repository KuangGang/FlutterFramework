import 'dart:convert';

class ResponseData<T> {
  int code;
  String msg;
  T data;
  String response;

  ResponseData({this.code, this.msg, this.data, this.response});

  @override
  String toString() {
    return 'ResponseData{ code: $code, msg: $msg, \ndata: $data, \nresponse: $response}';
  }
}
