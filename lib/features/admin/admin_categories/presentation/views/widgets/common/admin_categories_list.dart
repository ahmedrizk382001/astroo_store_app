import 'package:astroo_store_app/core/shared/widgets/empty_screen.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/common/admin_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCategoriesList extends StatelessWidget {
  const AdminCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAdminCategoriesBloc, GetAdminCategoriesState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return LoadingShimmer(
                  height: 130.h,
                  borderRadius: 15,
                );
              },
              separatorBuilder: (context, index) => SizedBox(height: 15.h),
              itemCount: 5,
            );
          },
          success: (categoriesModel) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemCount: categoriesModel.getCategoriesList().length,
              itemBuilder: (context, index) {
                return AdminCategoryItem(
                  categoryItemModel: categoriesModel.getCategoriesList()[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 16.h,
              ),
            );
          },
          empty: () => EmptyScreen(
            title: "No categories to show...",
          ),
          error: Text.new,
        );
      },
    );
  }
}
