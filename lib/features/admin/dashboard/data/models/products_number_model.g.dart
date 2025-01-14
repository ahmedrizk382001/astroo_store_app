// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsNumberModel _$ProductsNumberModelFromJson(Map<String, dynamic> json) =>
    ProductsNumberModel(
      data: ProductsNumberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsNumberModelToJson(
        ProductsNumberModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductsNumberData _$ProductsNumberDataFromJson(Map<String, dynamic> json) =>
    ProductsNumberData(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductsTitles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsNumberDataToJson(ProductsNumberData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

ProductsTitles _$ProductsTitlesFromJson(Map<String, dynamic> json) =>
    ProductsTitles(
      title: json['title'] as String,
    );

Map<String, dynamic> _$ProductsTitlesToJson(ProductsTitles instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
