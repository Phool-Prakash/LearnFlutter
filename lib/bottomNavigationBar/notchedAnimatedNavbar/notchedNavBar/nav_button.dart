import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton(
      {super.key,
      required this.position,
      required this.length,
      required this.index,
      required this.onTap,
      required this.child});
  final double position;
  final int length;
  final int index;
  final ValueChanged<int> onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final desiredPosition = 1.0 / length * index;
    final difference = (position - desiredPosition).abs();
    final verticalAlignment = 1 - length * difference;
    final opacity = length * difference;

    return Expanded(
        child: GestureDetector(
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 75.0,
        child: Transform.translate(
          offset:
              Offset(0, difference < 1.0 / length ? verticalAlignment * 40 : 0),
          child: Opacity(
            opacity: difference < 1.0 / length * 0.99 ? opacity : 1.0,
            child: child,
          ),
        ),
      ),
    ));
  }
}
