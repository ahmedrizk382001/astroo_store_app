import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductImages extends StatelessWidget {
  const AddProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return BlocConsumer<UploadImageCubit, UploadImageState>(
          listener: (context, state) {
            state.mapOrNull(
              success: (value) {
                ShowToast.showToastSuccessButtom(
                    message: "Image uploaded successfully");
              },
              error: (error) {
                ShowToast.showToastErrorButtom(
                    message: "An error occured, try again");
              },
            );
          },
          builder: (context, state) {
            var imageCubit = context.read<UploadImageCubit>();
            return state.maybeWhen(
              loadingList: (imageIndex) {
                if (imageCubit.imagesList[index] != '') {
                  return GestureDetector(
                      onTap: () {
                        imageCubit.uploadImageList(index: index);
                      },
                      child: _buildSuccessState(imageCubit.imagesList[index]));
                } else {
                  if (imageIndex == index) {
                    return _buildLoadingState();
                  } else {
                    return _buildInitialState();
                  }
                }
              },
              success: (_) {
                if (imageCubit.imagesList[index] != '') {
                  return GestureDetector(
                      onTap: () {
                        imageCubit.uploadImageList(index: index);
                      },
                      child: _buildSuccessState(imageCubit.imagesList[index]));
                } else {
                  return GestureDetector(
                      onTap: () {
                        imageCubit.uploadImageList(index: index);
                      },
                      child: _buildInitialState());
                }
              },
              orElse: () {
                return GestureDetector(
                    onTap: () {
                      imageCubit.uploadImageList(index: index);
                    },
                    child: _buildInitialState());
              },
            );
          },
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 16.h,
      ),
      itemCount: 3,
    );
  }
}

Widget _buildLoadingState() {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      _buildImageContainer(color: Colors.grey),
      const CircularProgressIndicator(color: Colors.white),
    ],
  );
}

Widget _buildSuccessState(String imageUrl) {
  return GestureDetector(
    child: Stack(
      alignment: Alignment.center,
      children: [
        _buildImageContainer(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.r),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => LoadingShimmer(),
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.error, color: Colors.red),
              ),
            ),
          ),
        ),
        Icon(Icons.add_a_photo_outlined, size: 48.sp, color: Colors.white),
      ],
    ),
  );
}

Widget _buildInitialState() {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      _buildImageContainer(color: Colors.grey),
      Icon(Icons.add_a_photo_outlined, size: 48.sp, color: Colors.white),
    ],
  );
}

Widget _buildImageContainer({
  Color? color,
  Widget? child,
}) {
  return Container(
    width: double.infinity,
    height: 130.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24.r),
      color: color,
    ),
    child: child,
  );
}
