import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    const light = CustomThemeData.light();
    const dark = CustomThemeData.dark();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomMaterialTheme().light(light),
      darkTheme: CustomMaterialTheme().dark(dark),
      themeMode: _themeMode,
      home: HomePage(
        themeMode: _themeMode,
        onThemeChanged: _toggleTheme,
      ),
    );
  }
}
