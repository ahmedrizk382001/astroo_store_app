import 'package:astroo_store_app/features/auth/presentation/views/login_view/widgets/create_account_text.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/light_mode_and_language.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/widgets/login_button.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/widgets/login_fields.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/auth_title_and_subtitle.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

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
              title: S.of(context).login,
              subTitle: S.of(context).welcome,
            ),
            SizedBox(
              height: 32.h,
            ),
            LoginFields(),
            SizedBox(
              height: 32.h,
            ),
            LoginButton(),
            SizedBox(
              height: 32.h,
            ),
            CreateAccountText(),
          ],
        ),
      ),
    );
  }
}
