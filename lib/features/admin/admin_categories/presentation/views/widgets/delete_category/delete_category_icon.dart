import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/delete_category_bloc/delete_category_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/bloc/get_admin_categories/get_admin_categories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteCategoryIcon extends StatelessWidget {
  const DeleteCategoryIcon({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteCategoryBloc, DeleteCategoryState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessButtom(
                message: "Category deleted successfully");

            context.read<GetAdminCategoriesBloc>().add(
                  GetAdminCategoriesEvent.fetchAdminCategories(
                      isLoading: false),
                );
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
                message: "An error occured, please try again");
          },
        );
      },
      builder: (context, state) {
        var deleteCategoryCubit = context.read<DeleteCategoryBloc>();

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
                  deleteCategoryCubit
                      .add(DeleteCategoryEvent.deleteCategory(id: id));
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
              deleteCategoryCubit
                  .add(DeleteCategoryEvent.deleteCategory(id: id));
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
