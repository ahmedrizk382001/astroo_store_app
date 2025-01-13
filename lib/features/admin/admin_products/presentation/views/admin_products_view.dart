import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:flutter/material.dart';

class AdminProductsView extends StatelessWidget {
  const AdminProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdminAppBar(title: "Products"),
    );
  }
}
