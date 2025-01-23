import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/update_product_bloc/update_product_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/update_product/update_product_button.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/update_product/update_product_images.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateProductBody extends StatefulWidget {
  const UpdateProductBody({
    super.key,
  });

  @override
  State<UpdateProductBody> createState() => _UpdateProductBodyState();
}

class _UpdateProductBodyState extends State<UpdateProductBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProductBloc, UpdateProductState>(
      builder: (context, state) {
        return state.maybeWhen(
          getProductLoading: () => Padding(
            padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 32.w),
            child: Center(
              child: CircularProgressIndicator(
                color: context.color.textColor,
              ),
            ),
          ),
          orElse: () {
            var updateProductBloc = context.read<UpdateProductBloc>();
            return Form(
              key: updateProductBloc.formKey,
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
                        "Update Product",
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
                    UpdateProductImages(
                      images: updateProductBloc.images,
                    ),
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
                      controller: updateProductBloc.nameController,
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
                      controller: updateProductBloc.descriptionController,
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
                      "Enter the product Price",
                      style: AppTextStyles.font14Medium(context),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextField(
                      controller: updateProductBloc.priceController,
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
                    UpdateProductButton(id: updateProductBloc.id ?? '0'),
                    SizedBox(
                      height: 16.h,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
