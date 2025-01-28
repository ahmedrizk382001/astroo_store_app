import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/get_notifications_bloc/get_notifications_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/update_notification/update_notification_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditNotificationButton extends StatelessWidget {
  const EditNotificationButton({
    super.key,
    required this.notificationModel,
  });

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.customBottomSheet(
          context,
          child: UpdateNotificationBody(
            notificationModel: notificationModel,
          ),
          whenComplete: () {
            context
                .read<GetNotificationsBloc>()
                .add(GetNotificationsEvent.getNotifications(isLoading: false));
          },
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
