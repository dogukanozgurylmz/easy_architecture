import 'package:flutter/widgets.dart';

enum AppPaddingAll {
  /// all 4
  xs(EdgeInsets.all(4)),

  /// all 6
  s(EdgeInsets.all(6)),

  /// all 8
  m(EdgeInsets.all(8)),

  /// all 10
  l(EdgeInsets.all(10)),

  /// all 12
  xl(EdgeInsets.all(12));

  final EdgeInsets value;
  const AppPaddingAll(this.value);
}

enum AppPaddingTop {
  /// top 4
  xs(EdgeInsets.only(top: 4)),

  /// top 6
  s(EdgeInsets.only(top: 6)),

  /// top 8
  m(EdgeInsets.only(top: 8)),

  /// top 10
  l(EdgeInsets.only(top: 10)),

  /// top 12
  xl(EdgeInsets.only(top: 12)),

  /// top 16
  xxl(EdgeInsets.only(top: 16));

  final EdgeInsets value;
  const AppPaddingTop(this.value);
}

enum AppPaddingBottom {
  /// bottom 4
  xs(EdgeInsets.only(bottom: 4)),

  /// bottom 6
  s(EdgeInsets.only(bottom: 6)),

  /// bottom 8
  m(EdgeInsets.only(bottom: 8)),

  /// bottom 10
  l(EdgeInsets.only(bottom: 10)),

  /// bottom 12
  xl(EdgeInsets.only(bottom: 12)),

  /// bottom 16
  xxl(EdgeInsets.only(bottom: 16));

  final EdgeInsets value;
  const AppPaddingBottom(this.value);
}

enum AppPaddingLeft {
  /// left 4
  xs(EdgeInsets.only(left: 4)),

  /// left 6
  s(EdgeInsets.only(left: 6)),

  /// left 8
  m(EdgeInsets.only(left: 8)),

  /// left 10
  l(EdgeInsets.only(left: 10)),

  /// left 12
  xl(EdgeInsets.only(left: 12)),

  /// left 16
  xxl(EdgeInsets.only(left: 16));

  final EdgeInsets value;
  const AppPaddingLeft(this.value);
}

enum AppPaddingRight {
  /// right 4
  xs(EdgeInsets.only(right: 4)),

  /// right 6
  s(EdgeInsets.only(right: 6)),

  /// right 8
  m(EdgeInsets.only(right: 8)),

  /// right 10
  l(EdgeInsets.only(right: 10)),

  /// right 12
  xl(EdgeInsets.only(right: 12)),

  /// right 16
  xxl(EdgeInsets.only(right: 16));

  final EdgeInsets value;
  const AppPaddingRight(this.value);
}

enum AppPaddingHorizontal {
  /// horizontal 4
  xs(EdgeInsets.symmetric(horizontal: 4)),

  /// horizontal 6
  s(EdgeInsets.symmetric(horizontal: 6)),

  /// horizontal 8
  m(EdgeInsets.symmetric(horizontal: 8)),

  /// horizontal 10
  l(EdgeInsets.symmetric(horizontal: 10)),

  /// horizontal 12
  xl(EdgeInsets.symmetric(horizontal: 12)),

  /// horizontal 16
  xxl(EdgeInsets.symmetric(horizontal: 16));

  final EdgeInsets value;
  const AppPaddingHorizontal(this.value);
}

enum AppPaddingVertical {
  /// vertical 4
  xs(EdgeInsets.symmetric(vertical: 4)),

  /// vertical 6
  s(EdgeInsets.symmetric(vertical: 6)),

  /// vertical 8
  m(EdgeInsets.symmetric(vertical: 8)),

  /// vertical 10
  l(EdgeInsets.symmetric(vertical: 10)),

  /// vertical 12
  xl(EdgeInsets.symmetric(vertical: 12)),

  /// vertical 16
  xxl(EdgeInsets.symmetric(vertical: 16));

  final EdgeInsets value;
  const AppPaddingVertical(this.value);
}
