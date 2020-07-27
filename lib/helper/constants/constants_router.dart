class FlutterRouter {
  static const String BASE_ROUTER = "csdnflutter://app.csdn.net";
  static const String PATH_ROUTER = "app.csdn.net";

  // Example
  static const String ROUTE_EXAMPLE = BASE_ROUTER + "/route/example";

  static String getPath(String route) {
    return route.replaceAll(BASE_ROUTER, PATH_ROUTER);
  }
}

class NativeRouter {
  static const String BASE_ROUTER = "csdnapp://app.csdn.net";

  static const String JUMP_BLOGDETAILACTIVITY = BASE_ROUTER + "/blog/detail";
  static const String JUMP_BLINACTIVITY = BASE_ROUTER + "/blink/detail";
  static const String JUMP_VIDEODETAILACTIVITY =
      BASE_ROUTER + "/study/course/detail";
  static const String JUMP_NEWPROFILEACTIVITY = BASE_ROUTER + "/me";
  static const String JUMP_MYBLOGACTIVITY = BASE_ROUTER + "/me/blog"; //博客
  static const String JUMP_BLIN_LIST_ACTIVITY =
      BASE_ROUTER + "/me/blink"; //Blink
  static const String JUMP_MY_BBS_ACTIVITY = BASE_ROUTER + "/me/bbs"; //帖子
  static const String JUMP_WEB_EDU_ACTIVITY = BASE_ROUTER + "/me/course"; //视频课
  static const String JUMP_IMAGE_TEXT_COURSE =
      BASE_ROUTER + "/me/imageTextCourse"; //图文课
  static const String JUMP_MY_EPUB_ACTIVITY = BASE_ROUTER + "/me/ebook"; //书架
  static const String JUMP_MY_COLLECT_FOLDER_ACTIVITY =
      BASE_ROUTER + "/me/fav"; //收藏夹
  static const String JUMP_MY_HISTORY_ACTIVITY =
      BASE_ROUTER + "/me/footprint"; //足迹
  static const String JUMP_MEDAL_ACTIVITY = BASE_ROUTER + "/me/medal"; //勋章墙
  static const String JUMP_TASK = BASE_ROUTER + "/me/task"; //任务
  static const String JUMP_CHECKIN = BASE_ROUTER + "/checkin"; //签到
  static const String JUMP_SCANNER = BASE_ROUTER + "/scanner"; // 扫一扫
  static const String JUMP_BLOGHOTLIST = BASE_ROUTER + "/blog/hotlist"; // 热榜
  static const String JUMP_EBOOKHOME =
      BASE_ROUTER + "/study/ebook/home"; // 电子书首页
  static const String JUMP_EBOOKDETAIL =
      BASE_ROUTER + "/study/ebook/detail"; // 电子书详情页
  static const String JUMP_PRIVATEARTICLES =
      BASE_ROUTER + "/me/privatearticles"; // 私密文章
  static const String JUMP_ME_GROUP = BASE_ROUTER + "/me/group"; // 大本营（我的）
  static const String JUMP_ME_COUPON = BASE_ROUTER + "/me/coupon"; //优惠券
  static const String JUMP_ME_FEEDBACK = BASE_ROUTER + "/me/feedback"; //帮助与反馈
  static const String JUMP_PAY_COLUMN = BASE_ROUTER + "/me/paycolumn"; //付费专栏
  static const String JUMP_LOTTERY = BASE_ROUTER + "/lottery";
  static const String JUMP_WRITE_BLOG = BASE_ROUTER + "/blog/write";
  static const String JUMP_RECOMMEND_FEED =
      BASE_ROUTER + "/blink/recommend_feed";
  static const String JUMP_SEARCH = BASE_ROUTER + "/search";
  static const String JUMP_PRIVATECHART = BASE_ROUTER + "/privatechart";
  static const String JUMP_MYCOURSELIST = BASE_ROUTER + "/mycourselist";
  static const String JUMP_TOPIC = BASE_ROUTER + "/topic";
  static const String JUMP_TOPIC_DETAIL = BASE_ROUTER + "/blink/topic";
  static const String JUMP_BLINK_POST = BASE_ROUTER + "/blink/post";
  static const String JUMP_BLINK_RANK = BASE_ROUTER + "/blink/rank";
  static const String JUMP_BBS_DETAIL = BASE_ROUTER + "/bbs/detail";
  static const String JUMP_BBS_POST = BASE_ROUTER + "/bbs/post";
  static const String JUMP_ME_FANSFOLLOW = BASE_ROUTER + "/me/fansfollow";
  static const String JUMP_ME_SETTING = BASE_ROUTER + "/me/setting";
  static const String JUMP_ME_EDIT = BASE_ROUTER + "/me/edit";
  static const String JUMP_BLOG_COMMENTMSG = BASE_ROUTER + "/blog/commentmsg";
  static const String JUMP_BLINK_COMMENTDETAIL =
      BASE_ROUTER + "/blink/commentdetail";
  static const String JUMP_BBS_LIST = BASE_ROUTER + "/bbs/list";
  static const String JUMP_MESSAGE_PRAISE =
      BASE_ROUTER + "/message/praise"; //点赞
  static const String JUMP_MESSAGE_COMMENT =
      BASE_ROUTER + "/message/comment"; //评论
  static const String JUMP_MESSAGE_FANS = BASE_ROUTER + "/message/fans"; //粉丝
  static const String JUMP_MESSAGE_CHAT =
      BASE_ROUTER + "/message/privatechat"; //私聊
  static const String JUMP_LIVE_ROOM = BASE_ROUTER + "/live/room";
  static const String JUMP_LIVE_ROOMLIST = BASE_ROUTER + "/live/roomlist";
  static const String JUMP_LIVE_HOME = BASE_ROUTER + "/blog/liveVideo";
  static const String JUMP_MY_ORDER_LIVE =
      BASE_ROUTER + "/me/appointmentLiveRoom";
  static const String JUMP_VIDEO_DETAIL =
      BASE_ROUTER + "/video/detail"; // 短视频详情
  static const String JUMP_HOME = BASE_ROUTER + "/homePage"; //首页
  static const String JUMP_STUDY = BASE_ROUTER + "/homeStudy"; //学习
  static const String JUMP_BLINK = BASE_ROUTER + "/homeBlink"; //Blink
  static const String JUMP_MSG = BASE_ROUTER + "/homeMessage"; //消息
  static const String JUMP_MY = BASE_ROUTER + "/homeMe"; //我的
  static const String JUMP_HOME_RECOMMENT_TAGS =
      BASE_ROUTER + "/blog/categroie"; //首页推荐
  static const String JUMP_HOME_RECOMMENT =
      BASE_ROUTER + "/blog/recomment"; //首页推荐
  static const String JUMP_HOME_HOME = BASE_ROUTER + "/blog/home"; //首页推荐
  static const String JUMP_RECOMMENT = BASE_ROUTER + "/blog/recommentall";
  static const String JUMP_HOME_PYTHON = BASE_ROUTER + "/blog/python"; //python
  static const String JUMP_HOME_JAVA = BASE_ROUTER + "/blog/java"; //java
  static const String JUMP_HOME_SQL = BASE_ROUTER + "/blog/sql"; //sql
  static const String JUMP_HOME_ANDROID =
      BASE_ROUTER + "/blog/android"; //android
  static const String JUMP_HOME_JAVASCRIPT =
      BASE_ROUTER + "/blog/javascript"; //javascript
  static const String JUMP_HOME_FRESH = BASE_ROUTER + "/blog/fresh"; //新鲜
  static const String JUMP_HOME_NEWWARTICLES =
      BASE_ROUTER + "/blog/newarticles"; //最新
  static const String JUMP_HOME_WATCHER = BASE_ROUTER + "/blog/watchers"; // 关注
  static const String JUMP_HOME_NEWS = BASE_ROUTER + "/blog/news"; //资讯
  static const String JUMP_HOME_AI = BASE_ROUTER + "/blog/ai"; //人工智能
  static const String JUMP_HOME_CLOUND = BASE_ROUTER + "/blog/cloud"; //大数据
  static const String JUMP_HOME_BLOCKCHAIN =
      BASE_ROUTER + "/blog/blockchain"; //区块链
  static const String JUMP_HOME_DB = BASE_ROUTER + "/blog/db"; //数据库
  static const String JUMP_HOME_CAREER = BASE_ROUTER + "/blog/career"; //程序人生
  static const String JUMP_HOME_GAME = BASE_ROUTER + "/blog/game"; //游戏
  static const String JUMP_HOME_ENGINEERING =
      BASE_ROUTER + "/blog/engineering"; //研发管理
  static const String JUMP_HOME_WEB = BASE_ROUTER + "/blog/web"; //前端
  static const String JUMP_HOME_MOBILE = BASE_ROUTER + "/blog/mobile"; //移动开发
  static const String JUMP_HOME_IOT = BASE_ROUTER + "/blog/iot"; // 物联网
  static const String JUMP_HOME_OPS = BASE_ROUTER + "/blog/ops"; //运维
  static const String JUMP_HOME_FUND = BASE_ROUTER + "/blog/fund"; //计算机基础
  static const String JUMP_HOME_LANG = BASE_ROUTER + "/blog/lang"; //编程语言
  static const String JUMP_HOME_ARCH = BASE_ROUTER + "/blog/arch"; //架构
  static const String JUMP_HOME_AVI = BASE_ROUTER + "/blog/avi"; //音视频开发
  static const String JUMP_HOME_SEC = BASE_ROUTER + "/blog/sec"; //安全
  static const String JUMP_HOME_OTHER = BASE_ROUTER + "/blog/other"; //其他
  static const String JUMP_BLINK_HOT = BASE_ROUTER + "/blink/hot"; //
  static const String JUMP_BLINK_FRESH = BASE_ROUTER + "/blink/fresh"; //Blink新鲜
  static const String JUMP_BLINK_RECOMMENT =
      BASE_ROUTER + "/blink/recomment"; //Blink推荐
  static const String JUMP_BLINK_FOLLOW =
      BASE_ROUTER + "/blink/follow"; //Blink关注
  static const String JUMP_BLOG_FOLLOWFEED =
      BASE_ROUTER + "/blog/followfeed"; //首页关注流
  static const String JUMP_BLOG_VIDEO = BASE_ROUTER + "/blog/liveVideo"; //首页直播
  static const String JUMP_LIVE_COLUMNLIST =
      BASE_ROUTER + "/live/columnList"; //首页直播
  static const String JUMP_HOME_HOT = BASE_ROUTER + "/blog/hotlisthome"; //首页热榜
  static const String JUMP_HOME_BLINK =
      BASE_ROUTER + "/blog/blinkhome"; //首页Blink
  static const String JUMP_WM = BASE_ROUTER + "/wm"; //一级标题
  static const String JUMP_SECOND_WM = BASE_ROUTER + "/wm_second"; //二级标题
  static const String JUMP_MESSAGE = BASE_ROUTER + "/message";
  static const String JUMP_BLOG_REPORT = BASE_ROUTER + "/blog/report"; // 博客举报
  static const String JUMP_LOGIN_QUICK = BASE_ROUTER + "/login/quick"; // 快速唤起登录
  static const String JUMP_BUY_VIP = BASE_ROUTER + "/buy/vip"; // 跳转会员购买页面
}
