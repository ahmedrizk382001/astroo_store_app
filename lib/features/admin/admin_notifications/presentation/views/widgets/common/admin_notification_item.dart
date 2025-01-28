import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/get_notifications_bloc/get_notifications_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/delete_notification/delete_notification_button.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/send_notification/send_notification_button.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/update_notification/edit_notification_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminNotificationItem extends StatelessWidget {
  const AdminNotificationItem(
      {super.key, required this.notificationModel, required this.index});

  final NotificationModel notificationModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            context.color.containerLinear1!.withOpacity(0.8),
            context.color.containerLinear2!.withOpacity(0.8),
          ],
          begin: const Alignment(0.36, 0.27),
          end: const Alignment(0.58, 0.85),
        ),
        boxShadow: [
          BoxShadow(
            color: context.color.containerLinear1!.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
          BoxShadow(
            color: context.color.containerLinear2!.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(
              right: 16.w,
              left: 16.w,
              top: 16.h,
              bottom: 0,
            ),
            leading: Icon(
              Icons.notifications_active,
              size: 24.sp,
              color: context.color.textColor,
            ),
            title: Text(
              notificationModel.header,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font18Bold(context),
            ),
            subtitle: Text(
              notificationModel.content,
              style: AppTextStyles.font12Medium(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                Expanded(
                  child: DeleteNotificationButton(
                      notificationModel: notificationModel),
                ),
                Expanded(
                  child: EditNotificationButton(
                      notificationModel: notificationModel),
                ),
                Expanded(
                  child: SendNotificationButton(
                      notificationModel: notificationModel),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
