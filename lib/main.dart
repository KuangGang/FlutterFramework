import 'package:flutter/material.dart';
import 'package:flutterframework/dependency_assembly.dart';
import 'package:flutterframework/ui/view/example_view.dart';

void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExampleView(),
    );
  }
}