import 'package:astroo_store_app/core/shared/upload_image/repo/upload_image_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit(this._uploadImageRepo) : super(UploadImageState.initial());

  final UploadImageRepo _uploadImageRepo;

  String imageUrl = '';

  Future<void> uploadImage() async {
    emit(UploadImageState.loading());

    // Pick an image.
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      var respones = await _uploadImageRepo.uploadImage(image: image);
      respones.when(
        success: (data) {
          if (data.imageUrl != null) {
            emit(UploadImageState.success(imageUrl: data.imageUrl!));
            imageUrl = data.imageUrl!;
          } else {
            emit(UploadImageState.error(error: "Error uploading image"));
          }
        },
        failure: (error) {
          emit(UploadImageState.error(error: error));
        },
      );
    } else {
      emit(UploadImageState.error(error: "No image selected"));
    }
  }
}
