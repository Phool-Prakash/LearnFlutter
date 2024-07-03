import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Keyboardaccelerators extends StatefulWidget {
  const Keyboardaccelerators({super.key});

  @override
  State<Keyboardaccelerators> createState() => _KeyboardacceleratorsState();
}

class _KeyboardacceleratorsState extends State<Keyboardaccelerators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const SizedBox(
        height: 40,
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Focus(
              onKeyEvent: (node, event) {
                if (event is KeyDownEvent) {
                  print("Logical Key : ${event.logicalKey}");
                }
                return KeyEventResult.ignored;
              },
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              )),
        ),
      ),
    ]));
  }
}
