import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter Demo',
    theme: CustomMaterialTheme.light(),
    darkTheme: CustomMaterialTheme.dark(),
    home: const HomePage(),
  );
}
