import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_linear_button.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/add_product_bloc/add_product_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/add_product/add_product_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Add a new product",
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
                          create: (context) => getIt<AddProductBloc>()),
                    ],
                    child: AddProductBody(),
                  ),
                  whenComplete: () {
                    context.read<GetAdminProductsBloc>().add(
                        GetAdminProductsEvent.getAdminProducts(
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
