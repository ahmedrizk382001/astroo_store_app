import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/common/admin_products_sliver_grid.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/add_product/add_product_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminProductsViewBody extends StatelessWidget {
  const AdminProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: RefreshIndicator(
        onRefresh: () async {
          context
              .read<GetAdminProductsBloc>()
              .add(GetAdminProductsEvent.getAdminProducts(isLoading: true));
        },
        color: context.color.mainColor,
        backgroundColor: Colors.white,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: AddProductButton(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24.h,
              ),
            ),
            AdminProductsSliverGrid(),
          ],
        ),
      ),
    );
  }
}
