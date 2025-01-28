import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/bloc/get_notifications_bloc/get_notifications_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/common/admin_notifications_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminNotificationsView extends StatelessWidget {
  const AdminNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetNotificationsBloc>()
        ..add(GetNotificationsEvent.getNotifications(isLoading: true)),
      child: Scaffold(
        appBar: AdminAppBar(title: "Notifications"),
        body: AdminNotificationsViewBody(),
      ),
    );
  }
}
