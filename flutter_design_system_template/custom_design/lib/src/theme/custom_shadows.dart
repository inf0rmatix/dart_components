import 'package:flutter/material.dart';

/// A centralized system for controlling the elevation and depth of UI elements,
/// based on Tailwind CSS v4's shadow system.
///
/// Consistency Rules:
/// - Subtle/Small elements (Buttons, Small Cards): `xs` or `sm`
/// - Standard Components (Dropdowns, Cards): `md`
/// - Large Containers (Modals, Featured Cards): `lg` or `xl`
/// - Deep Overlays (Popovers, Major Modals): `xxl`
class CustomShadows {
  const CustomShadows._();

  /// **1px 2px** - Extra small shadow, used for tiny components or tight spaces.
  static const List<BoxShadow> xs = [
    BoxShadow(
      color: Color(0x0D000000),
      offset: Offset(0, 1),
      blurRadius: 2,
    ),
  ];

  /// **1px 3px** - Small shadow, used for cards or small buttons.
  static const List<BoxShadow> sm = [
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 1),
      blurRadius: 3,
    ),
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: -1,
    ),
  ];

  /// **4px 6px** - Medium shadow, the standard for dropdowns and navigation items.
  static const List<BoxShadow> md = [
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 4),
      blurRadius: 6,
      spreadRadius: -1,
    ),
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -2,
    ),
  ];

  /// **10px 15px** - Large shadow, used for modals or featured components.
  static const List<BoxShadow> lg = [
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 10),
      blurRadius: 15,
      spreadRadius: -3,
    ),
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 4),
      blurRadius: 6,
      spreadRadius: -4,
    ),
  ];

  /// **20px 25px** - Extra large shadow, used for major floating elements.
  static const List<BoxShadow> xl = [
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 20),
      blurRadius: 25,
      spreadRadius: -5,
    ),
    BoxShadow(
      color: Color(0x1A000000),
      offset: Offset(0, 8),
      blurRadius: 10,
      spreadRadius: -6,
    ),
  ];

  /// **25px 50px** - Double extra large shadow, used for deep overlays.
  static const List<BoxShadow> xxl = [
    BoxShadow(
      color: Color(0x40000000),
      offset: Offset(0, 25),
      blurRadius: 50,
      spreadRadius: -12,
    ),
  ];
}
