import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateNotificationBody extends StatefulWidget {
  const UpdateNotificationBody({
    super.key,
    required this.notificationModel,
  });

  final NotificationModel notificationModel;

  @override
  State<UpdateNotificationBody> createState() => _UpdateNotificationBodyState();
}

class _UpdateNotificationBodyState extends State<UpdateNotificationBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController headerController,
      contentController,
      productIdController;

  @override
  void initState() {
    headerController = TextEditingController();
    contentController = TextEditingController();
    productIdController = TextEditingController();

    headerController.text = widget.notificationModel.header;
    contentController.text = widget.notificationModel.content;
    productIdController.text = widget.notificationModel.productId;

    super.initState();
  }

  @override
  void dispose() {
    headerController.dispose();
    contentController.dispose();
    productIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Update Notification",
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
                controller: headerController,
                hintText: "Notification Header",
                maxLength: 3,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 5) {
                    return "Please enter a valid header";
                  }
                  return null;
                }),
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
                controller: contentController,
                hintText: "Notification Content",
                maxLength: 3,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 5) {
                    return "Please enter a valid content";
                  }
                  return null;
                }),
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
              controller: productIdController,
              hintText: "Product ID",
              maxLength: 1,
              validator: (p0) => null,
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    _validateUpdateButton();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(context.color.mainColor),
                  ),
                  child: Text(
                    "Update",
                    style: AppTextStyles.font14Medium(context),
                  )),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }

  void _validateUpdateButton() {
    if (formKey.currentState!.validate()) {
      widget.notificationModel.header = headerController.text;
      widget.notificationModel.content = contentController.text;
      widget.notificationModel.productId = productIdController.text.isEmpty
          ? widget.notificationModel.productId
          : productIdController.text;

      widget.notificationModel.save();

      ShowToast.showToastSuccessButtom(
          message: "Notification updated successfully");
    } else {
      ShowToast.showToastErrorButtom(
          message: "Please Fill the required fields");
    }
    context.pop();
  }
}
