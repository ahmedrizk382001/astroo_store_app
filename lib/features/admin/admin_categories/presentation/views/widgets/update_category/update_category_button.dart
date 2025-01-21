import 'dart:ffi';

import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/update_category_bloc/update_category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateCategoryButton extends StatelessWidget {
  const UpdateCategoryButton({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateCategoryBloc, UpdateCategoryState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.pop();
            ShowToast.showToastSuccessButtom(
              message: 'Category Updated successfully',
            );
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
              message: "An error has occured, please try again",
            );
          },
        );
      },
      builder: (context, state) {
        var updateCategoryCubit = context.read<UpdateCategoryBloc>();

        return state.maybeWhen(
          loading: () => Center(
            child: CircularProgressIndicator(
              color: context.color.mainColor,
            ),
          ),
          orElse: () => SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  if (!updateCategoryCubit.formKey.currentState!.validate() ||
                      context.read<UploadImageCubit>().imageUrl.isEmpty) {
                    ShowToast.showToastErrorButtom(
                        message: "Please fill the required fields");
                  } else {
                    updateCategoryCubit.add(UpdateCategoryEvent.updateCategory(
                        body: UpdateCategoryRequestModel(
                            id: id,
                            name: updateCategoryCubit.nameController.text,
                            image: context.read<UploadImageCubit>().imageUrl)));
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
          ),
        );
      },
    );
  }
}
