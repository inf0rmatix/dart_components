import 'package:flutter/material.dart';

import '../../extensions/build_context_theme_extension.dart';
import '../../theme/custom_spacing.dart';

class SegmentedProgress extends StatelessWidget {
  final int totalSteps;
  final int currentStepIndex;

  const SegmentedProgress({
    super.key,
    required this.totalSteps,
    required this.currentStepIndex,
  });

  @override
  Widget build(BuildContext context) => Row(
    spacing: CustomSpacing.s2,
    children: List.generate(
      totalSteps,
      (index) => Expanded(
        child: Container(
          height: 8,
          decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            color:
                index <= currentStepIndex
                    ? context.colorScheme.primary
                    : context.colorScheme.surfaceContainerHighest,
          ),
        ),
      ),
    ),
  );
}
