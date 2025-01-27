import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';

class UpdateNotificationButton extends StatelessWidget {
  const UpdateNotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(context.color.mainColor),
          ),
          child: Text(
            "Update",
            style: AppTextStyles.font14Medium(context),
          )),
    );
  }
}
