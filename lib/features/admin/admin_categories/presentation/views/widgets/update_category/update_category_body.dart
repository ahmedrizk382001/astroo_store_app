import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/update_category_bloc/update_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/update_category/update_category_button.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/update_category/update_category_image.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryBody extends StatelessWidget {
  const UpdateCategoryBody({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    var updateCategoryBloc = context.read<UpdateCategoryBloc>();
    return Form(
      key: updateCategoryBloc.formKey,
      child: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          Text(
            "Update Category",
            style: AppTextStyles.font18Bold(context),
          ),
          SizedBox(
            height: 32.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Add a new photo",
              style: AppTextStyles.font14Medium(context),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          UpdateCategoryImage(),
          SizedBox(
            height: 32.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter the new category name",
              style: AppTextStyles.font14Medium(context),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextField(
            controller: updateCategoryBloc.nameController,
            hintText: "New Category Name",
            maxLength: 1,
            validator: (value) {
              if (value!.isEmpty || value.length < 3) {
                return S.of(context).valid_name;
              }
              return null;
            },
          ),
          SizedBox(
            height: 32.h,
          ),
          UpdateCategoryButton(
            id: id,
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
