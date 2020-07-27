class UrlConstants {
  static bool online = true;
}

class GwCmsUrl {
  static String _host = "https://app-gw.csdn.net/cms-app";

  static String example = _host + "/api/example";
}

class MsgUrl {
  static String _host = UrlConstants.online ? "https://msg.csdn.net" : "https://test-notify.csdn.net";

  static String example = _host + "/api/example";
}
