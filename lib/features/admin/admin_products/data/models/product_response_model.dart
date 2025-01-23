import 'package:astroo_store_app/features/admin/admin_products/data/models/products_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'product_response_model.g.dart';

@JsonSerializable()
class ProductResponseModel {
  final ProductDataModel data;

  ProductResponseModel({required this.data});

  factory ProductResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseModelFromJson(json);
}

@JsonSerializable()
class ProductDataModel {
  final ProductItemModel product;

  ProductDataModel({required this.product});

  factory ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDataModelFromJson(json);
}
