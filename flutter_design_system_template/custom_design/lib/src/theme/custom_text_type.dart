import 'package:flutter/material.dart';

enum CustomTextType {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  labelLarge,
  labelMedium,
  labelSmall,
  bodyLarge,
  bodyMedium,
  bodySmall;

  TextStyle? textStyle(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return switch (this) {
      displayLarge => textTheme.displayLarge,
      displayMedium => textTheme.displayMedium,
      displaySmall => textTheme.displaySmall,
      headlineLarge => textTheme.headlineLarge,
      headlineMedium => textTheme.headlineMedium,
      headlineSmall => textTheme.headlineSmall,
      titleLarge => textTheme.titleLarge,
      titleMedium => textTheme.titleMedium,
      titleSmall => textTheme.titleSmall,
      labelLarge => textTheme.labelLarge,
      labelMedium => textTheme.labelMedium,
      labelSmall => textTheme.labelSmall,
      bodyLarge => textTheme.bodyLarge,
      bodyMedium => textTheme.bodyMedium,
      bodySmall => textTheme.bodySmall,
    };
  }
}
