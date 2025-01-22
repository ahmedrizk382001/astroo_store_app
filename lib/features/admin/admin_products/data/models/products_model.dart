import 'package:json_annotation/json_annotation.dart';
part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel {
  final ProductsDataModel data;

  ProductsModel({required this.data});

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);

  List<ProductItemModel> getCategoriesList() {
    if (data.products.isEmpty) {
      return [];
    } else {
      return data.products.reversed.toList();
    }
  }
}

@JsonSerializable()
class ProductsDataModel {
  final List<ProductItemModel> products;

  ProductsDataModel({required this.products});

  factory ProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsDataModelFromJson(json);
}

@JsonSerializable()
class ProductItemModel {
  final String title, id;
  final num price;
  final List<String> images;
  final ProductItemCategoryModel category;

  factory ProductItemModel.fromJson(Map<String, dynamic> json) =>
      _$ProductItemModelFromJson(json);

  ProductItemModel({
    required this.title,
    required this.id,
    required this.price,
    required this.images,
    required this.category,
  });
}

@JsonSerializable()
class ProductItemCategoryModel {
  final String id, name;

  ProductItemCategoryModel({required this.id, required this.name});

  factory ProductItemCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductItemCategoryModelFromJson(json);
}
