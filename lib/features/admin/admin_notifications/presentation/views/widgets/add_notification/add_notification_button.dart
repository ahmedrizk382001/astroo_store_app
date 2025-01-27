import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/add_notification/add_notification_body.dart';
import 'package:flutter/material.dart';

class AddNotificationButton extends StatelessWidget {
  const AddNotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Add a new notification",
          style: AppTextStyles.font18Medium(context),
        ),
        Spacer(),
        Expanded(
          child: CustomLinearButton(
              onPressed: () {
                CustomBottomSheet.customBottomSheet(
                  context,
                  child: AddNotificationBody(),
                  whenComplete: () {},
                );
              },
              child: Text(
                "Add",
                style: AppTextStyles.font18Medium(context),
              )),
        )
      ],
    );
  }
}
