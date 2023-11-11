import 'package:flutter/material.dart';

enum AppRadius {
  /// circular 4
  xs(Radius.circular(4)),

  /// circular 8
  s(Radius.circular(8)),

  /// circular 12
  m(Radius.circular(12)),

  /// circular 16
  l(Radius.circular(16)),

  /// circular 20
  xl(Radius.circular(20)),

  /// circular 24
  xxl(Radius.circular(24)),

  /// circular 28
  xxxl(Radius.circular(28));

  final Radius value;
  const AppRadius(this.value);
}
