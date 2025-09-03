import 'package:flutter/material.dart';

final class AppColorGenerator {
  const AppColorGenerator._();

  static Color fromIndex(int i) {
    final seed = (i + 1) * 1103515245 + 12345;
    final rgb = seed & 0x00FFFFFF;
    return Color(0xFF000000 | rgb);
  }
}
