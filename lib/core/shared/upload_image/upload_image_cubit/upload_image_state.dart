part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.loading() = LoadingState;
  const factory UploadImageState.success({required String imageUrl}) =
      SuccessState;
  const factory UploadImageState.error({required String error}) = ErrorState;
}
