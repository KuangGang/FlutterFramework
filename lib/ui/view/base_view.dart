import 'package:flutter/material.dart';
import 'package:flutterframework/core/viewmodel/base_view_model.dart';
import 'package:provider/provider.dart';

import '../../dependency_assembly.dart';

class BaseView<T extends BaseViewModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onViewModelReady;

  BaseView({this.builder, this.onViewModelReady});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseViewModel> extends State<BaseView<T>> {
  T viewModel = getIt<T>();

  @override
  void initState() {
    if (widget.onViewModelReady != null) {
      widget.onViewModelReady(viewModel);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: viewModel,
      child: Consumer<T>(builder: widget.builder),
    );
  }
}
