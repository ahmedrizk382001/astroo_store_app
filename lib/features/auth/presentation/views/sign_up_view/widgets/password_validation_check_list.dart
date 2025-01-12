import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/password_validation_item.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidationCheckList extends StatelessWidget {
  const PasswordValidationCheckList(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasOneNum,
      required this.hasMinLength});

  final bool hasLowerCase, hasUpperCase, hasOneNum, hasMinLength;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: animationDuration,
      child: Column(
        children: [
          PasswordValidatorItem(
            condition: S.of(context).has_lower_case,
            isValidated: hasLowerCase,
          ),
          SizedBox(
            height: 4.h,
          ),
          PasswordValidatorItem(
            condition: S.of(context).has_upper_case,
            isValidated: hasUpperCase,
          ),
          SizedBox(
            height: 4.h,
          ),
          PasswordValidatorItem(
            condition: S.of(context).has_one_number,
            isValidated: hasOneNum,
          ),
          SizedBox(
            height: 4.h,
          ),
          PasswordValidatorItem(
            condition: S.of(context).has_min_lenght,
            isValidated: hasMinLength,
          ),
        ],
      ),
    );
  }
}
