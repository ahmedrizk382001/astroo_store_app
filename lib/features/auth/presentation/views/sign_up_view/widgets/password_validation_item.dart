import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidatorItem extends StatelessWidget {
  const PasswordValidatorItem({
    super.key,
    required this.condition,
    required this.isValidated,
  });

  final String condition;
  final bool isValidated;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 4.r,
          backgroundColor: isValidated ? Colors.green : Colors.grey,
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          condition,
          style: AppTextStyles.font12Regular.copyWith(
            color: context.color.textColor,
            decoration: isValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 3,
          ),
        ),
      ],
    );
  }
}
