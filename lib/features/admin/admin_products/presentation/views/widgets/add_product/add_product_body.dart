import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_drop_down_menu.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/add_product_bloc/add_product_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/add_product/add_product_images.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/add_product/create_product_button.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductBody extends StatefulWidget {
  const AddProductBody({
    super.key,
  });

  @override
  State<AddProductBody> createState() => _AddProductBodyState();
}

class _AddProductBodyState extends State<AddProductBody> {
  String? categoryName, catgeoryId;

  @override
  Widget build(BuildContext context) {
    var addProductBloc = context.read<AddProductBloc>();
    return Form(
      key: addProductBloc.formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Create Product",
                style: AppTextStyles.font18Bold(context),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add photos",
                style: AppTextStyles.font14Medium(context),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            AddProductImages(),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Enter the product name",
              style: AppTextStyles.font14Medium(context),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: addProductBloc.nameController,
              hintText: "Product Name",
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
            Text(
              "Enter the product description",
              style: AppTextStyles.font14Medium(context),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: addProductBloc.descriptionController,
              hintText: "Product Description",
              maxLines: 5,
              validator: (value) {
                if (value!.isEmpty || value.length < 5) {
                  return " Please enter description";
                }
                return null;
              },
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Choose Product Category",
              style: AppTextStyles.font14Medium(context),
            ),
            SizedBox(
              height: 16.h,
            ),
            BlocProvider(
              create: (context) => getIt<GetAdminCategoriesBloc>()
                ..add(GetAdminCategoriesEvent.fetchAdminCategories(
                    isLoading: false)),
              child:
                  BlocBuilder<GetAdminCategoriesBloc, GetAdminCategoriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (categoriesModel) {
                      return CustomDropDownMenu(
                        items: categoriesModel.getCategoriesNames(),
                        hintText: "Select a category",
                        onChanged: (value) {
                          categoryName = value;
                          catgeoryId = categoriesModel
                              .getCategoriesList()
                              .firstWhere((e) => e.name == value)
                              .id;
                          setState(() {});
                        },
                        value: categoryName,
                      );
                    },
                    orElse: () {
                      return CustomDropDownMenu(
                        items: const [''],
                        hintText: "Select a Category",
                        onChanged: (value) {},
                        value: "Select a Category",
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "Enter the product Price",
              style: AppTextStyles.font14Medium(context),
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              controller: addProductBloc.priceController,
              hintText: "Product Price",
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter price";
                }
                return null;
              },
            ),
            SizedBox(
              height: 32.h,
            ),
            CreateProductButton(
              categoryId: double.parse(catgeoryId ?? '0'),
            ),
            SizedBox(
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
