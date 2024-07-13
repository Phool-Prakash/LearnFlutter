import 'package:flutter/material.dart';

class ActionScreen extends StatefulWidget {
  const ActionScreen({super.key});

  @override
  State<ActionScreen> createState() => _ActionScreenState();
}

class _ActionScreenState extends State<ActionScreen> {
  final String appBarTitle = 'Action Screen';
  static const TextStyle textStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: textStyle,
        ),
      ),
    );
  }
}
