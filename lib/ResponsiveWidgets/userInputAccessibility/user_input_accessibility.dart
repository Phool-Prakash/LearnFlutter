import 'package:flutter/material.dart';
import 'package:flutter_learn/ResponsiveWidgets/userInputAccessibility/keyboardAccelerators.dart';

class UserInputAccessibility extends StatefulWidget {
  const UserInputAccessibility({super.key});

  @override
  State<UserInputAccessibility> createState() => _UserInputAccessibilityState();
}

class _UserInputAccessibilityState extends State<UserInputAccessibility> {
  @override
  Widget build(BuildContext context) {
    ///for custom scroll behavior, u can use the Listener widget
    ///Built-in Scrolling widgets like ScrollView or ListView
    return Listener(
      onPointerSignal: (event) {
        if (event is PointerCancelEvent) print('Scroll');
      },
      child: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Keyboardaccelerators()));
              },
              child: const Text('KeyboardAccelerator')),
          const Text('Saket'),
          const Text('Saket'),
          const Text('Saket'),
          const Text('Saket'),
          Text('Saket'),
          Text('Saket'),
          Text('Saket')
        ],
      ),
    );
  }
}
