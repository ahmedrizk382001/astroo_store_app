import 'package:astroo_store_app/core/shared/widgets/empty_screen.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/common/admin_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminProductsSliverGrid extends StatelessWidget {
  const AdminProductsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAdminProductsBloc, GetAdminProductsState>(
      builder: (context, state) {
        return state.when(
          loading: () => SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 24.h,
              childAspectRatio: 165 / 280,
            ),
            itemCount: 6,
            itemBuilder: (context, index) => LoadingShimmer(),
          ),
          empty: () => SliverToBoxAdapter(
            child: EmptyScreen(
              title: "No Products to show...",
            ),
          ),
          success: (body) {
            return SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.h,
                mainAxisSpacing: 24.h,
                childAspectRatio: 165 / 280,
              ),
              itemCount: body.data.products.length,
              itemBuilder: (context, index) {
                return AdminProductItem(
                  productItemModel: body.data.products[index],
                );
              },
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
