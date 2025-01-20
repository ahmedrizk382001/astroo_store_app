import 'package:astroo_store_app/core/shared/widgets/custom_container_linear_admin.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/widgets/common/admin_category_item_image.dart';
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.font18Bold(context),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.delete_forever,
                              size: 24.sp,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.edit,
                              size: 24.sp,
                              color: Colors.green,
                            ),
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
