import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/update_product_bloc/update_product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProductButton extends StatelessWidget {
  const UpdateProductButton({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateProductBloc, UpdateProductState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.pop();

            ShowToast.showToastSuccessButtom(
                message: "Product updated successfully");
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
                message: "An error occured, try again");
          },
        );
      },
      builder: (context, state) {
        var updateProductBloc = context.read<UpdateProductBloc>();

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

                    if (updateProductBloc.formKey.currentState!.validate() ||
                        indexEmptyImage < 3) {
                      if (indexEmptyImage < -1) {
                        ShowToast.showToastErrorButtom(
                          message: "Please select at least 3 images",
                        );
                      } else {
                        updateProductBloc.add(
                          UpdateProductEvent.updateProduct(
                            body: UpdateProductRequestModel(
                              id: id,
                              title: updateProductBloc.nameController.text,
                              description:
                                  updateProductBloc.descriptionController.text,
                              price: double.parse(
                                  updateProductBloc.priceController.text),
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
                    "Update",
                    style: AppTextStyles.font14Medium(context),
                  )),
            );
          },
        );
      },
    );
  }
}
