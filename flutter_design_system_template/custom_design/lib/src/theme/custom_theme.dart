import 'package:flutter/widgets.dart';

import 'custom_theme_data.dart';

class CustomTheme extends InheritedWidget {
  final CustomThemeData data;

  const CustomTheme({super.key, required super.child, required this.data});

  static CustomThemeData of(BuildContext context) {
    final CustomTheme? theme =
        context.dependOnInheritedWidgetOfExactType<CustomTheme>();

    assert(theme != null, 'No CustomTheme found in context');

    return theme!.data;
  }

  @override
  bool updateShouldNotify(CustomTheme oldWidget) => data != oldWidget.data;
}
