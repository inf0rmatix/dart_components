import 'package:flutter/material.dart';

import '../custom_theme_data.dart';
import '../custom_theme_extension.dart';
import 'custom_material_text_theme.dart';

class CustomMaterialTheme {
  static ThemeData dark(CustomThemeData themeData) {
    final base = ThemeData.from(
      colorScheme: themeData.colors.toColorScheme(Brightness.dark),
      textTheme: CustomMaterialTextTheme().textTheme,
    );

    return base.copyWith(
      extensions: base.extensions.values.followedBy(
        [CustomThemeExtension(theme: themeData)],
      ),
    );
  }

  static ThemeData light(CustomThemeData themeData) {
    final base = ThemeData.from(
      colorScheme: themeData.colors.toColorScheme(Brightness.light),
      textTheme: CustomMaterialTextTheme().textTheme,
    );

    return base.copyWith(
      extensions: base.extensions.values.followedBy(
        [CustomThemeExtension(theme: themeData)],
      ),
    );
  }
}
