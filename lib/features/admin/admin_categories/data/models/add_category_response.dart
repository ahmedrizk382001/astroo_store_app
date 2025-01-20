import 'package:json_annotation/json_annotation.dart';

part 'add_category_response.g.dart';

@JsonSerializable()
class AddCategoryResponse {
  final AddCategoryData data;

  AddCategoryResponse({required this.data});

  factory AddCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryResponseFromJson(json);
}

@JsonSerializable()
class AddCategoryData {
  final AddCategoryItem addCategory;

  AddCategoryData({required this.addCategory});

  factory AddCategoryData.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryDataFromJson(json);
}

@JsonSerializable()
class AddCategoryItem {
  final String name, id, image;

  AddCategoryItem({required this.name, required this.id, required this.image});

  factory AddCategoryItem.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryItemFromJson(json);
}
