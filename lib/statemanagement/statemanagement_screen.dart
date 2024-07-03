import 'package:flutter/material.dart';
import 'package:flutter_learn/statemanagement/inheritedWidget/mystatefulWidget.dart';

class StatemanagementScreen extends StatefulWidget {
  const StatemanagementScreen({super.key});

  @override
  State<StatemanagementScreen> createState() => _StatemanagementScreenState();
}

class _StatemanagementScreenState extends State<StatemanagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'StateManagement',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => MyStatefulWidget()));
              },
              child: const Text('InheritedWidget'))
        ],
      ),
    );
  }
}
