import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/common/admin_products_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminProductsView extends StatelessWidget {
  const AdminProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetAdminProductsBloc>()
            ..add(
              GetAdminProductsEvent.getAdminProducts(isLoading: true),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AdminAppBar(title: "Products"),
        body: AdminProductsViewBody(),
      ),
    );
  }
}
