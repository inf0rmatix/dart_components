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
}
