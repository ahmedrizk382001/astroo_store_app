import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/features/auth/presentation/cubit/cubit/auth_cubit.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_regex.dart';

class RegisterFields extends StatefulWidget {
  const RegisterFields({super.key});

  @override
  State<RegisterFields> createState() => _RegisterFieldsState();
}

class _RegisterFieldsState extends State<RegisterFields> {
  bool isPasswordShown = false;
  late AuthCubit _authCubit;

  @override
  void initState() {
    _authCubit = context.read<AuthCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: animationDuration,
      child: Form(
        key: _authCubit.signUpFormKey,
        child: Column(
          children: [
            CustomTextField(
              controller: _authCubit.nameController,
              validator: (name) {
                if (name == null || name == '') {
                  return S.of(context).valid_name;
                }
                return null;
              },
              hintText: S.of(context).full_name,
            ),
            SizedBox(
              height: 24.h,
            ),
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
              hintText: S.of(context).password,
              onChanged: (password) {
                if (password != null) {
                  _authCubit.passwordController.text = password;
                }
                return null;
              },
              validator: (p0) {
                if (AppRegex.isPasswordValid(
                    _authCubit.passwordController.text)) {
                  return null;
                } else {
                  return S.of(context).valid_passwrod;
                }
              },
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
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
