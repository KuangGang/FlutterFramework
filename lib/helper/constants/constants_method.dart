import 'package:flutter/services.dart';

class MethodConstants {
  static const methodChannel = const MethodChannel('csdn.flutter/native_method');
  static const eventChannel = const EventChannel('csdn.flutter/event_channel');

  // 获取网络请求Header
  static const String GET_HEADER = "getHeader";

  // 获取是否线上服务器
  static const String ONLINE_SERVER = "onlineServer";

  // 获取电子书内VIP展示描述
  static const String EBOOK_VIP_DESC = "ebook_vip_des";

  // 上报事件
  static const String UPLOAD_EVENT = "upload_event";

  // 获取是否登录
  static const String IS_LOGIN = "is_login";

  // 获取是否网络可用
  static const String IS_NETWORK_AVAILABLE = "is_network_available";

  // 评论成功
  static const String BLOG_COMMENT_SUCCESS = "blog_comment_success";

  // 评论点赞
  static const String BLOG_COMMENT_PRAISE = "blog_comment_praise";

  // 上报bugly
  static const String POST_BUGLY_EXCEPTION = "post_bugly_exception";
}
