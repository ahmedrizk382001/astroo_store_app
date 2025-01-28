import 'package:astroo_store_app/core/shared/widgets/empty_screen.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/get_notifications_bloc/get_notifications_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/add_notification/add_notification_button.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/common/admin_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminNotificationsViewBody extends StatelessWidget {
  const AdminNotificationsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: RefreshIndicator(
        onRefresh: () async {
          context
              .read<GetNotificationsBloc>()
              .add(GetNotificationsEvent.getNotifications(isLoading: true));
        },
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
            BlocBuilder<GetNotificationsBloc, GetNotificationsState>(
              builder: (context, state) {
                return state.when(
                  loading: () => SliverList.separated(
                    itemCount: 6,
                    separatorBuilder: (context, index) => SizedBox(
                      height: 32.h,
                    ),
                    itemBuilder: (context, index) {
                      return LoadingShimmer(
                        height: 200.h,
                      );
                    },
                  ),
                  empty: () => EmptyScreen(),
                  success: (notificationsList) {
                    return SliverList.separated(
                      itemCount: notificationsList.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 32.h,
                      ),
                      itemBuilder: (context, index) {
                        return AdminNotificationItem(
                          notificationModel: notificationsList[index],
                          index: index,
                        );
                      },
                    );
                  },
                  error: Text.new,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
