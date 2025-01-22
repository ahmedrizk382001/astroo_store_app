// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductRequestModel _$AddProductRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddProductRequestModel(
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      categoryId: (json['categoryId'] as num).toDouble(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AddProductRequestModelToJson(
        AddProductRequestModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'images': instance.images,
    };
