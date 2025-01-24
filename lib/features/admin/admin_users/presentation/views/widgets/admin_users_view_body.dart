import 'package:astroo_store_app/features/admin/admin_users/presentation/bloc/get_users_bloc/get_users_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/views/widgets/admin_users_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminUsersViewBody extends StatelessWidget {
  const AdminUsersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<GetUsersBloc>()
            .add(GetUsersEvent.getUsers(isLoading: true));
      },
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.h,
            ),
          ),
          AdminUsersList(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.h,
            ),
          ),
        ],
      ),
    );
  }
}
