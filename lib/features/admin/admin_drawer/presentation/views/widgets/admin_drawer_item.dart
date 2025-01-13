import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_drawer/data/models/admin_drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminDrawerItem extends StatelessWidget {
  const AdminDrawerItem({
    super.key,
    required this.adminDrawerItemModel,
    required this.onTap,
  });

  final AdminDrawerItemModel adminDrawerItemModel;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Row(
          children: [
            Icon(
              adminDrawerItemModel.icon,
              color: context.color.textColor,
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(
              adminDrawerItemModel.title,
              style: AppTextStyles.font15Bold(context),
            ),
          ],
        ),
      ),
    );
  }
}
