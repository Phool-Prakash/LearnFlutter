import 'package:flutter/material.dart';

extension RevisePaddingExtension on Widget {
  Widget getPadAll(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Widget getPadSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );
}

extension RevisionVisibilityExtension on Widget {
  Widget revisionVisible(bool isVisible) =>
      isVisible ? this : const SizedBox.shrink();

  Widget revisionSizeHeight(double value) => SizedBox(
        height: value,
        child: this,
      );
}

extension RevisionTextSize on String {
  Widget textSize(double value) => Text(
        this,
        style: TextStyle(fontSize: value),
      );
}
