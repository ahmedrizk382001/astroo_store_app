import 'package:astroo_store_app/core/shared/widgets/custom_container_linear_admin.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
    this.isLoading = false,
  });

  final String title, icon, value;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      width: double.infinity,
      height: 130.h,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.font24Bold(context),
                ),
                Spacer(),
                if (!isLoading)
                  Text(
                    value,
                    style: AppTextStyles.font24Bold(context),
                  ),
                if (isLoading)
                  LoadingShimmer(
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    height: 35.h,
                  )
              ],
            ),
            Spacer(),
            Image.asset(icon)
          ],
        ),
      ),
    );
  }
}
