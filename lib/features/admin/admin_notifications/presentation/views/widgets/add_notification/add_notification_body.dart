import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/add_notification/create_notification_button.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNotificationBody extends StatelessWidget {
  const AddNotificationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: GlobalKey(),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Create Notification",
              style: AppTextStyles.font18Bold(context),
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter the notification header",
                style: AppTextStyles.font14Medium(context),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: "Notification Header",
              maxLength: 3,
              validator: (value) {
                if (value!.isEmpty || value.length < 5) {
                  return S.of(context).valid_name;
                }
                return null;
              },
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter the notification content",
                style: AppTextStyles.font14Medium(context),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: "Notification Content",
              maxLength: 3,
              validator: (value) {
                if (value!.isEmpty || value.length < 5) {
                  return S.of(context).valid_name;
                }
                return null;
              },
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter the product ID (optional)",
                style: AppTextStyles.font14Medium(context),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: "Product ID",
              maxLength: 1,
            ),
            SizedBox(
              height: 32.h,
            ),
            CreateNotificationButton(),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
