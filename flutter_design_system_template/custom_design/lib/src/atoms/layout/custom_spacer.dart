import 'package:flutter/material.dart';

import '../../theme/custom_spacing.dart';

class CustomSpacer extends StatelessWidget {
  final double size;

  const CustomSpacer.s1({super.key}) : size = CustomSpacing.s1;
  const CustomSpacer.s2({super.key}) : size = CustomSpacing.s2;
  const CustomSpacer.s3({super.key}) : size = CustomSpacing.s3;
  const CustomSpacer.s4({super.key}) : size = CustomSpacing.s4;
  const CustomSpacer.s5({super.key}) : size = CustomSpacing.s5;
  const CustomSpacer.s6({super.key}) : size = CustomSpacing.s6;
  const CustomSpacer.s8({super.key}) : size = CustomSpacing.s8;
  const CustomSpacer.s10({super.key}) : size = CustomSpacing.s10;
  const CustomSpacer.s12({super.key}) : size = CustomSpacing.s12;
  const CustomSpacer.s16({super.key}) : size = CustomSpacing.s16;

  @override
  Widget build(BuildContext context) => SizedBox.square(dimension: size);
}
