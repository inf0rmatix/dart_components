import 'package:flutter/material.dart';

import '../../theme/custom_spacing.dart';

class CustomSpacerSliver extends StatelessWidget {
  final double size;

  const CustomSpacerSliver.s1({super.key}) : size = CustomSpacing.s1;
  const CustomSpacerSliver.s2({super.key}) : size = CustomSpacing.s2;
  const CustomSpacerSliver.s3({super.key}) : size = CustomSpacing.s3;
  const CustomSpacerSliver.s4({super.key}) : size = CustomSpacing.s4;
  const CustomSpacerSliver.s5({super.key}) : size = CustomSpacing.s5;
  const CustomSpacerSliver.s6({super.key}) : size = CustomSpacing.s6;
  const CustomSpacerSliver.s8({super.key}) : size = CustomSpacing.s8;
  const CustomSpacerSliver.s10({super.key}) : size = CustomSpacing.s10;
  const CustomSpacerSliver.s12({super.key}) : size = CustomSpacing.s12;
  const CustomSpacerSliver.s16({super.key}) : size = CustomSpacing.s16;

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
    child: SizedBox.square(dimension: size),
  );
}
