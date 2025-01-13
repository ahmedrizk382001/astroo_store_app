import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(title: "Dashboard"),
    );
  }
}
