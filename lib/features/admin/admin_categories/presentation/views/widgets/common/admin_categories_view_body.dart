import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/add_category/add_category_button.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/common/admin_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCategoriesViewBody extends StatelessWidget {
  const AdminCategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<GetAdminCategoriesBloc>().add(
              GetAdminCategoriesEvent.fetchAdminCategories(isLoading: true));
        },
        color: context.color.mainColor,
        backgroundColor: Colors.white,
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: AddCategoryButton(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24.h,
              ),
            ),
            AdminCategoriesList(),
          ],
        ),
      ),
    );
  }
}
