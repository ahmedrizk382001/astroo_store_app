import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/utils/app_regex.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  bool isPasswordShown = false;
  late AuthCubit _authCubit;

  @override
  void initState() {
    _authCubit = context.read<AuthCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _authCubit.emailController.dispose();
    _authCubit.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: animationDuration,
      child: Form(
        key: _authCubit.formKey,
        child: Column(
          children: [
            CustomTextField(
              controller: _authCubit.emailController,
              validator: (p0) {
                if (AppRegex.isEmailValid(_authCubit.emailController.text)) {
                  return null;
                } else {
                  return S.of(context).valid_email;
                }
              },
              hintText: S.of(context).your_email,
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomTextField(
              controller: _authCubit.passwordController,
              validator: (p0) {
                if (AppRegex.isPasswordValid(
                    _authCubit.passwordController.text)) {
                  return null;
                } else {
                  return S.of(context).valid_passwrod;
                }
              },
              hintText: S.of(context).password,
              suffixIcon: IconButton(
                  onPressed: () {
                    isPasswordShown = !isPasswordShown;
                    setState(() {});
                  },
                  icon: Icon(
                    isPasswordShown
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 20,
                    color: context.color.textColor,
                  )),
              obscureText: !isPasswordShown,
            ),
          ],
        ),
      ),
    );
  }
}
