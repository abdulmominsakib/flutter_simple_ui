import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppDefaults {
  /// Default Paddding Value
  static const double padding = 16.00;

  /// Default Margin Value
  static const double margin = 16.00;

  /// Default Style Radius
  static const double radius = 32.00;

  /// Default BorderRadius
  static BorderRadius borderRadius = BorderRadius.circular(radius);

  /// Gradient that is used for the whole app
  static const gradient = LinearGradient(
    colors: [
      AppColors.primaryLight,
      AppColors.primary,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
