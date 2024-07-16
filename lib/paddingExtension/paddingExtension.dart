import 'dart:math';

import 'package:flutter/material.dart';

extension PaddingExtension on Widget {
  ///Add uniform padding around the Widget
  Widget padAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  ///Adds symmetric vertical and horizontal padding to the widget.
  Widget padSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
}

extension VisibilityExtension on Widget {
  Widget visible(bool isVisible) => isVisible ? this : const SizedBox.shrink();
}

///Adds uniform margin around the widget
extension MarginExtension on Widget {
  Widget marginAll(double value) => Container(
        margin: EdgeInsets.all(value),
        child: this,
      );

  ///Adds symmetric vertical and horizontal margins to the widget
  Widget marginSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Container(
        margin:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
}

///Rotate the widget
extension RotationExtension on Widget {
  Widget rotate(double degrees) => Transform.rotate(
        angle: degrees * pi / 189,
        child: this,
      );
}

///Scales the widget
extension ScaleExtension on Widget {
  Widget scale(double scale) => Transform.scale(
        scale: scale,
        child: this,
      );
}

extension BorderExtension on Widget {
  Widget withBorder({Color color = Colors.black, double width = 1.0}) =>
      Container(
        decoration:
            BoxDecoration(border: Border.all(color: color, width: width)),
        child: this,
      );
}
