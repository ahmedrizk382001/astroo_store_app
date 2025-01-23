import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_bottom_sheet.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/update_product_bloc/update_product_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/update_product/update_product_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProductIconButton extends StatelessWidget {
  const EditProductIconButton({
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
              BlocProvider(
                  create: (context) => getIt<UpdateProductBloc>()
                    ..add(UpdateProductEvent.getProductById(id: id))),
            ],
            child: UpdateProductBody(),
          ),
          whenComplete: () {
            context
                .read<GetAdminProductsBloc>()
                .add(GetAdminProductsEvent.getAdminProducts(isLoading: false));
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
