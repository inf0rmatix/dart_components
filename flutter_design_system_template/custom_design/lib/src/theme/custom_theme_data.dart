import 'custom_colors.dart';
import 'custom_typography.dart';

class CustomThemeData {
  const CustomThemeData.light({
    this.colors = const CustomColors.light(),
    this.typography = const CustomTypography.light(),
  });

  const CustomThemeData.dark({
    this.colors = const CustomColors.dark(),
    this.typography = const CustomTypography.dark(),
  });

  final CustomColors colors;
  final CustomTypography typography;

  CustomThemeData copyWith({
    CustomColors? colors,
    CustomTypography? typography,
  }) => CustomThemeData._(
    colors: colors ?? this.colors,
    typography: typography ?? this.typography,
  );

  static CustomThemeData lerp(CustomThemeData a, CustomThemeData b, double t) =>
      CustomThemeData._(
        colors: CustomColors.lerp(a.colors, b.colors, t),
        typography: CustomTypography.lerp(a.typography, b.typography, t),
      );

  const CustomThemeData._({
    required this.colors,
    required this.typography,
  });
}
