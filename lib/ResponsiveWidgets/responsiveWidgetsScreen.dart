import 'package:flutter/material.dart';

class ResponsiveWidgets extends StatefulWidget {
  const ResponsiveWidgets({super.key});

  @override
  State<ResponsiveWidgets> createState() => _ResponsiveWidgetsState();
}

class _ResponsiveWidgetsState extends State<ResponsiveWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Widgets'),
      ),
    ));
  }
}
