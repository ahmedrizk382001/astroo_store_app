import 'package:astroo_store_app/core/styles/images/app_images.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/dashboard_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersDashboardBloc extends StatelessWidget {
  const UsersDashboardBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersNumberBloc, UsersNumberState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return DashboardItem(
              title: "Users",
              icon: Assets.pngDashboardUsers,
              value: "0",
              isLoading: true,
            );
          },
          success: (usersNum) {
            return DashboardItem(
                title: "Users",
                icon: Assets.pngDashboardUsers,
                value: usersNum);
          },
          error: (error) {
            return DashboardItem(
              title: "Users",
              icon: Assets.pngDashboardUsers,
              value: "0",
              isLoading: true,
            );
          },
        );
      },
    );
  }
}
