import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: AppTextStyles.font14Regular(context).copyWith(
            color: context.color.textColor,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            padding: WidgetStatePropertyAll(EdgeInsets.all(8)),
          ),
          child: Text(
            "Create one!",
            style: AppTextStyles.font14Bold(context).copyWith(
              color: context.color.bluePinkLight,
            ),
          ),
        ),
      ],
    );
  }
}
