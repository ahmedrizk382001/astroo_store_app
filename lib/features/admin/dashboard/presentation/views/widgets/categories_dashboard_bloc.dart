import 'package:astroo_store_app/core/styles/images/app_images.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/dashboard_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesDashboardBloc extends StatelessWidget {
  const CategoriesDashboardBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return DashboardItem(
              title: "Categories",
              icon: Assets.pngDashboardCategories,
              value: "0",
              isLoading: true,
            );
          },
          success: (categoriesNum) {
            return DashboardItem(
                title: "Categories",
                icon: Assets.pngDashboardCategories,
                value: categoriesNum);
          },
          error: (error) {
            return DashboardItem(
              title: "Categories",
              icon: Assets.pngDashboardCategories,
              value: "0",
              isLoading: true,
            );
          },
        );
      },
    );
  }
}
