import 'package:astroo_store_app/core/shared/widgets/custom_container_linear_admin.dart';
import 'package:astroo_store_app/core/styles/fonts/app_text_styles.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/products_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/widgets/common/admin_product_item_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminProductItem extends StatelessWidget {
  const AdminProductItem({super.key, required this.productItemModel});

  final ProductItemModel productItemModel;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 300.h,
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 10.w,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.edit,
                  size: 24.sp,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
              child:
                  AdminProductItemImage(image: productItemModel.images.first)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            productItemModel.title,
            style: AppTextStyles.font14Bold(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            productItemModel.category.name,
            style: AppTextStyles.font12Medium(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            r"$" "${productItemModel.price}",
            style: AppTextStyles.font12Medium(context),
          ),
        ],
      ),
    );
  }
}
