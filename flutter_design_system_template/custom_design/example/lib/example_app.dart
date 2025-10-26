import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    const light = CustomThemeData.light();
    const dark = CustomThemeData.dark();

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CustomMaterialTheme.light(light),
      darkTheme: CustomMaterialTheme.dark(dark),
      home: const HomePage(),
    );
  }
}
