import 'package:flutter/material.dart';
import 'package:statemanager/statemanager_native/manager_inheritedwidget.dart';

class ValueText extends StatelessWidget {
  const ValueText({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      ManagerInheritedWidget.of(context).count.toString(),
      style: const TextStyle(fontSize: 20),
    );
  }
}
