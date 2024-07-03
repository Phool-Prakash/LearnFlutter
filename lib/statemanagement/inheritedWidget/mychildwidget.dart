import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/myinheritedwidget.dart';

class MyChildWidget extends StatelessWidget {
  const MyChildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = MyInheritedWidget.of(context);
    return Container(
      color: Colors.white,
      child: Center(child:  Text(
        'Data: ${inheritedWidget?.data ?? 0}',
        style: const TextStyle(fontSize: 24),
      ),)
    );
  }
}
