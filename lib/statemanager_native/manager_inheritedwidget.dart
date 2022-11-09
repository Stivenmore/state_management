import 'package:flutter/material.dart';

class ManagerInheritedWidget extends InheritedWidget {
  const ManagerInheritedWidget(
      {super.key, required Widget child, required this.count})
      : super(child: child);

  final int count;

  static ManagerInheritedWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ManagerInheritedWidget>()!;

  @override
  bool updateShouldNotify(covariant ManagerInheritedWidget oldWidget) =>
      oldWidget.count != count;
}
