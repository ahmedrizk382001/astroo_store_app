import 'package:json_annotation/json_annotation.dart';
part 'categories_model.g.dart';

@JsonSerializable()
class CategoriesModel {
  final CategoriesDataModel data;

  CategoriesModel({required this.data});

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);

  List<CategoryItemModel> getCategoriesList() {
    if (data.categories.isEmpty) {
      return [];
    } else {
      return data.categories.reversed.toList();
    }
  }

  List<String> getCategoriesNames() {
    if (data.categories.isEmpty) {
      return [];
    } else {
      return data.categories
          .map(
            (e) => e.name,
          )
          .toList();
    }
  }
}

@JsonSerializable()
class CategoriesDataModel {
  final List<CategoryItemModel> categories;

  CategoriesDataModel({required this.categories});

  factory CategoriesDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataModelFromJson(json);
}

@JsonSerializable()
class CategoryItemModel {
  final String name, id, image;

  CategoryItemModel(
      {required this.name, required this.id, required this.image});

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);
}
