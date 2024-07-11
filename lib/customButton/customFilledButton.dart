import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 51,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
                colors: [Colors.green, Colors.lightGreen, Colors.greenAccent])),
        child: FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent),
            onPressed: () {},
            child: const Text('Filled Button')));
  }
}
