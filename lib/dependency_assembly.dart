import 'package:get_it/get_it.dart';

import 'core/viewmodel/example_view_model.dart';

GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton(ExampleViewModel());
}
