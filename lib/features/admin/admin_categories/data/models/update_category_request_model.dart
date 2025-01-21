import 'package:json_annotation/json_annotation.dart';
part 'update_category_request_model.g.dart';

@JsonSerializable()
class UpdateCategoryRequestModel {
  final String id, name, image;

  Map<String, dynamic> toJson() => _$UpdateCategoryRequestModelToJson(this);

  UpdateCategoryRequestModel(
      {required this.id, required this.name, required this.image});
}
