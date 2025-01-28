import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/add_notification_bloc/add_notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateNotificationButton extends StatelessWidget {
  const CreateNotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNotificationBloc, AddNotificationState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.pop();

            ShowToast.showToastSuccessButtom(
                message: "Notification created successfully");
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
                message: "An error occured, try again");
          },
        );
      },
      builder: (context, state) {
        var addNotificationCubit = context.read<AddNotificationBloc>();

        return state.maybeWhen(
          loading: () => Center(
            child: CircularProgressIndicator(
              color: context.color.mainColor,
            ),
          ),
          orElse: () {
            return SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (!addNotificationCubit.formKey.currentState!
                        .validate()) {
                      ShowToast.showToastErrorButtom(
                          message: "Please fill the required fields");
                    } else {
                      addNotificationCubit
                          .add(AddNotificationEvent.addNotification(
                              body: NotificationModel(
                        header: addNotificationCubit.headerController.text,
                        content: addNotificationCubit.contentController.text,
                        productId:
                            addNotificationCubit.productIdController.text,
                      )));
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(context.color.mainColor),
                  ),
                  child: Text(
                    "Create",
                    style: AppTextStyles.font14Medium(context),
                  )),
            );
          },
        );
      },
    );
  }
}
