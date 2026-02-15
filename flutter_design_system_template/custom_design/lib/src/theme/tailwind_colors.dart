import 'dart:ui';

/// Eine einzelne Farbfamilie aus dem Tailwind Design System.
/// Enthält alle Abstufungen von 50 (sehr hell) bis 950 (sehr dunkel).
class TailwindColor {
  final Color shade50;
  final Color shade100;
  final Color shade200;
  final Color shade300;
  final Color shade400;
  final Color shade500;
  final Color shade600;
  final Color shade700;
  final Color shade800;
  final Color shade900;
  final Color shade950;

  const TailwindColor({
    required this.shade50,
    required this.shade100,
    required this.shade200,
    required this.shade300,
    required this.shade400,
    required this.shade500,
    required this.shade600,
    required this.shade700,
    required this.shade800,
    required this.shade900,
    required this.shade950,
  });

  /// Zugriff via Index Operator, z.B. myColor[500]
  Color operator [](int index) {
    switch (index) {
      case 50:
        return shade50;
      case 100:
        return shade100;
      case 200:
        return shade200;
      case 300:
        return shade300;
      case 400:
        return shade400;
      case 500:
        return shade500;
      case 600:
        return shade600;
      case 700:
        return shade700;
      case 800:
        return shade800;
      case 900:
        return shade900;
      case 950:
        return shade950;
      default:
        throw ArgumentError(
          'Invalid shade: $index. Available: 50, 100, 200, 300, 400, 500, 600, 700, 800, 900, 950',
        );
    }
  }
}

class TailwindColors {
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);

  // --- The Greys ---

  /// Slate (Cool, Blue-ish Gray)
  static const TailwindColor slate = TailwindColor(
    shade50: Color(0xFFF8FAFC),
    shade100: Color(0xFFF1F5F9),
    shade200: Color(0xFFE2E8F0),
    shade300: Color(0xFFCBD5E1),
    shade400: Color(0xFF94A3B8),
    shade500: Color(0xFF64748B),
    shade600: Color(0xFF475569),
    shade700: Color(0xFF334155),
    shade800: Color(0xFF1E293B),
    shade900: Color(0xFF0F172A),
    shade950: Color(0xFF020617),
  );

  /// Gray (Cool Gray, Standard)
  static const TailwindColor gray = TailwindColor(
    shade50: Color(0xFFF9FAFB),
    shade100: Color(0xFFF3F4F6),
    shade200: Color(0xFFE5E7EB),
    shade300: Color(0xFFD1D5DB),
    shade400: Color(0xFF9CA3AF),
    shade500: Color(0xFF6B7280),
    shade600: Color(0xFF4B5563),
    shade700: Color(0xFF374151),
    shade800: Color(0xFF1F2937),
    shade900: Color(0xFF111827),
    shade950: Color(0xFF030712),
  );

  /// Zinc (Industrial Gray)
  static const TailwindColor zinc = TailwindColor(
    shade50: Color(0xFFFAFAFA),
    shade100: Color(0xFFF4F4F5),
    shade200: Color(0xFFE4E4E7),
    shade300: Color(0xFFD4D4D8),
    shade400: Color(0xFFA1A1AA),
    shade500: Color(0xFF71717A),
    shade600: Color(0xFF52525B),
    shade700: Color(0xFF3F3F46),
    shade800: Color(0xFF27272A),
    shade900: Color(0xFF18181B),
    shade950: Color(0xFF09090B),
  );

  /// Neutral (True Gray, No Tint)
  static const TailwindColor neutral = TailwindColor(
    shade50: Color(0xFFFAFAFA),
    shade100: Color(0xFFF5F5F5),
    shade200: Color(0xFFE5E5E5),
    shade300: Color(0xFFD4D4D4),
    shade400: Color(0xFFA3A3A3),
    shade500: Color(0xFF737373),
    shade600: Color(0xFF525252),
    shade700: Color(0xFF404040),
    shade800: Color(0xFF262626),
    shade900: Color(0xFF171717),
    shade950: Color(0xFF0A0A0A),
  );

  /// Stone (Warm Gray)
  static const TailwindColor stone = TailwindColor(
    shade50: Color(0xFFFAFAF9),
    shade100: Color(0xFFF5F5F4),
    shade200: Color(0xFFE7E5E4),
    shade300: Color(0xFFD6D3D1),
    shade400: Color(0xFFA8A29E),
    shade500: Color(0xFF78716C),
    shade600: Color(0xFF57534E),
    shade700: Color(0xFF44403C),
    shade800: Color(0xFF292524),
    shade900: Color(0xFF1C1917),
    shade950: Color(0xFF0C0A09),
  );

  // --- The Colors ---

  static const TailwindColor red = TailwindColor(
    shade50: Color(0xFFFEF2F2),
    shade100: Color(0xFFFEE2E2),
    shade200: Color(0xFFFECACA),
    shade300: Color(0xFFFCA5A5),
    shade400: Color(0xFFF87171),
    shade500: Color(0xFFEF4444),
    shade600: Color(0xFFDC2626),
    shade700: Color(0xFFB91C1C),
    shade800: Color(0xFF991B1B),
    shade900: Color(0xFF7F1D1D),
    shade950: Color(0xFF450A0A),
  );

  static const TailwindColor orange = TailwindColor(
    shade50: Color(0xFFFFF7ED),
    shade100: Color(0xFFFFEDD5),
    shade200: Color(0xFFFED7AA),
    shade300: Color(0xFFFDBA74),
    shade400: Color(0xFFFB923C),
    shade500: Color(0xFFF97316),
    shade600: Color(0xFFEA580C),
    shade700: Color(0xFFC2410C),
    shade800: Color(0xFF9A3412),
    shade900: Color(0xFF7C2D12),
    shade950: Color(0xFF431407),
  );

  static const TailwindColor amber = TailwindColor(
    shade50: Color(0xFFFFFBEB),
    shade100: Color(0xFFFEF3C7),
    shade200: Color(0xFFFDE68A),
    shade300: Color(0xFFFCD34D),
    shade400: Color(0xFFFBBF24),
    shade500: Color(0xFFF59E0B),
    shade600: Color(0xFFD97706),
    shade700: Color(0xFFB45309),
    shade800: Color(0xFF92400E),
    shade900: Color(0xFF78350F),
    shade950: Color(0xFF451A03),
  );

  static const TailwindColor yellow = TailwindColor(
    shade50: Color(0xFFFEFCE8),
    shade100: Color(0xFFFEF9C3),
    shade200: Color(0xFFFEF08A),
    shade300: Color(0xFFFDE047),
    shade400: Color(0xFFFACC15),
    shade500: Color(0xFFEAB308),
    shade600: Color(0xFFCA8A04),
    shade700: Color(0xFFA16207),
    shade800: Color(0xFF854D0E),
    shade900: Color(0xFF713F12),
    shade950: Color(0xFF422006),
  );

  static const TailwindColor lime = TailwindColor(
    shade50: Color(0xFFF7FEE7),
    shade100: Color(0xFFECFCCB),
    shade200: Color(0xFFD9F99D),
    shade300: Color(0xFFBEF264),
    shade400: Color(0xFFA3E635),
    shade500: Color(0xFF84CC16),
    shade600: Color(0xFF65A30D),
    shade700: Color(0xFF4D7C0F),
    shade800: Color(0xFF3F6212),
    shade900: Color(0xFF365314),
    shade950: Color(0xFF1A2E05),
  );

  static const TailwindColor green = TailwindColor(
    shade50: Color(0xFFF0FDF4),
    shade100: Color(0xFFDCFCE7),
    shade200: Color(0xFFBBF7D0),
    shade300: Color(0xFF86EFAC),
    shade400: Color(0xFF4ADE80),
    shade500: Color(0xFF22C55E),
    shade600: Color(0xFF16A34A),
    shade700: Color(0xFF15803D),
    shade800: Color(0xFF166534),
    shade900: Color(0xFF14532D),
    shade950: Color(0xFF052E16),
  );

  static const TailwindColor emerald = TailwindColor(
    shade50: Color(0xFFECFDF5),
    shade100: Color(0xFFD1FAE5),
    shade200: Color(0xFFA7F3D0),
    shade300: Color(0xFF6EE7B7),
    shade400: Color(0xFF34D399),
    shade500: Color(0xFF10B981),
    shade600: Color(0xFF059669),
    shade700: Color(0xFF047857),
    shade800: Color(0xFF065F46),
    shade900: Color(0xFF064E3B),
    shade950: Color(0xFF022C22),
  );

  static const TailwindColor teal = TailwindColor(
    shade50: Color(0xFFF0FDFA),
    shade100: Color(0xFFCCFBF1),
    shade200: Color(0xFF99F6E4),
    shade300: Color(0xFF5EEAD4),
    shade400: Color(0xFF2DD4BF),
    shade500: Color(0xFF14B8A6),
    shade600: Color(0xFF0D9488),
    shade700: Color(0xFF0F766E),
    shade800: Color(0xFF115E59),
    shade900: Color(0xFF134E4A),
    shade950: Color(0xFF042F2E),
  );

  static const TailwindColor cyan = TailwindColor(
    shade50: Color(0xFFECFEFF),
    shade100: Color(0xFFCFFAFE),
    shade200: Color(0xFFA5F3FC),
    shade300: Color(0xFF67E8F9),
    shade400: Color(0xFF22D3EE),
    shade500: Color(0xFF06B6D4),
    shade600: Color(0xFF0891B2),
    shade700: Color(0xFF0E7490),
    shade800: Color(0xFF155E75),
    shade900: Color(0xFF164E63),
    shade950: Color(0xFF083344),
  );

  static const TailwindColor sky = TailwindColor(
    shade50: Color(0xFFF0F9FF),
    shade100: Color(0xFFE0F2FE),
    shade200: Color(0xFFBAE6FD),
    shade300: Color(0xFF7DD3FC),
    shade400: Color(0xFF38BDF8),
    shade500: Color(0xFF0EA5E9),
    shade600: Color(0xFF0284C7),
    shade700: Color(0xFF0369A1),
    shade800: Color(0xFF075985),
    shade900: Color(0xFF0C4A6E),
    shade950: Color(0xFF082F49),
  );

  static const TailwindColor blue = TailwindColor(
    shade50: Color(0xFFEFF6FF),
    shade100: Color(0xFFDBEAFE),
    shade200: Color(0xFFBFDBFE),
    shade300: Color(0xFF93C5FD),
    shade400: Color(0xFF60A5FA),
    shade500: Color(0xFF3B82F6),
    shade600: Color(0xFF2563EB),
    shade700: Color(0xFF1D4ED8),
    shade800: Color(0xFF1E40AF),
    shade900: Color(0xFF1E3A8A),
    shade950: Color(0xFF172554),
  );

  static const TailwindColor indigo = TailwindColor(
    shade50: Color(0xFFEEF2FF),
    shade100: Color(0xFFE0E7FF),
    shade200: Color(0xFFC7D2FE),
    shade300: Color(0xFFA5B4FC),
    shade400: Color(0xFF818CF8),
    shade500: Color(0xFF6366F1),
    shade600: Color(0xFF4F46E5),
    shade700: Color(0xFF4338CA),
    shade800: Color(0xFF3730A3),
    shade900: Color(0xFF312E81),
    shade950: Color(0xFF1E1B4B),
  );

  static const TailwindColor violet = TailwindColor(
    shade50: Color(0xFFF5F3FF),
    shade100: Color(0xFFEDE9FE),
    shade200: Color(0xFFDDD6FE),
    shade300: Color(0xFFC4B5FD),
    shade400: Color(0xFFA78BFA),
    shade500: Color(0xFF8B5CF6),
    shade600: Color(0xFF7C3AED),
    shade700: Color(0xFF6D28D9),
    shade800: Color(0xFF5B21B6),
    shade900: Color(0xFF4C1D95),
    shade950: Color(0xFF2E1065),
  );

  static const TailwindColor purple = TailwindColor(
    shade50: Color(0xFFFAF5FF),
    shade100: Color(0xFFF3E8FF),
    shade200: Color(0xFFE9D5FF),
    shade300: Color(0xFFD8B4FE),
    shade400: Color(0xFFC084FC),
    shade500: Color(0xFFA855F7),
    shade600: Color(0xFF9333EA),
    shade700: Color(0xFF7E22CE),
    shade800: Color(0xFF6B21A8),
    shade900: Color(0xFF581C87),
    shade950: Color(0xFF3B0764),
  );

  static const TailwindColor fuchsia = TailwindColor(
    shade50: Color(0xFFFDF4FF),
    shade100: Color(0xFFFAE8FF),
    shade200: Color(0xFFF5D0FE),
    shade300: Color(0xFFF0ABFC),
    shade400: Color(0xFFE879F9),
    shade500: Color(0xFFD946EF),
    shade600: Color(0xFFC026D3),
    shade700: Color(0xFFA21CAF),
    shade800: Color(0xFF86198F),
    shade900: Color(0xFF701A75),
    shade950: Color(0xFF4A044E),
  );

  static const TailwindColor pink = TailwindColor(
    shade50: Color(0xFFFDF2F8),
    shade100: Color(0xFFFCE7F3),
    shade200: Color(0xFFFBCFE8),
    shade300: Color(0xFFF9A8D4),
    shade400: Color(0xFFF472B6),
    shade500: Color(0xFFEC4899),
    shade600: Color(0xFFDB2777),
    shade700: Color(0xFFBE185D),
    shade800: Color(0xFF9D174D),
    shade900: Color(0xFF831843),
    shade950: Color(0xFF500724),
  );

  static const TailwindColor rose = TailwindColor(
    shade50: Color(0xFFFFF1F2),
    shade100: Color(0xFFFFE4E6),
    shade200: Color(0xFFFECDD3),
    shade300: Color(0xFFFDA4AF),
    shade400: Color(0xFFFB7185),
    shade500: Color(0xFFF43F5E),
    shade600: Color(0xFFE11D48),
    shade700: Color(0xFFBE123C),
    shade800: Color(0xFF9F1239),
    shade900: Color(0xFF881337),
    shade950: Color(0xFF4C0519),
  );
}
