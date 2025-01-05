import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).already_have_account,
          style: AppTextStyles.font14Regular(context).copyWith(
            color: context.color.textColor,
          ),
        ),
        TextButton(
          onPressed: () {
            context.pushNamedAndRemoveUntil(Routers.login);
          },
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h)),
          ),
          child: Text(
            S.of(context).login_now,
            style: AppTextStyles.font14Bold(context).copyWith(
              color: context.color.bluePinkLight,
            ),
          ),
        ),
      ],
    );
  }
}
