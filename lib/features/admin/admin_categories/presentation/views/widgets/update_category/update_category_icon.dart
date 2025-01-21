import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/update_category_bloc/update_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/update_category/update_category_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryIcon extends StatelessWidget {
  const UpdateCategoryIcon({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        CustomBottomSheet.customBottomSheet(
          context,
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<UploadImageCubit>()),
              BlocProvider(create: (context) => getIt<UpdateCategoryBloc>()),
            ],
            child: UpdateCategoryBody(
              id: id,
            ),
          ),
          whenComplete: () {
            context.read<GetAdminCategoriesBloc>().add(
                GetAdminCategoriesEvent.fetchAdminCategories(isLoading: false));
          },
        );
      },
      child: Icon(
        Icons.edit,
        size: 24.sp,
        color: Colors.green,
      ),
    );
  }
}
