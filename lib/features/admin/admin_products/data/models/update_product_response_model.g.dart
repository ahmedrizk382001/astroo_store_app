// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductResponseModel _$UpdateProductResponseModelFromJson(
        Map<String, dynamic> json) =>
    UpdateProductResponseModel(
      data: UpdateProductsDataModel.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProductResponseModelToJson(
        UpdateProductResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UpdateProductsDataModel _$UpdateProductsDataModelFromJson(
        Map<String, dynamic> json) =>
    UpdateProductsDataModel(
      updateProduct: UpdateProductItemModel.fromJson(
          json['updateProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateProductsDataModelToJson(
        UpdateProductsDataModel instance) =>
    <String, dynamic>{
      'updateProduct': instance.updateProduct,
    };

UpdateProductItemModel _$UpdateProductItemModelFromJson(
        Map<String, dynamic> json) =>
    UpdateProductItemModel(
      title: json['title'] as String,
      id: json['id'] as String,
      price: json['price'] as num,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UpdateProductItemModelToJson(
        UpdateProductItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'price': instance.price,
      'images': instance.images,
    };
