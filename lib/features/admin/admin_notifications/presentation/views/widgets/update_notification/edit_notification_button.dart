import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/update_notification/update_notification_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNotificationButton extends StatelessWidget {
  const EditNotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.customBottomSheet(
          context,
          child: UpdateNotificationBody(),
          whenComplete: () {},
        );
      },
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        child: Icon(
          Icons.edit,
          color: Colors.orange,
          size: 24.sp,
        ),
      ),
    );
  }
}
