import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: animationDuration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).dont_have_account,
            style: AppTextStyles.font14Regular(context).copyWith(
              color: context.color.textColor,
            ),
          ),
          TextButton(
            onPressed: () {
              context.pushNamedAndRemoveUntil(Routers.signUp);
            },
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.all(8)),
            ),
            child: Text(
              S.of(context).create_account,
              style: AppTextStyles.font14Bold(context).copyWith(
                color: context.color.bluePinkLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
