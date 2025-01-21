import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCatergoryItemImage extends StatelessWidget {
  const AdminCatergoryItemImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: CachedNetworkImage(
        imageUrl: image,
        fit: BoxFit.cover,
        placeholder: (context, url) => LoadingShimmer(),
        errorWidget: (context, url, error) => Container(
          color: Colors.black54,
          child: Center(
              child: Icon(
            Icons.error,
            size: 48.sp,
            color: Colors.red,
          )),
        ),
      ),
    );
  }
}
