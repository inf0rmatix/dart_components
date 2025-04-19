import 'package:flutter/material.dart';

enum CustomTextStyle {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  labelLarge,
  labelMedium,
  labelSmall,
  bodyLarge,
  bodyMedium,
  bodySmall;

  TextStyle? asTextStyle(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return switch (this) {
      displayLarge => textTheme.displayLarge,
      displayMedium => textTheme.displayMedium,
      displaySmall => textTheme.displaySmall,
      headlineLarge => textTheme.headlineLarge,
      headlineMedium => textTheme.headlineMedium,
      headlineSmall => textTheme.headlineSmall,
      titleLarge => textTheme.titleLarge,
      titleMedium => textTheme.titleMedium,
      titleSmall => textTheme.titleSmall,
      labelLarge => textTheme.labelLarge,
      labelMedium => textTheme.labelMedium,
      labelSmall => textTheme.labelSmall,
      bodyLarge => textTheme.bodyLarge,
      bodyMedium => textTheme.bodyMedium,
      bodySmall => textTheme.bodySmall,
    };
  }
}

class CustomText extends StatelessWidget {
  final CustomTextStyle? _style;

  final String data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;
  final TextHeightBehavior? textHeightBehavior;
  final Color? selectionColor;

  const CustomText(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = null;

  /// Creates a display large text widget.
  ///
  /// Use for large hero-style text or important branding on landing pages.
  const CustomText.displayLarge(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.displayLarge;

  /// Creates a display medium text widget.
  ///
  /// Suitable for prominent section headers or large feature highlights.
  const CustomText.displayMedium(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.displayMedium;

  /// Creates a display small text widget.
  ///
  /// Ideal for medium-importance headers, like page titles or intros.
  const CustomText.displaySmall(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.displaySmall;

  /// Creates a headline large text widget.
  ///
  /// Use for page titles or large, readable headlines in dense layouts.
  const CustomText.headlineLarge(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.headlineLarge;

  /// Creates a headline medium text widget.
  ///
  /// Good for secondary headings or titles in dialogs and cards.
  const CustomText.headlineMedium(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.headlineMedium;

  /// Creates a headline small text widget.
  ///
  /// Designed for small headings, card titles, or labels needing emphasis.
  const CustomText.headlineSmall(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.headlineSmall;

  /// Creates a title large text widget.
  ///
  /// Use for high-emphasis titles in app bars or dialogs.
  const CustomText.titleLarge(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.titleLarge;

  /// Creates a title medium text widget.
  ///
  /// Ideal for medium-emphasis text like section headers or form titles.
  const CustomText.titleMedium(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.titleMedium;

  /// Creates a title small text widget.
  ///
  /// Use for low-emphasis text like subtitles or inline section headers.
  const CustomText.titleSmall(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.titleSmall;

  /// Creates a label large text widget.
  ///
  /// Suitable for buttons, tab labels, and actionable items.
  const CustomText.labelLarge(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.labelLarge;

  /// Creates a label medium text widget.
  ///
  /// Used for input labels, secondary buttons, or tooltips.
  const CustomText.labelMedium(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.labelMedium;

  /// Creates a label small text widget.
  ///
  /// Best for very small UI components like chips, tags, or footers.
  const CustomText.labelSmall(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.labelSmall;

  /// Creates a body large text widget.
  ///
  /// For high-emphasis content in paragraphs or description-heavy sections.
  const CustomText.bodyLarge(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.bodyLarge;

  /// Creates a body medium text widget.
  ///
  /// The default text style for most content areas and UIs.
  const CustomText.bodyMedium(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.bodyMedium;

  /// Creates a body small text widget.
  ///
  /// Used for less important supporting text like captions or annotations.
  const CustomText.bodySmall(
    this.data, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
  }) : _style = CustomTextStyle.bodySmall;

  @override
  Widget build(BuildContext context) {
    var textStyle = _style?.asTextStyle(context);

    if (style != null) {
      textStyle = textStyle?.merge(style) ?? style;
    }

    return Text(
      data,
      style: textStyle,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
      selectionColor: selectionColor,
    );
  }
}
