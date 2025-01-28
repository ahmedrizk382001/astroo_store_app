import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/add_notification_bloc/add_notification_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/get_notifications_bloc/get_notifications_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/add_notification/add_notification_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNotificationButton extends StatelessWidget {
  const AddNotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Add a new notification",
          style: AppTextStyles.font18Medium(context),
        ),
        Spacer(),
        Expanded(
          child: CustomLinearButton(
              onPressed: () {
                CustomBottomSheet.customBottomSheet(
                  context,
                  child: BlocProvider(
                    create: (context) => getIt<AddNotificationBloc>(),
                    child: AddNotificationBody(),
                  ),
                  whenComplete: () {
                    context.read<GetNotificationsBloc>().add(
                          GetNotificationsEvent.getNotifications(
                              isLoading: false),
                        );
                  },
                );
              },
              child: Text(
                "Add",
                style: AppTextStyles.font18Medium(context),
              )),
        )
      ],
    );
  }
}
