import 'package:json_annotation/json_annotation.dart';
part 'update_product_response_model.g.dart';

@JsonSerializable()
class UpdateProductResponseModel {
  final UpdateProductsDataModel data;

  UpdateProductResponseModel({required this.data});

  factory UpdateProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductResponseModelFromJson(json);
}

@JsonSerializable()
class UpdateProductsDataModel {
  final UpdateProductItemModel updateProduct;

  UpdateProductsDataModel({required this.updateProduct});

  factory UpdateProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductsDataModelFromJson(json);
}

@JsonSerializable()
class UpdateProductItemModel {
  final String title, id;
  final num price;
  final List<String> images;

  factory UpdateProductItemModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductItemModelFromJson(json);

  UpdateProductItemModel({
    required this.title,
    required this.id,
    required this.price,
    required this.images,
  });
}
