import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginTitleAndSubtitle extends StatelessWidget {
  const LoginTitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          S.of(context).login,
          style: AppTextStyles.font32Bold(context),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          S.of(context).welcome,
          textAlign: TextAlign.center,
          style: AppTextStyles.font13Regular(context),
        ),
      ],
    );
  }
}
