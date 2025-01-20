import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/dashboard_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ProductsNumberBloc>()
              ..add(ProductsNumberEvent.getProductsNumber()),
          ),
          BlocProvider(
            create: (context) => getIt<CategoriesNumberBloc>()
              ..add(CategoriesNumberEvent.getCategoriesNumber()),
          ),
          BlocProvider(
            create: (context) => getIt<UsersNumberBloc>()
              ..add(UsersNumberEvent.getUsersNumber()),
          ),
        ],
        child: Scaffold(
          appBar: AdminAppBar(title: "Dashboard"),
          body: DashboardViewBody(),
        ));
  }
}
