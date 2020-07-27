import 'package:flutterframework/core/bean/example_bean.dart';
import 'package:flutterframework/helper/constants/constants_url.dart';

import '../http_manager.dart';

class Api {
  // 测试请求
  static exampleRequest(Map<String, dynamic> params) {
    return HttpManager.get<ExampleBean>(
      GwCmsUrl.example,
      params: params,
    );
  }
}
