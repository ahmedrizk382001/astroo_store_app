import 'package:json_annotation/json_annotation.dart';
part 'products_number_model.g.dart';

@JsonSerializable()
class ProductsNumberModel {
  final ProductsNumberData data;

  ProductsNumberModel({required this.data});

  factory ProductsNumberModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberModelFromJson(json);

  String get productsNumber {
    if (data.products.isEmpty) {
      return '0';
    }
    return data.products.length.toString();
  }
}

@JsonSerializable()
class ProductsNumberData {
  final List<ProductsTitles> products;

  ProductsNumberData({required this.products});

  factory ProductsNumberData.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberDataFromJson(json);
}

@JsonSerializable()
class ProductsTitles {
  final String title;

  ProductsTitles({required this.title});

  factory ProductsTitles.fromJson(Map<String, dynamic> json) =>
      _$ProductsTitlesFromJson(json);
}
