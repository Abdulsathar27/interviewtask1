import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  

  /// ---------- BRAND COLORS ----------
  static const Color primary = Colors.pink; // Sephora-style black
  static const Color secondary = Color(0xFFFFFFFF);
  static const Color accent = Color(0xFFE00034); // Sale / highlight

  /// ---------- BACKGROUND ----------
  static const Color background = Color(0xFFF7F7F7);
  static const Color surface = Color(0xFFFFFFFF);

  /// ---------- TEXT ----------
  static const Color textPrimary = Color(0xFF1C1C1C);
  static const Color textSecondary = Color(0xFF6E6E6E);
  static const Color textDisabled = Color(0xFFBDBDBD);

  /// ---------- UI STATES ----------
  static const Color border = Color(0xFFE0E0E0);
  static const Color divider = Color(0xFFEAEAEA);
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFF9A825);

  /// ---------- BUTTONS ----------
  static const Color buttonPrimary = primary;
  static const Color buttonText = secondary;

  /// ---------- SHADOW ----------
  static const Color shadow = Color(0x1A000000);
}
