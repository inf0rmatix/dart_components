import 'custom_typography.dart';

class CustomThemeData {
  const CustomThemeData.light({
    this.typography = const CustomTypography.light(),
  });

  const CustomThemeData.dark({
    this.typography = const CustomTypography.dark(),
  });

  final CustomTypography typography;
}
