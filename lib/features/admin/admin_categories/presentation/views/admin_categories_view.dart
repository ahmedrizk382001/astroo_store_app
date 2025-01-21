import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/add_category_bloc/add_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/common/admin_categories_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminCategoriesView extends StatelessWidget {
  const AdminCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetAdminCategoriesBloc>()
            ..add(
              GetAdminCategoriesEvent.fetchAdminCategories(isLoading: true),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AdminAppBar(title: "Categories"),
        body: AdminCategoriesViewBody(),
      ),
    );
  }
}
