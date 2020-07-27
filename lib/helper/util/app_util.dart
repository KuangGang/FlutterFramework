import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutterframework/helper/constants/constants.dart';
import 'package:flutterframework/helper/constants/constants_method.dart';
import 'package:flutterframework/helper/constants/constants_router.dart';
import 'package:quiver/strings.dart';

class AppUtil {
  // 是否登录
  static Future<bool> isLogin() async {
    String loginUserName = await MethodConstants.methodChannel
        .invokeMethod(MethodConstants.IS_LOGIN);
    Constants.loginUserName = loginUserName;
    bool isLogin = isNotBlank(loginUserName);
    if (!isLogin) {
      FlutterBoost.singleton.open(NativeRouter.JUMP_LOGIN_QUICK);
    }
    return isLogin;
  }

  // 是否网络可用
  static Future<bool> isNetworkAvailable() async {
    return await MethodConstants.methodChannel
        .invokeMethod(MethodConstants.IS_NETWORK_AVAILABLE);
  }
}
