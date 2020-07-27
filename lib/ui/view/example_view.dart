import 'package:flutter/material.dart';
import 'package:flutterframework/core/viewmodel/example_view_model.dart';
import 'package:flutterframework/helper/res/colors.dart';
import 'package:flutterframework/ui/widget/fixed_size_text.dart';

import 'base_view.dart';
import 'example_two_view.dart';

class ExampleView extends StatelessWidget {
  Widget countWidget(BuildContext context, ExampleViewModel viewModel) {
    return Scaffold(
      backgroundColor: ColorsR.red2,
      appBar: AppBar(
        title: Text("example_page1"),
      ),
      body: InkWell(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FixedSizeText(
                'You have pushed the button this many times:',
              ),
              FixedSizeText(
                '${viewModel.list[0].count}',
                style: TextStyle(
                    fontSize: 28,
                    color: ColorsR.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ExampleTwoView()),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.pageOneAddCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ExampleViewModel>(
      onViewModelReady: (viewModel) {
        viewModel.loadData();
      },
      builder: (context, viewModel, child) => countWidget(context, viewModel),
    );
  }
}
