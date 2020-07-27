import 'package:flutterframework/core/bean/count_bean.dart';

countBeanFromJson(CountBean data, Map<String, dynamic> json) {
	if (json['count'] != null) {
		data.count = json['count']?.toInt();
	}
	return data;
}

Map<String, dynamic> countBeanToJson(CountBean entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['count'] = entity.count;
	return data;
}