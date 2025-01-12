import 'package:astroo_store_app/core/utils/app_regex.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/light_mode_and_language.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/auth_title_and_subtitle.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/already_have_account_text.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/password_validation_check_list.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/register_fields.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/sign_up_button.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  late AuthCubit _authCubit;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasOneNum = false;
  bool hasMinLength = false;

  @override
  void initState() {
    super.initState();
    _controllersConfig();
  }

  void _controllersConfig() {
    _authCubit = context.read<AuthCubit>();

    // Use WidgetsBinding to defer the listener setup
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Initialize controllers with empty text
      _authCubit.emailController.text = '';
      _authCubit.passwordController.text = '';

      _authCubit.passwordController.addListener(() {
        final text = _authCubit.passwordController.text;

        hasLowerCase = AppRegex.hasLowerCase(text);
        hasUpperCase = AppRegex.hasUpperCase(text);
        hasOneNum = AppRegex.hasNumber(text);
        hasMinLength = AppRegex.hasMinLength(text);

        setState(() {}); // Safely update the state after the first frame
      });
    });
  }

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
                hasLowerCase: hasLowerCase,
                hasUpperCase: hasUpperCase,
                hasOneNum: hasOneNum,
                hasMinLength: hasMinLength),
            SizedBox(
              height: 32.h,
            ),
            SignUpButton(),
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
