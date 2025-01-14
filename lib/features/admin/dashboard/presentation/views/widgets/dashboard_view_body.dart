import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/categories_dashboard_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/products_dashboard_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/users_dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: RefreshIndicator(
        color: context.color.mainColor,
        backgroundColor: Colors.white,
        onRefresh: () async {
          context
              .read<ProductsNumberBloc>()
              .add(const ProductsNumberEvent.getProductsNumber());
          context
              .read<CategoriesNumberBloc>()
              .add(const CategoriesNumberEvent.getCategoriesNumber());
          context
              .read<UsersNumberBloc>()
              .add(const UsersNumberEvent.getUsersNumber());
        },
        child: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            ProductsDashboardBloc(),
            SizedBox(
              height: 24.h,
            ),
            CategoriesDashboardBloc(),
            SizedBox(
              height: 24.h,
            ),
            UsersDashboardBloc(),
          ],
        ),
      ),
    );
  }
}
