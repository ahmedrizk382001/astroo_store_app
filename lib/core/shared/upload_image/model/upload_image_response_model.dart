import 'package:json_annotation/json_annotation.dart';
part 'upload_image_response_model.g.dart';

@JsonSerializable()
class UploadImageResponseModel {
  @JsonKey(name: "originalname")
  final String? originalName;
  @JsonKey(name: "filename")
  final String? fileName;
  @JsonKey(name: "location")
  final String? imageUrl;

  factory UploadImageResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UploadImageResponseModelFromJson(json);

  UploadImageResponseModel(
      {required this.originalName,
      required this.fileName,
      required this.imageUrl});
}
