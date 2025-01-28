import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/add_category_bloc/add_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/add_category/add_category_image.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/add_category/create_category_button.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoryBody extends StatelessWidget {
  const AddCategoryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var addCategoryBloc = context.read<AddCategoryBloc>();
    return Form(
      key: addCategoryBloc.formKey,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            Text(
              "Create Category",
              style: AppTextStyles.font18Bold(context),
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add a photo",
                style: AppTextStyles.font14Medium(context),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            AddCategoryImage(),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter the category name",
                style: AppTextStyles.font14Medium(context),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: addCategoryBloc.nameController,
              hintText: "Category Name",
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
            CreateCategoryButton(),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
