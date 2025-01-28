import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/send_notification_bloc/send_notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendNotificationButton extends StatelessWidget {
  const SendNotificationButton({
    super.key,
    required this.notificationModel,
  });

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SendNotificationBloc>(),
      child: BlocConsumer<SendNotificationBloc, SendNotificationState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              ShowToast.showToastSuccessButtom(
                  message: "Notification sent successfully");
            },
            error: (error) {
              ShowToast.showToastErrorButtom(
                  message: "An error occured, try again");
            },
          );
        },
        builder: (context, state) {
          var sendNotificationBloc = context.read<SendNotificationBloc>();
          return state.maybeWhen(
            loading: () => Center(
              child: SizedBox(
                height: 24.h,
                width: 24.w,
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              ),
            ),
            orElse: () {
              return InkWell(
                onTap: () {
                  sendNotificationBloc.add(
                    SendNotificationEvent.sendNotification(
                        body: notificationModel),
                  );
                },
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
              );
            },
          );
        },
      ),
    );
  }
}
