import 'package:flutter/material.dart';

import 'custom_theme_data.dart';
import 'custom_theme_extension.dart';

class CustomTheme {
  static CustomThemeData of(BuildContext context) {
    final ext = Theme.of(context).extension<CustomThemeExtension>();
    assert(ext != null, 'No CustomThemeExtension found in ThemeData');
    return ext!.theme;
  }
}
