import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/add_category_bloc/add_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/add_category/add_category_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCategoryButton extends StatelessWidget {
  const AddCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Add a new category",
          style: AppTextStyles.font18Medium(context),
        ),
        Spacer(),
        Expanded(
          child: CustomLinearButton(
              onPressed: () {
                CustomBottomSheet.customBottomSheet(
                  context,
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider(
                          create: (context) => getIt<UploadImageCubit>()),
                      BlocProvider(
                          create: (context) => getIt<AddCategoryBloc>()),
                    ],
                    child: AddCategoryBody(),
                  ),
                  whenComplete: () {
                    context.read<GetAdminCategoriesBloc>().add(
                        GetAdminCategoriesEvent.fetchAdminCategories(
                            isLoading: false));
                  },
                );
              },
              child: Text(
                "Add",
                style: AppTextStyles.font18Medium(context),
              )),
        )
      ],
    );
  }
}
