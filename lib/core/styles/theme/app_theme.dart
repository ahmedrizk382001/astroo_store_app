import 'package:astroo_store_app/core/styles/colors/dark_theme_colors.dart';
import 'package:astroo_store_app/core/styles/colors/light_theme_colors.dart';
import 'package:astroo_store_app/core/styles/theme/color_extension.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() => ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: LightThemeColors.mainColor,
      ),
      scaffoldBackgroundColor: LightThemeColors.mainColor,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[ColorExtension.lightMode],
    );

ThemeData darkTheme() => ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: DarkThemeColors.mainColor,
      ),
      scaffoldBackgroundColor: DarkThemeColors.mainColor,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[ColorExtension.darkMode],
    );
