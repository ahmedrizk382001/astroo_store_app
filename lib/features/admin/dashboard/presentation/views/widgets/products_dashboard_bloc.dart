import 'package:astroo_store_app/core/styles/images/app_images.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/dashboard_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsDashboardBloc extends StatelessWidget {
  const ProductsDashboardBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsNumberBloc, ProductsNumberState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return DashboardItem(
              title: "Products",
              icon: Assets.pngDashboardProducts,
              value: "0",
              isLoading: true,
            );
          },
          success: (productsNum) {
            return DashboardItem(
                title: "Products",
                icon: Assets.pngDashboardProducts,
                value: productsNum);
          },
          error: (error) {
            return DashboardItem(
              title: "Products",
              icon: Assets.pngDashboardProducts,
              value: "0",
              isLoading: true,
            );
          },
        );
      },
    );
  }
}
