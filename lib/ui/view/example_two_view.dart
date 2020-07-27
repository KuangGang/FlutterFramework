import 'package:flutter/material.dart';
import 'package:flutterframework/core/viewmodel/example_view_model.dart';
import 'package:flutterframework/helper/res/colors.dart';
import 'package:flutterframework/ui/widget/fixed_size_text.dart';

import 'base_view.dart';

class ExampleTwoView extends StatelessWidget {
  Widget countWidget(ExampleViewModel viewModel) {
    return Scaffold(
      backgroundColor: ColorsR.white,
      appBar: AppBar(
        title: Text("example_page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FixedSizeText(
              'You have pushed the button this many times:',
            ),
            FixedSizeText(
              '${viewModel.bean.count}',
              style: TextStyle(
                  fontSize: 28,
                  color: ColorsR.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.pageTwoAddCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<ExampleViewModel>(
      onViewModelReady: (viewModel) {
        viewModel.initPageTwo();
        viewModel.loadData();
      },
      builder: (context, viewModel, child) => countWidget(viewModel),
    );
  }
}
