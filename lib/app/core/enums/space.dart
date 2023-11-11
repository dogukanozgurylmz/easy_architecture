import 'package:flutter/material.dart';

enum SpaceHeight {
  /// 4
  xs(SizedBox(height: 4)),

  /// 8
  s(SizedBox(height: 8)),

  /// 12
  m(SizedBox(height: 12)),

  /// 16
  l(SizedBox(height: 16)),

  /// 20
  xl(SizedBox(height: 20)),

  /// 24
  xxl(SizedBox(height: 24));

  final SizedBox value;
  const SpaceHeight(this.value);
}

enum SpaceWidth {
  /// 4
  xs(SizedBox(width: 4)),

  /// 8
  s(SizedBox(width: 8)),

  /// 12
  m(SizedBox(width: 12)),

  /// 16
  l(SizedBox(width: 16)),

  /// 20
  xl(SizedBox(width: 20)),

  /// 24
  xxl(SizedBox(width: 24));

  final SizedBox value;
  const SpaceWidth(this.value);
}
