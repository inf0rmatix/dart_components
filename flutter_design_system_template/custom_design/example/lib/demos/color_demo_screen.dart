import 'package:custom_design/custom_design.dart';
import 'package:flutter/material.dart';

class ColorDemoScreen extends StatelessWidget {
  const ColorDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeColors = CustomTheme.of(context).colors;

    final themeSwatches = <(String, Color)>[
      ('Primary', themeColors.primary),
      ('On Primary', themeColors.onPrimary),
      ('Secondary', themeColors.secondary),
      ('On Secondary', themeColors.onSecondary),
      ('Accent', themeColors.accent),
      ('Background', themeColors.background),
      ('On Background', themeColors.onBackground),
      ('Error', themeColors.error),
      ('Warning', themeColors.warning),
      ('Success', themeColors.success),
      ('Info', themeColors.info),
    ];

    final paletteSwatches = <(String, Color)>[
      ('Cerulean (brand)', CustomColors.cerulean),
      ('Payne\'s Gray (brand)', CustomColors.paynesGray),
      ('Zomp (accent)', CustomColors.zomp),
      ('Imperial Red', CustomColors.imperialRed),
      ('Orange Crayola', CustomColors.orangeCrayola),
      ('Carrot Orange', CustomColors.carrotOrange),
      ('Coral', CustomColors.coral),
      ('Saffron', CustomColors.saffron),
      ('Pistachio', CustomColors.pistachio),
      ('Dark Cyan', CustomColors.darkCyan),
      ('White', CustomColors.white),
      ('Black', CustomColors.black),
      ('Red', CustomColors.red),
      ('Orange', CustomColors.orange),
      ('Green', CustomColors.green),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: _SectionHeader(title: 'Theme Colors'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                // childAspectRatio: 3 / 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final (label, color) = themeSwatches[index];
                  return _ColorCard(label: label, color: color);
                },
                childCount: themeSwatches.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: _SectionHeader(title: 'Palette')),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                // childAspectRatio: 3 / 2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final (label, color) = paletteSwatches[index];
                  return _ColorCard(label: label, color: color);
                },
                childCount: paletteSwatches.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(
      top: 32.0,
      bottom: 16.0,
      left: 16.0,
      right: 16.0,
    ),
    child: CustomText.titleMedium(
      title,
    ),
  );
}

class _ColorCard extends StatelessWidget {
  const _ColorCard({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final brightness = ThemeData.estimateBrightnessForColor(color);
    final textColor = brightness == Brightness.dark
        ? Colors.white
        : Colors.black;

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: ShapeDecoration(
                  color: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    label,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: textColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CustomText.labelLarge(
              _toHex(color),
            ),
          ),
        ],
      ),
    );
  }

  String _toHex(Color color) {
    final red = ((color.r * 255.0).round() & 0xff)
        .toRadixString(16)
        .padLeft(2, '0');

    final green = ((color.g * 255.0).round() & 0xff)
        .toRadixString(16)
        .padLeft(2, '0');

    final blue = ((color.b * 255.0).round() & 0xff)
        .toRadixString(16)
        .padLeft(2, '0');

    return '#$red$green$blue'.toUpperCase();
  }
}
