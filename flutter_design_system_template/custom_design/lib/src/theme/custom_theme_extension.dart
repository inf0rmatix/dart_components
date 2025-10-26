import 'package:flutter/material.dart';

import 'custom_theme_data.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  const CustomThemeExtension({
    required this.theme,
  });

  final CustomThemeData theme;

  @override
  CustomThemeExtension copyWith({
    CustomThemeData? theme,
  }) => CustomThemeExtension(
    theme: theme ?? this.theme,
  );

  @override
  CustomThemeExtension lerp(
    ThemeExtension<CustomThemeExtension>? other,
    double t,
  ) {
    if (other is! CustomThemeExtension) {
      return this;
    }

    return CustomThemeExtension(
      theme: CustomThemeData.lerp(theme, other.theme, t),
    );
  }

  static CustomThemeData of(BuildContext context) {
    final extension = Theme.of(context).extension<CustomThemeExtension>();

    assert(extension != null, 'No CustomThemeExtension found in ThemeData');

    return extension!.theme;
  }
}
