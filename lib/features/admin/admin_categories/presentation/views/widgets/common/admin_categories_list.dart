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
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index.isEven) {
                    return LoadingShimmer(
                      height: 130.h,
                      borderRadius: 15,
                    );
                  } else {
                    return SizedBox(height: 16.h); // Separator
                  }
                },
                childCount: 5 * 2 - 1, // Total items + separators
              ),
            );
          },
          success: (categoriesModel) {
            final categories = categoriesModel.getCategoriesList();
            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index.isEven) {
                    return AdminCategoryItem(
                      categoryItemModel: categories[index ~/ 2],
                    );
                  } else {
                    return SizedBox(height: 16.h); // Separator
                  }
                },
                childCount:
                    categories.length * 2 - 1, // Total items + separators
              ),
            );
          },
          empty: () {
            return SliverToBoxAdapter(
              child: EmptyScreen(
                title: "No categories to show...",
              ),
            );
          },
          error: (error) {
            return SliverToBoxAdapter(
              child: Text(
                error,
                style: TextStyle(color: Colors.red),
              ),
            );
          },
        );
      },
    );
  }
}
