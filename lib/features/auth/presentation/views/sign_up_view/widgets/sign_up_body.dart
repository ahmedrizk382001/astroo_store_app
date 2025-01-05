import 'package:astroo_store_app/features/auth/presentation/views/common/auth_button.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/light_mode_and_language.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/auth_title_and_subtitle.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/already_have_account_text.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/password_validation_check_list.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/register_fields.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LightModeAndLanguage(),
            SizedBox(
              height: 48.h,
            ),
            AuthTitleAndSubtitle(
              title: S.of(context).sign_up,
              subTitle: S.of(context).sign_up_welcome,
            ),
            SizedBox(
              height: 32.h,
            ),
            RegisterFields(),
            SizedBox(
              height: 16.h,
            ),
            PasswordValidationCheckList(
                hasLowerCase: false,
                hasUpperCase: false,
                hasSpecialChar: false,
                hasOneNum: false,
                hasMinLength: false),
            SizedBox(
              height: 32.h,
            ),
            AuthButton(
              buttonText: S.of(context).sign_up,
              onPressed: () {},
            ),
            SizedBox(
              height: 32.h,
            ),
            AlreadyHaveAccountText(),
          ],
        ),
      ),
    );
  }
}
