import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/delete_product_bloc/delete_product_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/bloc/get_admin_products/get_admin_products_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteProductIconButton extends StatelessWidget {
  const DeleteProductIconButton({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteProductBloc, DeleteProductState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessButtom(
                message: "Product deleted successfully");

            context.read<GetAdminProductsBloc>().add(
                  GetAdminProductsEvent.getAdminProducts(isLoading: false),
                );
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
                message: "An error occured, please try again");
          },
        );
      },
      builder: (context, state) {
        var deleteProductCubit = context.read<DeleteProductBloc>();

        return state.maybeWhen(
          loading: (currentId) {
            if (id == currentId) {
              return Center(
                child: SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  deleteProductCubit
                      .add(DeleteProductEvent.deleteProduct(id: id));
                },
                child: Icon(
                  Icons.delete_forever,
                  size: 24.sp,
                  color: Colors.red,
                ),
              );
            }
          },
          orElse: () => GestureDetector(
            onTap: () {
              deleteProductCubit.add(DeleteProductEvent.deleteProduct(id: id));
            },
            child: Icon(
              Icons.delete_forever,
              size: 24.sp,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
