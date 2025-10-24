import 'package:flutter/material.dart';

import 'custom_material_text_theme.dart';

class CustomMaterialTheme {
  static ThemeData dark() => ThemeData.from(
    colorScheme: const ColorScheme.dark(),
    textTheme: CustomMaterialTextTheme().textTheme,
  );

  static ThemeData light() => ThemeData.from(
    colorScheme: const ColorScheme.light(),
    textTheme: CustomMaterialTextTheme().textTheme,
  );
}
