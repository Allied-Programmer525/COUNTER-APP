import 'package:flutter/material.dart';

Color getCardColor(BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  return isDark ? const Color(0xFF1E1E2C) : const Color(0xFFE8ECFF);
}
