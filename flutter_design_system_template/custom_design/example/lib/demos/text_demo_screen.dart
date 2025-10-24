import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

class TextDemoScreen extends StatelessWidget {
  const TextDemoScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        for (final textType in CustomTextType.values)
          CustomText(
            textType.name,
            type: textType,
          ),
      ],
    ),
  );
}
