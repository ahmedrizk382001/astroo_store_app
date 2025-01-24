import 'package:astroo_store_app/core/di/dependency_injection.dart';
import 'package:astroo_store_app/core/shared/widgets/admin_app_bar.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/bloc/bloc/admin_delete_user_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/bloc/get_users_bloc/get_users_bloc.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/views/widgets/admin_users_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminUsersView extends StatelessWidget {
  const AdminUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetUsersBloc>()
            ..add(GetUsersEvent.getUsers(isLoading: true)),
        ),
        BlocProvider(
          create: (context) => getIt<AdminDeleteUserBloc>(),
        )
      ],
      child: Scaffold(
        appBar: AdminAppBar(title: "Users"),
        body: AdminUsersViewBody(),
      ),
    );
  }
}
