import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomLinearButton(
        onPressed: () {},
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Text(
          "Login",
          style: AppTextStyles.font14Bold(context),
        ),
      ),
    );
  }
}
