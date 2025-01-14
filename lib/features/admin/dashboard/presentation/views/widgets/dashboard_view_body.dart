import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/categories_dashboard_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/products_dashboard_bloc.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/widgets/users_dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
      child: Column(
        children: [
          ProductsDashboardBloc(),
          SizedBox(
            height: 24.h,
          ),
          CategoriesDashboardBloc(),
          SizedBox(
            height: 24.h,
          ),
          UsersDashboardBloc(),
        ],
      ),
    );
  }
}
