import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar(
      {super.key,
      this.animationDuration,
      required this.selectedIndex,
      required this.destinations,
      required this.onDestinationSelected,
      this.elevation,
      this.height,
      this.backgroundColor,
      this.shadowColor,
      this.surfaceTintColor,
      this.indicatorColor,
      this.labelBehavior,
      this.overlayColor});
  final Duration? animationDuration;
  final int selectedIndex;
  final List<Widget> destinations;
  final ValueChanged<int> onDestinationSelected;
  final double? elevation, height;
  final Color? backgroundColor, shadowColor, surfaceTintColor, indicatorColor;
  final NavigationDestinationLabelBehavior? labelBehavior;
  final WidgetStateProperty<Color?>? overlayColor;

  VoidCallback _handleTap(int index) {
    return onDestinationSelected != null
        ? () => onDestinationSelected(index)
        : () {};
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
