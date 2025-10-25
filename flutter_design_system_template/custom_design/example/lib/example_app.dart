import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) => CustomTheme(
    theme: const CustomThemeData.light(),
    darkTheme: const CustomThemeData.dark(),
    child: Builder(
      builder: (context) => MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: CustomMaterialTheme.light(
          CustomTheme.of(context).theme,
        ),
        darkTheme: CustomMaterialTheme.dark(
          CustomTheme.of(context).darkTheme ?? CustomTheme.of(context).theme,
        ),
        home: const HomePage(),
      ),
    ),
  );
}
