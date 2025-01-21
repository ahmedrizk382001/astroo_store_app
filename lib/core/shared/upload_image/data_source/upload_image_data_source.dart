import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/shared/upload_image/model/upload_image_response_model.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageDataSource {
  final ApiService _apiService;

  UploadImageDataSource(this._apiService);

  Future<UploadImageResponseModel> uploadImage({required XFile image}) async {
    var fromData = FormData.fromMap({
      'file': await MultipartFile.fromFile(image.path,
          filename: image.path.split('/').last),
    });
    var response = await _apiService.uploadImage(fromData);
    return response;
  }
}
