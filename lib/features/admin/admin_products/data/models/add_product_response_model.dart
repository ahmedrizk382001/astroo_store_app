import 'package:json_annotation/json_annotation.dart';
part 'add_product_response_model.g.dart';

@JsonSerializable()
class AddProductResponseModel {
  final AddProductsDataModel data;

  AddProductResponseModel({required this.data});

  factory AddProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AddProductResponseModelFromJson(json);
}

@JsonSerializable()
class AddProductsDataModel {
  final AddProductItemModel addProduct;

  AddProductsDataModel({required this.addProduct});

  factory AddProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddProductsDataModelFromJson(json);
}

@JsonSerializable()
class AddProductItemModel {
  final String title, id;
  final num price;
  final List<String> images;
  final AddProductItemCategoryModel category;

  factory AddProductItemModel.fromJson(Map<String, dynamic> json) =>
      _$AddProductItemModelFromJson(json);

  AddProductItemModel({
    required this.title,
    required this.id,
    required this.price,
    required this.images,
    required this.category,
  });
}

@JsonSerializable()
class AddProductItemCategoryModel {
  final String name, id;

  AddProductItemCategoryModel({required this.id, required this.name});

  factory AddProductItemCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AddProductItemCategoryModelFromJson(json);
}
