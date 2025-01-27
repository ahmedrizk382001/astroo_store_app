import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/add_notification/add_notification_button.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/common/admin_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminNotificationsViewBody extends StatelessWidget {
  const AdminNotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: AddNotificationButton(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 24.h,
            ),
          ),
          SliverList.separated(
            itemCount: 10,
            separatorBuilder: (context, index) => SizedBox(
              height: 32.h,
            ),
            itemBuilder: (context, index) {
              return AdminNotificationItem();
            },
          )
        ],
      ),
    );
  }
}
