import 'package:astroo_store_app/core/styles/colors/light_theme_colors.dart';
import 'package:flutter/material.dart';

import '../styles/colors/dark_theme_colors.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({
    required this.mainColor,
    required this.bluePinkDark,
    required this.bluePinkLight,
    required this.textColor,
    required this.textFormBorder,
    required this.navBarbg,
    required this.navBarSelectedTab,
    required this.containerShadow1,
    required this.containerShadow2,
    required this.containerLinear1,
    required this.containerLinear2,
  });

  final Color? mainColor;
  final Color? bluePinkDark;
  final Color? bluePinkLight;
  final Color? textColor;
  final Color? textFormBorder;
  final Color? navBarbg;
  final Color? navBarSelectedTab;
  final Color? containerShadow1;
  final Color? containerShadow2;
  final Color? containerLinear1;
  final Color? containerLinear2;

  @override
  ThemeExtension<ColorExtension> copyWith({
    Color? mainColor,
    Color? bluePinkDark,
    Color? bluePinkLight,
    Color? textColor,
    Color? textFormBorder,
    Color? navBarbg,
    Color? navBarSelectedTab,
    Color? containerShadow1,
    Color? containerShadow2,
    Color? containerLinear1,
  }) {
    return ColorExtension(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
    covariant ThemeExtension<ColorExtension>? other,
    double t,
  ) {
    if (other is! ColorExtension) {
      return this;
    }
    return ColorExtension(
      mainColor: mainColor,
      bluePinkDark: bluePinkDark,
      bluePinkLight: bluePinkLight,
      textColor: textColor,
      textFormBorder: textFormBorder,
      navBarbg: navBarbg,
      navBarSelectedTab: navBarSelectedTab,
      containerShadow1: containerShadow1,
      containerShadow2: containerShadow2,
      containerLinear1: containerLinear1,
      containerLinear2: containerLinear2,
    );
  }

  static const ColorExtension lightMode = ColorExtension(
    mainColor: LightThemeColors.mainColor,
    bluePinkDark: LightThemeColors.pinkDark,
    bluePinkLight: LightThemeColors.pinkLight,
    textColor: LightThemeColors.black,
    textFormBorder: LightThemeColors.pinkLight,
    navBarbg: LightThemeColors.mainColor,
    navBarSelectedTab: LightThemeColors.pinkDark,
    containerShadow1: LightThemeColors.white,
    containerShadow2: LightThemeColors.white,
    containerLinear1: LightThemeColors.pinkDark,
    containerLinear2: LightThemeColors.pinkLight,
  );

  static const ColorExtension darkMode = ColorExtension(
    mainColor: DarkThemeColors.mainColor,
    bluePinkDark: DarkThemeColors.blueDark,
    bluePinkLight: DarkThemeColors.blueLight,
    textColor: DarkThemeColors.white,
    textFormBorder: DarkThemeColors.blueLight,
    navBarbg: DarkThemeColors.navBarDark,
    navBarSelectedTab: DarkThemeColors.white,
    containerShadow1: DarkThemeColors.black1,
    containerShadow2: DarkThemeColors.black2,
    containerLinear1: DarkThemeColors.black1,
    containerLinear2: DarkThemeColors.black2,
  );
}
