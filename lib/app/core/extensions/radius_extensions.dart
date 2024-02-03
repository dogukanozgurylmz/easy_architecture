import 'package:flutter/material.dart';

extension RadiusExtension on Widget {
  Widget circularRadius(double value) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(value),
      child: this,
    );
  }

  Widget horizontalRadius({
    double left = 0,
    double right = 0,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(left),
        right: Radius.circular(right),
      ),
      child: this,
    );
  }

  Widget verticalRadius({
    double top = 0,
    double bottom = 0,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(top),
        bottom: Radius.circular(bottom),
      ),
      child: this,
    );
  }
}
