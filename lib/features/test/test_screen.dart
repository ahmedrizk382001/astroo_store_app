import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/font_family_helper.dart';
import 'package:astroo_store_app/core/styles/fonts/font_weight_helper.dart';
import 'package:astroo_store_app/core/theme/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../generated/l10n.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          S.of(context).app_name,
          style: Intl.getCurrentLocale() == 'ar'
              ? TextStyle(
                  fontFamily: FontFamilyHelper.cairoArabic,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.mainColor,
                )
              : TextStyle(
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.mainColor,
                ),
        ),
      ),
    );
  }
}
