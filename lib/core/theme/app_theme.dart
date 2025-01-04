import 'package:astroo_store_app/core/styles/colors/dark_theme_colors.dart';
import 'package:astroo_store_app/core/styles/colors/light_theme_colors.dart';
import 'package:astroo_store_app/core/theme/color_extension.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() => ThemeData(
      scaffoldBackgroundColor: LightThemeColors.mainColor,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[ColorExtension.lightMode],
    );

ThemeData darkTheme() => ThemeData(
      scaffoldBackgroundColor: DarkThemeColors.mainColor,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[ColorExtension.darkMode],
    );
