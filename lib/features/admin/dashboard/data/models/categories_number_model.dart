import 'package:json_annotation/json_annotation.dart';
part 'categories_number_model.g.dart';

@JsonSerializable()
class CategoriesNumberModel {
  final CategoriesNumberData data;

  CategoriesNumberModel({required this.data});

  factory CategoriesNumberModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberModelFromJson(json);

  String get categoriesNumber {
    if (data.categories.isEmpty) {
      return '0';
    }
    return data.categories.length.toString();
  }
}

@JsonSerializable()
class CategoriesNumberData {
  final List<CategoriesTitles> categories;

  CategoriesNumberData({required this.categories});

  factory CategoriesNumberData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberDataFromJson(json);
}

@JsonSerializable()
class CategoriesTitles {
  final String name;

  CategoriesTitles({required this.name});

  factory CategoriesTitles.fromJson(Map<String, dynamic> json) =>
      _$CategoriesTitlesFromJson(json);
}
