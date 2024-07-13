import 'package:flutter/material.dart';

class ExtendedFloatingActionButton extends StatefulWidget {
  const ExtendedFloatingActionButton({super.key});

  @override
  State<ExtendedFloatingActionButton> createState() => _ExtendedFloatingActionButtonState();
}

class _ExtendedFloatingActionButtonState extends State<ExtendedFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ExtendedFloatingActionButton(),
      appBar: AppBar(title:const Text('eFActionButton'),),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

        ],
      ),
    );
  }
}
