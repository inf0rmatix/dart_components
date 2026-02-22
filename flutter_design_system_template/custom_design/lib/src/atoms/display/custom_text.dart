import 'package:flutter/material.dart';

import '../../theme/custom_text_type.dart';

class CustomText extends StatelessWidget {
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
  final CustomTextType? type;

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
    this.type,
  });

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
  }) : type = CustomTextType.displayLarge;

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
  }) : type = CustomTextType.displayMedium;

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
  }) : type = CustomTextType.displaySmall;

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
  }) : type = CustomTextType.headlineLarge;

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
  }) : type = CustomTextType.headlineMedium;

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
  }) : type = CustomTextType.headlineSmall;

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
  }) : type = CustomTextType.titleLarge;

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
  }) : type = CustomTextType.titleMedium;

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
  }) : type = CustomTextType.titleSmall;

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
  }) : type = CustomTextType.labelLarge;

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
  }) : type = CustomTextType.labelMedium;

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
  }) : type = CustomTextType.labelSmall;

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
  }) : type = CustomTextType.bodyLarge;

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
  }) : type = CustomTextType.bodyMedium;

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
  }) : type = CustomTextType.bodySmall;

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    TextStyle? finalTextStyle = defaultTextStyle.style;

    // Apply the CookBookTextType style if provided
    if (type != null) {
      finalTextStyle = finalTextStyle
          .merge(type!.textStyle(context))
          .copyWith(color: defaultTextStyle.style.color);
    }

    // Apply the user-provided style if provided
    if (style != null) {
      finalTextStyle = finalTextStyle.merge(style);
    }

    return Text(
      data,
      style: finalTextStyle,
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
