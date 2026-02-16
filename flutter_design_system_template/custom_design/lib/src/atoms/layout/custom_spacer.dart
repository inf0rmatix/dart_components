import 'package:flutter/material.dart';

import '../../theme/custom_spacing.dart';

class CustomSpacer extends StatelessWidget {
  final double? width;
  final double? height;

  const CustomSpacer._({this.width, this.height});

  const CustomSpacer.s0_5({super.key})
    : width = CustomSpacing.s0_5,
      height = CustomSpacing.s0_5;
  const CustomSpacer.s1({super.key})
    : width = CustomSpacing.s1,
      height = CustomSpacing.s1;
  const CustomSpacer.s1_5({super.key})
    : width = CustomSpacing.s1_5,
      height = CustomSpacing.s1_5;
  const CustomSpacer.s2({super.key})
    : width = CustomSpacing.s2,
      height = CustomSpacing.s2;
  const CustomSpacer.s2_5({super.key})
    : width = CustomSpacing.s2_5,
      height = CustomSpacing.s2_5;
  const CustomSpacer.s3({super.key})
    : width = CustomSpacing.s3,
      height = CustomSpacing.s3;
  const CustomSpacer.s3_5({super.key})
    : width = CustomSpacing.s3_5,
      height = CustomSpacing.s3_5;
  const CustomSpacer.s4({super.key})
    : width = CustomSpacing.s4,
      height = CustomSpacing.s4;
  const CustomSpacer.s5({super.key})
    : width = CustomSpacing.s5,
      height = CustomSpacing.s5;
  const CustomSpacer.s6({super.key})
    : width = CustomSpacing.s6,
      height = CustomSpacing.s6;
  const CustomSpacer.s7({super.key})
    : width = CustomSpacing.s7,
      height = CustomSpacing.s7;
  const CustomSpacer.s8({super.key})
    : width = CustomSpacing.s8,
      height = CustomSpacing.s8;
  const CustomSpacer.s9({super.key})
    : width = CustomSpacing.s9,
      height = CustomSpacing.s9;
  const CustomSpacer.s10({super.key})
    : width = CustomSpacing.s10,
      height = CustomSpacing.s10;
  const CustomSpacer.s11({super.key})
    : width = CustomSpacing.s11,
      height = CustomSpacing.s11;
  const CustomSpacer.s12({super.key})
    : width = CustomSpacing.s12,
      height = CustomSpacing.s12;
  const CustomSpacer.s14({super.key})
    : width = CustomSpacing.s14,
      height = CustomSpacing.s14;
  const CustomSpacer.s16({super.key})
    : width = CustomSpacing.s16,
      height = CustomSpacing.s16;
  const CustomSpacer.s20({super.key})
    : width = CustomSpacing.s20,
      height = CustomSpacing.s20;
  const CustomSpacer.s24({super.key})
    : width = CustomSpacing.s24,
      height = CustomSpacing.s24;
  const CustomSpacer.s28({super.key})
    : width = CustomSpacing.s28,
      height = CustomSpacing.s28;
  const CustomSpacer.s32({super.key})
    : width = CustomSpacing.s32,
      height = CustomSpacing.s32;
  const CustomSpacer.s36({super.key})
    : width = CustomSpacing.s36,
      height = CustomSpacing.s36;
  const CustomSpacer.s40({super.key})
    : width = CustomSpacing.s40,
      height = CustomSpacing.s40;
  const CustomSpacer.s44({super.key})
    : width = CustomSpacing.s44,
      height = CustomSpacing.s44;
  const CustomSpacer.s48({super.key})
    : width = CustomSpacing.s48,
      height = CustomSpacing.s48;
  const CustomSpacer.s52({super.key})
    : width = CustomSpacing.s52,
      height = CustomSpacing.s52;
  const CustomSpacer.s56({super.key})
    : width = CustomSpacing.s56,
      height = CustomSpacing.s56;
  const CustomSpacer.s60({super.key})
    : width = CustomSpacing.s60,
      height = CustomSpacing.s60;
  const CustomSpacer.s64({super.key})
    : width = CustomSpacing.s64,
      height = CustomSpacing.s64;
  const CustomSpacer.s72({super.key})
    : width = CustomSpacing.s72,
      height = CustomSpacing.s72;
  const CustomSpacer.s80({super.key})
    : width = CustomSpacing.s80,
      height = CustomSpacing.s80;
  const CustomSpacer.s96({super.key})
    : width = CustomSpacing.s96,
      height = CustomSpacing.s96;

  static const vertical = _VerticalSpacers();
  static const horizontal = _HorizontalSpacers();

  @override
  Widget build(BuildContext context) => SizedBox(width: width, height: height);
}

class _VerticalSpacers {
  const _VerticalSpacers();

  final Widget s0_5 = const CustomSpacer._(height: CustomSpacing.s0_5);
  final Widget s1 = const CustomSpacer._(height: CustomSpacing.s1);
  final Widget s1_5 = const CustomSpacer._(height: CustomSpacing.s1_5);
  final Widget s2 = const CustomSpacer._(height: CustomSpacing.s2);
  final Widget s2_5 = const CustomSpacer._(height: CustomSpacing.s2_5);
  final Widget s3 = const CustomSpacer._(height: CustomSpacing.s3);
  final Widget s3_5 = const CustomSpacer._(height: CustomSpacing.s3_5);
  final Widget s4 = const CustomSpacer._(height: CustomSpacing.s4);
  final Widget s5 = const CustomSpacer._(height: CustomSpacing.s5);
  final Widget s6 = const CustomSpacer._(height: CustomSpacing.s6);
  final Widget s7 = const CustomSpacer._(height: CustomSpacing.s7);
  final Widget s8 = const CustomSpacer._(height: CustomSpacing.s8);
  final Widget s9 = const CustomSpacer._(height: CustomSpacing.s9);
  final Widget s10 = const CustomSpacer._(height: CustomSpacing.s10);
  final Widget s11 = const CustomSpacer._(height: CustomSpacing.s11);
  final Widget s12 = const CustomSpacer._(height: CustomSpacing.s12);
  final Widget s14 = const CustomSpacer._(height: CustomSpacing.s14);
  final Widget s16 = const CustomSpacer._(height: CustomSpacing.s16);
  final Widget s20 = const CustomSpacer._(height: CustomSpacing.s20);
  final Widget s24 = const CustomSpacer._(height: CustomSpacing.s24);
  final Widget s28 = const CustomSpacer._(height: CustomSpacing.s28);
  final Widget s32 = const CustomSpacer._(height: CustomSpacing.s32);
  final Widget s36 = const CustomSpacer._(height: CustomSpacing.s36);
  final Widget s40 = const CustomSpacer._(height: CustomSpacing.s40);
  final Widget s44 = const CustomSpacer._(height: CustomSpacing.s44);
  final Widget s48 = const CustomSpacer._(height: CustomSpacing.s48);
  final Widget s52 = const CustomSpacer._(height: CustomSpacing.s52);
  final Widget s56 = const CustomSpacer._(height: CustomSpacing.s56);
  final Widget s60 = const CustomSpacer._(height: CustomSpacing.s60);
  final Widget s64 = const CustomSpacer._(height: CustomSpacing.s64);
  final Widget s72 = const CustomSpacer._(height: CustomSpacing.s72);
  final Widget s80 = const CustomSpacer._(height: CustomSpacing.s80);
  final Widget s96 = const CustomSpacer._(height: CustomSpacing.s96);
}

class _HorizontalSpacers {
  const _HorizontalSpacers();

  final Widget s0_5 = const CustomSpacer._(width: CustomSpacing.s0_5);
  final Widget s1 = const CustomSpacer._(width: CustomSpacing.s1);
  final Widget s1_5 = const CustomSpacer._(width: CustomSpacing.s1_5);
  final Widget s2 = const CustomSpacer._(width: CustomSpacing.s2);
  final Widget s2_5 = const CustomSpacer._(width: CustomSpacing.s2_5);
  final Widget s3 = const CustomSpacer._(width: CustomSpacing.s3);
  final Widget s3_5 = const CustomSpacer._(width: CustomSpacing.s3_5);
  final Widget s4 = const CustomSpacer._(width: CustomSpacing.s4);
  final Widget s5 = const CustomSpacer._(width: CustomSpacing.s5);
  final Widget s6 = const CustomSpacer._(width: CustomSpacing.s6);
  final Widget s7 = const CustomSpacer._(width: CustomSpacing.s7);
  final Widget s8 = const CustomSpacer._(width: CustomSpacing.s8);
  final Widget s9 = const CustomSpacer._(width: CustomSpacing.s9);
  final Widget s10 = const CustomSpacer._(width: CustomSpacing.s10);
  final Widget s11 = const CustomSpacer._(width: CustomSpacing.s11);
  final Widget s12 = const CustomSpacer._(width: CustomSpacing.s12);
  final Widget s14 = const CustomSpacer._(width: CustomSpacing.s14);
  final Widget s16 = const CustomSpacer._(width: CustomSpacing.s16);
  final Widget s20 = const CustomSpacer._(width: CustomSpacing.s20);
  final Widget s24 = const CustomSpacer._(width: CustomSpacing.s24);
  final Widget s28 = const CustomSpacer._(width: CustomSpacing.s28);
  final Widget s32 = const CustomSpacer._(width: CustomSpacing.s32);
  final Widget s36 = const CustomSpacer._(width: CustomSpacing.s36);
  final Widget s40 = const CustomSpacer._(width: CustomSpacing.s40);
  final Widget s44 = const CustomSpacer._(width: CustomSpacing.s44);
  final Widget s48 = const CustomSpacer._(width: CustomSpacing.s48);
  final Widget s52 = const CustomSpacer._(width: CustomSpacing.s52);
  final Widget s56 = const CustomSpacer._(width: CustomSpacing.s56);
  final Widget s60 = const CustomSpacer._(width: CustomSpacing.s60);
  final Widget s64 = const CustomSpacer._(width: CustomSpacing.s64);
  final Widget s72 = const CustomSpacer._(width: CustomSpacing.s72);
  final Widget s80 = const CustomSpacer._(width: CustomSpacing.s80);
  final Widget s96 = const CustomSpacer._(width: CustomSpacing.s96);
}
