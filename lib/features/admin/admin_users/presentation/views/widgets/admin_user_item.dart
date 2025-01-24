import 'package:astroo_store_app/core/extensions/string_extension.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_container_linear_admin.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_users/data/models/get_users_model.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/views/widgets/delete_user/delete_user_icon_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminUserItem extends StatelessWidget {
  const AdminUserItem({
    super.key,
    required this.userDataModel,
  });

  final UserDataModel userDataModel;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      width: double.infinity,
      height: 120.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: CachedNetworkImage(
            width: 70.w,
            height: 70.h,
            imageUrl: userDataModel.avatar.imageProductFormat(),
            fit: BoxFit.cover,
            placeholder: (context, url) => LoadingShimmer(),
            errorWidget: (context, url, error) => Container(
              color: Colors.black54,
              child: Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 24.sp,
                ),
              ),
            ),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        title: Text(
          userDataModel.name,
          style: AppTextStyles.font16Bold(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          userDataModel.email,
          style: AppTextStyles.font12Medium(context),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: DeleteUserIconButton(
          id: userDataModel.id,
        ),
      ),
    );
  }
}
