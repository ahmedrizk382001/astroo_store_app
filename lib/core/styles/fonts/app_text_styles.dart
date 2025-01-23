import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/font_family_helper.dart';
import 'package:astroo_store_app/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class AppTextStyles {
  static TextStyle font32Bold(BuildContext context) => TextStyle(
        fontSize: 32.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.bold,
        color: context.color.textColor,
      );

  static TextStyle font12Medium(BuildContext context) => TextStyle(
        fontSize: 12.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.medium,
        color: context.color.textColor,
      );
  static TextStyle font13Regular(BuildContext context) => TextStyle(
        fontSize: 13.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.regular,
        color: context.color.textColor,
      );

  static TextStyle font13Medium(BuildContext context) => TextStyle(
        fontSize: 13.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.medium,
        color: context.color.textColor,
      );

  static TextStyle font14Regular(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.regular,
        color: context.color.textColor?.withOpacity(0.5),
      );

  static TextStyle font14Medium(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.medium,
        color: context.color.textColor,
      );

  static TextStyle font14Bold(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.bold,
        color: context.color.textColor,
      );

  static TextStyle font12Regular = TextStyle(
    fontSize: 12.sp,
    fontFamily: FontFamilyHelper.getFontFamily(),
    fontWeight: FontWeightHelper.regular,
    color: Colors.red,
  );

  static TextStyle font15Bold(BuildContext context) => TextStyle(
        fontSize: 15.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.bold,
        color: context.color.textColor,
      );

  static TextStyle font16Bold(BuildContext context) => TextStyle(
        fontSize: 16.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.bold,
        color: context.color.textColor,
      );

  static TextStyle font16Medium(BuildContext context) => TextStyle(
        fontSize: 16.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.medium,
        color: context.color.textColor,
      );

  static TextStyle font18Bold(BuildContext context) => TextStyle(
        fontSize: 18.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.bold,
        color: context.color.textColor,
      );

  static TextStyle font18Medium(BuildContext context) => TextStyle(
        fontSize: 18.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.medium,
        color: context.color.textColor,
      );

  static TextStyle font24Bold(BuildContext context) => TextStyle(
        fontSize: 24.sp,
        fontFamily: FontFamilyHelper.getFontFamily(),
        fontWeight: FontWeightHelper.bold,
        color: context.color.textColor,
      );
}
