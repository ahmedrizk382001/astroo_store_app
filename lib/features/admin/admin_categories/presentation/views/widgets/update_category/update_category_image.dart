import 'package:astroo_store_app/core/shared/upload_image/upload_image_cubit/upload_image_cubit.dart';
import 'package:astroo_store_app/core/shared/widgets/loading_shimmer.dart';
import 'package:astroo_store_app/core/shared/widgets/show_toast.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryImage extends StatelessWidget {
  const UpdateCategoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_) {
            ShowToast.showToastSuccessButtom(
              message: "Image uploaded successfully",
            );
          },
          error: (_) {
            ShowToast.showToastSuccessButtom(
              message: "An error has occurred, try again",
            );
          },
        );
      },
      builder: (context, state) {
        final uploadImageCubit = context.read<UploadImageCubit>();

        return GestureDetector(
          onTap: () => uploadImageCubit.uploadImage(),
          child: _buildStateContent(state),
        );
      },
    );
  }

  Widget _buildStateContent(UploadImageState state) {
    return state.maybeWhen(
      loading: () => _buildLoadingState(),
      success: (imageUrl) => _buildSuccessState(imageUrl),
      orElse: () => _buildInitialState(),
    );
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
    return Stack(
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
}
