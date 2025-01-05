import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitleAndSubtitle extends StatelessWidget {
  const AuthTitleAndSubtitle(
      {super.key, required this.title, required this.subTitle});

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: animationDuration,
      child: Column(
        children: [
          Text(
            title.toUpperCase(),
            style: AppTextStyles.font32Bold(context),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.font13Regular(context),
          ),
        ],
      ),
    );
  }
}
