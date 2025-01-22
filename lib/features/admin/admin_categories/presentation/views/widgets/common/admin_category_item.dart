import 'package:astroo_store_app/core/shared/widgets/custom_container_linear_admin.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/common/admin_category_item_image.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/delete_category/delete_category_icon.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/update_category/update_category_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCategoryItem extends StatelessWidget {
  const AdminCategoryItem({super.key, required this.categoryItemModel});

  final CategoryItemModel categoryItemModel;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
        height: 130.h,
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryItemModel.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font18Bold(context),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          DeleteCategoryIcon(
                            id: categoryItemModel.id,
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          UpdateCategoryIcon(
                            id: categoryItemModel.id,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: AdminCatergoryItemImage(
                  image: categoryItemModel.image,
                ),
              )
            ],
          ),
        ));
  }
}
