import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.width,
    this.height,
    this.textColor,
    this.buttonColor,
    this.textSize,
    this.elevation,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.letterSpacing,
    this.buttonStyle,
  });
  final String text;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final BorderRadius? borderRadius;
  final Color? textColor, buttonColor, borderColor;
  final double? width, height, textSize, elevation, borderWidth, letterSpacing;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 250.0,
      height: height ?? 65.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: buttonStyle ??
              ElevatedButton.styleFrom(
                  iconColor: Colors.black,
                  surfaceTintColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: borderRadius ?? BorderRadius.circular(12),
                      side: BorderSide(
                          color: borderColor ?? Colors.white24,
                          width: borderWidth ?? .5)),
                  elevation: elevation ?? 0,
                  backgroundColor: buttonColor ?? Colors.deepPurple),
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                    letterSpacing: letterSpacing ?? 1,
                    color: textColor ?? Colors.white,
                    fontSize: textSize ?? 15),
          ),
        ),
      ),
    );
  }
}
