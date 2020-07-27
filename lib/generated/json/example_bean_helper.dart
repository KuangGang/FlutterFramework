import 'package:flutterframework/core/bean/example_bean.dart';

exampleBeanFromJson(ExampleBean data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = json['result']?.toString();
	}
	return data;
}

Map<String, dynamic> exampleBeanToJson(ExampleBean entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['result'] = entity.result;
	return data;
}