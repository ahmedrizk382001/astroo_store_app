import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/password_validation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidationCheckList extends StatelessWidget {
  const PasswordValidationCheckList(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialChar,
      required this.hasOneNum,
      required this.hasMinLength});

  final bool hasLowerCase,
      hasUpperCase,
      hasSpecialChar,
      hasOneNum,
      hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PasswordValidatorItem(
          condition: "At least 1 lowercase letter",
          isValidated: hasLowerCase,
        ),
        SizedBox(
          height: 4.h,
        ),
        PasswordValidatorItem(
          condition: "At least 1 uppercase letter",
          isValidated: hasUpperCase,
        ),
        SizedBox(
          height: 4.h,
        ),
        PasswordValidatorItem(
          condition: "At least 1 special character",
          isValidated: hasSpecialChar,
        ),
        SizedBox(
          height: 4.h,
        ),
        PasswordValidatorItem(
          condition: "At least 1 number",
          isValidated: hasOneNum,
        ),
        SizedBox(
          height: 4.h,
        ),
        PasswordValidatorItem(
          condition: "At least 8 characters long",
          isValidated: hasMinLength,
        ),
      ],
    );
  }
}
