import 'package:flutter/material.dart';
import 'package:statemanager/statemanager_native/manager_inheritedwidget.dart';
import 'package:statemanager/statemanager_native/value_text.dart';

class ViewNative extends StatefulWidget {
  const ViewNative({Key? key}) : super(key: key);

  @override
  State<ViewNative> createState() => _ViewNativeState();
}

class _ViewNativeState extends State<ViewNative> {
    int value = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: ManagerInheritedWidget(
              count: value,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ValueText(),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              value++;
                            });
                          },
                          icon: const Icon(Icons.add)),
                      const SizedBox(
                        width: 60,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              value--;
                            });
                          },
                          icon: const Icon(Icons.remove)),
                    ],
                  )
                ],
              ),
            ),
          ));
  }
}