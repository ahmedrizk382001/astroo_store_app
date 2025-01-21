import 'package:json_annotation/json_annotation.dart';

part 'update_category_response_model.g.dart';

@JsonSerializable()
class UpdateCategoryResponse {
  final UpdateCategoryData data;

  UpdateCategoryResponse({required this.data});

  factory UpdateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryResponseFromJson(json);
}

@JsonSerializable()
class UpdateCategoryData {
  final UpdateCategoryItem updateCategory;

  UpdateCategoryData({required this.updateCategory});

  factory UpdateCategoryData.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryDataFromJson(json);
}

@JsonSerializable()
class UpdateCategoryItem {
  final String name, id, image;

  UpdateCategoryItem(
      {required this.name, required this.id, required this.image});

  factory UpdateCategoryItem.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryItemFromJson(json);
}
