import 'package:flutterframework/core/bean/example_bean.dart';
import 'package:flutterframework/network/api/api.dart';
import 'package:flutterframework/network/response_data.dart';

import 'base_model.dart';

class ExampleModel extends BaseModel {
  Stream<ResponseData<ExampleBean>> loadData(String username) {
    Map<String, dynamic> params = {"username": username};
    return Api.exampleRequest(params);
  }
}
