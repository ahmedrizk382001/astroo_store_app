import 'package:astroo_store_app/core/shared/widgets/empty_screen.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/bloc/get_users_bloc/get_users_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/views/widgets/admin_user_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminUsersList extends StatelessWidget {
  const AdminUsersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUsersBloc, GetUsersState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return SliverList.separated(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: LoadingShimmer(
                    width: double.infinity,
                    height: 120.h,
                    borderRadius: 16.r,
                  ),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 24.h,
              ),
            );
          },
          empty: () => EmptyScreen(),
          success: (body) {
            return SliverList.separated(
              itemCount: body.getUsersList().length,
              itemBuilder: (context, index) {
                return AdminUserItem(
                  userDataModel: body.getUsersList()[index],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 24.h,
              ),
            );
          },
          error: Text.new,
        );
      },
    );
  }
}
