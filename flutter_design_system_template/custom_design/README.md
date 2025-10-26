# custom_design

A minimal, extensible Flutter design system built to be extended using atomic
design principles.

**Features**:

- Theme tokens: `CustomThemeData` composed of `CustomColors` and
  `CustomTypography`
- Material bridge: `CustomMaterialTheme.light/dark` generates `ThemeData`
- Context access: `CustomTheme.of(context)` for token access
- Atomic components: Start with `CustomText`, extend with your own
  atoms/molecules/organisms

**Use this package as a template to build your own design system.**

## Atomic design

This package follows atomic design to encourage scalable composition:

- **Atoms**: Small, single-purpose UI elements (e.g., text, icons, inputs).
  Example: `CustomText`.
- **Molecules**: Simple combinations of atoms that form a single unit (e.g.,
  labeled input, search field).
- **Organisms**: Complex components composed of molecules and atoms (e.g., app
  bars, cards, forms).

**Folder conventions**:

- Organize by type within each group: `atoms/display`, `atoms/input`
- Extend categories as needed: `feedback`, `navigation`, `layout`

## Install

Add as a path dependency (adjust path to your workspace):

```yaml
dependencies:
  flutter: any
  custom_design:
    path: flutter_design_system_template/custom_design
```

## Quick start

```dart
import 'package:custom_design/custom_design.dart';

void main() {
  const light = CustomThemeData.light();
  const dark = CustomThemeData.dark();

  runApp(MaterialApp(
    theme: CustomMaterialTheme.light(light),
    darkTheme: CustomMaterialTheme.dark(dark),
    themeMode: ThemeMode.system,
    home: const MyHomePage(),
  ));
}
```

## Usage

**Access tokens anywhere:**

```dart
final design = CustomTheme.of(context);
final primary = design.colors.primary;
```

**Use semantic text variants:**

```dart
CustomText.titleMedium('Section title');
CustomText.bodySmall(
  'Caption',
  style: TextStyle(color: CustomTheme.of(context).colors.onSurface),
);
```

## Customize tokens

Start from a preset and override tokens with `copyWith`:

```dart
final myDesign = CustomThemeData.light().copyWith(
  colors: CustomColors(
    primary: const Color(0xFF0057FF),
    secondary: CustomColors.paynesGray,
    accent: CustomColors.zomp,
    onPrimary: CustomColors.white,
    onSecondary: CustomColors.white,
    surface: CustomColors.white,
    onSurface: CustomColors.black,
    error: CustomColors.red,
    warning: CustomColors.orange,
    success: CustomColors.green,
    info: CustomColors.darkCyan,
  ),
);

final theme = CustomMaterialTheme.light(myDesign);
```

## Extend Material component themes

Add custom component themes under `theme/material` (e.g., button themes):

```dart
final base = CustomMaterialTheme.light(const CustomThemeData.light());
final themed = base.copyWith(
  filledButtonTheme: CustomFilledButtonTheme(),
);
```

## Public API

- `CustomColors`, `CustomTypography`, `CustomThemeData`
- `CustomThemeExtension`, `CustomTheme`
- `CustomMaterialTheme`
- `CustomText`, `CustomTextType`

## Example

See `custom_design/example/` for a runnable demo.

## License

See `LICENSE` for details.
