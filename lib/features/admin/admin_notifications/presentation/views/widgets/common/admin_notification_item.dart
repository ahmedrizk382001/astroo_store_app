import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/update_notification/edit_notification_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminNotificationItem extends StatelessWidget {
  const AdminNotificationItem({super.key});

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
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            leading: Icon(
              Icons.notifications_active,
              size: 24.sp,
              color: context.color.textColor,
            ),
            title: Text(
              "Don't Miss Out! Exclusive Limited-Time Sale Just for You!",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.font18Bold(context),
            ),
            subtitle: Text(
              "Your favorite items are on sale! 🕒 Hurry, up to 50% off on top brands. Sale ends tonight! 🛒 Tap to shop now.",
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
                  child: InkWell(
                    onTap: () {},
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
                  ),
                ),
                Expanded(
                  child: EditNotificationButton(),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(16.r),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 8.h,
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.green,
                        size: 24.sp,
                      ),
                    ),
                  ),
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
