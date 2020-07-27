import 'package:flutterframework/core/bean/count_bean.dart';
import 'package:flutterframework/core/model/example_model.dart';

import 'base_view_model.dart';

class ExampleViewModel extends BaseViewModel {
  final ExampleModel _model = ExampleModel();

  List<CountBean> list = [
    CountBean(),
    CountBean(),
    CountBean(),
    CountBean(),
    CountBean(),
    CountBean(),
    CountBean()
  ];
  CountBean bean;

  initPageTwo() {
    bean = list[0];
  }

  pageOneAddCount() {
    list[0].count++;
    notifyListeners();
  }

  pageTwoAddCount() {
    bean?.count++;
    notifyListeners();
  }

  loadData() {
    _model.loadData("kkk").listen(
      (data) {
        if (data.code == 200) {
          notifyListeners();
        }
      },
      onError: (error) {
        print("加载失败");
      },
      onDone: () {
        print("加载完成");
      },
    );
  }
}
