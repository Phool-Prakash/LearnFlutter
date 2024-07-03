import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/mychildwidget.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/myinheritedwidget.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _data = 0;

  void _incrementData() {
    setState(() {
      _data++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
        data: _data,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const MyChildWidget(),
            ElevatedButton(
                onPressed: _incrementData, child: const Text('Increment'))
          ],
        ));
  }
}
