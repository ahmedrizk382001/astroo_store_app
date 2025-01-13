import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:flutter/material.dart';

class AdminCategoriesView extends StatelessWidget {
  const AdminCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(title: "Categories"),
    );
  }
}
