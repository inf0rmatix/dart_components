import 'package:flutter/widgets.dart';

import 'custom_theme_data.dart';

class CustomTheme extends InheritedWidget {
  final CustomThemeData data;

  const CustomTheme({
    super.key,
    required this.data,
    required super.child,
  });

  static CustomThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<CustomTheme>();

    assert(theme != null, 'No CustomTheme found in context');

    return theme!.data;
  }

  @override
  bool updateShouldNotify(CustomTheme oldWidget) => data != oldWidget.data;
}
