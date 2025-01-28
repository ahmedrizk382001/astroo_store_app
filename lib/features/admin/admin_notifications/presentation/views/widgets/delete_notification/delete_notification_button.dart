import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/get_notifications_bloc/get_notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteNotificationButton extends StatelessWidget {
  const DeleteNotificationButton({
    super.key,
    required this.notificationModel,
  });

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        notificationModel.delete();
        context.read<GetNotificationsBloc>().add(
              GetNotificationsEvent.getNotifications(isLoading: false),
            );
      },
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        child: Icon(
          Icons.delete,
          color: Colors.red,
          size: 24.sp,
        ),
      ),
    );
  }
}
