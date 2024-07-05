import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/example2/example2InheritedWidget.dart';

class MyColorPage extends StatelessWidget {
  const MyColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FrogColor(
        color: Colors.blue,
        child: Builder(
          builder: (BuildContext innerContext) {
            return Center(
              child: Text(
                'Hello Frog',
                style: TextStyle(color: FrogColor.of(innerContext)?.color),
              ),
            );
          },
        ),
      ),
    );
  }
}
