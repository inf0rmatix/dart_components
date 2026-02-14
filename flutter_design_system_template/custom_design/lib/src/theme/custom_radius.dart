import 'package:flutter/material.dart';

/// **RADIUS (Border Radius)**
///
/// A centralized system for controlling the roundness of UI elements.
///
/// Consistency Rules:
/// - Tiny/Inner elements (Checkbox, Badge): `xs` or `sm`
/// - Standard Components (Buttons, Inputs, Cards): `md`
/// - Large Containers (Modals, Sheets): `xl`
class CustomRadius {
  // Private constructor to prevent instantiation
  const CustomRadius._();

  /// Access raw double values (e.g., `CustomRadius.value.md`)
  // ignore: library_private_types_in_public_api
  static const _Values value = _Values();

  /// Access BorderRadius objects (e.g., `CustomRadius.all.md`)
  // ignore: library_private_types_in_public_api
  static const _All all = _All();
}

/// Holds the raw numeric values for rounding.
class _Values {
  const _Values();

  static const _xs = 2.0;
  static const _sm = 4.0;
  static const _md = 8.0;
  static const _lg = 12.0;
  static const _xl = 16.0;

  /// **2px** - Subtle rounding, used for checkboxes or tiny inner elements.
  final double xs = _xs;

  /// **4px** - Small rounding, used for tags, tooltips, or small buttons.
  final double sm = _sm;

  /// **8px** [DEFAULT] - The industry standard for buttons, text fields, and cards.
  final double md = _md;

  /// **12px** - Large rounding, used for softer-looking containers or featured cards.
  final double lg = _lg;

  /// **16px** - Extra large rounding, used for modals, bottom sheets, and drawers.
  final double xl = _xl;
}

/// Holds the BorderRadius objects for quick UI implementation.
class _All {
  const _All()
    : xs = const BorderRadius.all(Radius.circular(_Values._xs)),
      sm = const BorderRadius.all(Radius.circular(_Values._sm)),
      md = const BorderRadius.all(Radius.circular(_Values._md)),
      lg = const BorderRadius.all(Radius.circular(_Values._lg)),
      xl = const BorderRadius.all(Radius.circular(_Values._xl));

  final BorderRadius xs;
  final BorderRadius sm;
  final BorderRadius md;
  final BorderRadius lg;
  final BorderRadius xl;
}
