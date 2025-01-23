import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/add_product_bloc/add_product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProductButton extends StatelessWidget {
  const CreateProductButton({
    super.key,
    required this.categoryId,
  });

  final double categoryId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductBloc, AddProductState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.pop();

            ShowToast.showToastSuccessButtom(
                message: "Product added successfully");
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
                message: "An error occured, try again");
          },
        );
      },
      builder: (context, state) {
        var addProductBloc = context.read<AddProductBloc>();

        return state.maybeWhen(
          loading: () => Center(
            child: CircularProgressIndicator(
              color: context.color.mainColor,
            ),
          ),
          orElse: () {
            return SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    final indexEmptyImage = context
                        .read<UploadImageCubit>()
                        .imagesList
                        .indexWhere((e) => e.isNotEmpty);

                    if (addProductBloc.formKey.currentState!.validate() ||
                        indexEmptyImage == -1 ||
                        categoryId == 0) {
                      if (indexEmptyImage == -1) {
                        ShowToast.showToastErrorButtom(
                          message: "Please select image",
                        );
                      } else if (categoryId == 0) {
                        ShowToast.showToastErrorButtom(
                          message: 'Please select your category',
                        );
                      } else {
                        debugPrint(
                            context.read<UploadImageCubit>().imagesList.first);

                        addProductBloc.add(
                          AddProductEvent.addProduct(
                            body: AddProductRequestModel(
                              title: addProductBloc.nameController.text,
                              description:
                                  addProductBloc.descriptionController.text,
                              price: double.parse(
                                  addProductBloc.priceController.text),
                              categoryId: categoryId,
                              images:
                                  context.read<UploadImageCubit>().imagesList,
                            ),
                          ),
                        );
                      }
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(context.color.mainColor),
                  ),
                  child: Text(
                    "Create",
                    style: AppTextStyles.font14Medium(context),
                  )),
            );
          },
        );
      },
    );
  }
}
