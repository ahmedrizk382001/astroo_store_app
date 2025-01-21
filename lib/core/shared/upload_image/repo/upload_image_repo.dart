import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/core/shared/upload_image/data_source/upload_image_data_source.dart';
import 'package:astroo_store_app/core/shared/upload_image/model/upload_image_response_model.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageRepo {
  final UploadImageDataSource _uploadImageDataSource;

  UploadImageRepo(this._uploadImageDataSource);

  Future<ApiResult<UploadImageResponseModel>> uploadImage(
      {required XFile image}) async {
    try {
      var response = await _uploadImageDataSource.uploadImage(image: image);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
