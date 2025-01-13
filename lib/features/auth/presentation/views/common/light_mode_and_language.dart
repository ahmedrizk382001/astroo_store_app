import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/core/shared/app_cubit/app_settings_cubit_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightModeAndLanguage extends StatelessWidget {
  const LightModeAndLanguage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var appCubit = context.read<AppSettingsCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: CustomFadeInRight(
            duration: animationDuration,
            child: CustomLinearButton(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
              onPressed: () {
                appCubit.changeThemeMode(isDark: !appCubit.isDark);
              },
              child: Icon(
                appCubit.isDark ? Icons.sunny : Icons.dark_mode,
                size: 19,
                color: context.color.textColor,
              ),
            ),
          ),
        ),
        Spacer(
          flex: 3,
        ),
        Expanded(
          flex: 2,
          child: CustomFadeInLeft(
            duration: animationDuration,
            child: CustomLinearButton(
              onPressed: () {
                appCubit.checkLanguage(language: appCubit.language);
              },
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
              child: Text(
                S.of(context).language,
                style: AppTextStyles.font16Bold(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
