import 'package:flutter/material.dart';

const double _kIndicatorHeight = 32;
const double _kIndicatorWidth = 64;
const double _kMaxLabelTextScaleFactor = 1.3;

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
      this.overlayColor})
      : assert(destinations.length >= 2),
        assert(0 <= selectedIndex && selectedIndex < destinations.length);

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

  @override
  Widget build(BuildContext context) {
    //1
    // final NavigationBarThemeData defaults = _defaultsFor(context);

    final NavigationBarThemeData navigationBarTheme =
        NavigationBarTheme.of(context);
    final double effectiveHeight = height ?? navigationBarTheme.height!;
    final NavigationDestinationLabelBehavior? effectiveLabelBehavior =
        labelBehavior ?? navigationBarTheme.labelBehavior;

    return Material(
      color: backgroundColor ?? navigationBarTheme.backgroundColor,
      elevation: elevation ?? navigationBarTheme.elevation!,
      shadowColor: shadowColor ?? navigationBarTheme.shadowColor,
      surfaceTintColor: surfaceTintColor ?? navigationBarTheme.surfaceTintColor,
      child: SafeArea(
        child: SizedBox(
          height: effectiveHeight,
          child: Row(children: <Widget>[
          ]),
        ),
      ),
    );
  }
}
