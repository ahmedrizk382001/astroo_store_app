import 'package:astroo_store_app/features/auth/presentation/views/login_view/widgets/create_account_text.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/light_mode_and_language.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/widgets/login_button.dart';
import 'package:astroo_store_app/features/auth/presentation/views/login_view/widgets/login_fields.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/auth_title_and_subtitle.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cubit/cubit/auth_cubit.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  late AuthCubit _authCubit;

  @override
  void initState() {
    _controllersConfig();
    super.initState();
  }

  void _controllersConfig() {
    _authCubit = context.read<AuthCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Initialize controllers with empty text
      _authCubit.emailController.text = '';
      _authCubit.passwordController.text = '';
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
