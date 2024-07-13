import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.color1,
      this.color2,
      this.color3});
  final VoidCallback onPressed;
  final String text;
  final Color? color1, color2, color3;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 51,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(colors: [
              color1 ?? Colors.green,
              color2 ?? Colors.lightGreen,
              color3 ?? Colors.greenAccent
            ])),
        child: FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent),
            onPressed: onPressed,
            child: Text(text)));
  }
}
