import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/widgets/common/admin_notifications_view_body.dart';
import 'package:flutter/material.dart';

class AdminNotificationsView extends StatelessWidget {
  const AdminNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(title: "Notifications"),
      body: AdminNotificationsViewBody(),
    );
  }
}
