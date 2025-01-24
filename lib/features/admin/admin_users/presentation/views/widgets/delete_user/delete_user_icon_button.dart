import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/bloc/bloc/admin_delete_user_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/bloc/get_users_bloc/get_users_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteUserIconButton extends StatelessWidget {
  const DeleteUserIconButton({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminDeleteUserBloc, AdminDeleteUserState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessButtom(
                message: "User deleted successfully");

            context.read<GetUsersBloc>().add(
                  GetUsersEvent.getUsers(isLoading: false),
                );
          },
          error: (error) {
            ShowToast.showToastErrorButtom(
                message: "An error occured, please try again");
          },
        );
      },
      builder: (context, state) {
        var deleteUserCubit = context.read<AdminDeleteUserBloc>();

        return state.maybeWhen(
          loading: (currentId) {
            if (id == currentId) {
              return SizedBox(
                height: 24.h,
                width: 24.w,
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              );
            } else {
              return GestureDetector(
                onTap: () {
                  deleteUserCubit.add(AdminDeleteUserEvent.deleteUser(id: id));
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
              deleteUserCubit.add(AdminDeleteUserEvent.deleteUser(id: id));
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
