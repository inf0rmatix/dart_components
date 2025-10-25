import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_theme_data.dart';

class CustomTheme extends InheritedWidget {
  final CustomThemeData theme;
  final CustomThemeData? darkTheme;

  const CustomTheme({
    super.key,
    required this.theme,
    this.darkTheme,
    required super.child,
  });

  static CustomThemeData current(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);

    final instance = of(context);

    return switch (brightness) {
      Brightness.light => instance.theme,
      Brightness.dark => instance.darkTheme ?? instance.theme,
    };
  }

  static CustomTheme of(BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<CustomTheme>();

    assert(instance != null, 'No CustomTheme found in context');

    return instance!;
  }

  @override
  bool updateShouldNotify(CustomTheme oldWidget) =>
      theme != oldWidget.theme || darkTheme != oldWidget.darkTheme;
}
