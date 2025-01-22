// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductResponseModel _$AddProductResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddProductResponseModel(
      data: AddProductsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddProductResponseModelToJson(
        AddProductResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AddProductsDataModel _$AddProductsDataModelFromJson(
        Map<String, dynamic> json) =>
    AddProductsDataModel(
      addProduct: AddProductItemModel.fromJson(
          json['addProduct'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddProductsDataModelToJson(
        AddProductsDataModel instance) =>
    <String, dynamic>{
      'addProduct': instance.addProduct,
    };

AddProductItemModel _$AddProductItemModelFromJson(Map<String, dynamic> json) =>
    AddProductItemModel(
      title: json['title'] as String,
      id: json['id'] as String,
      price: json['price'] as num,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      category: AddProductItemCategoryModel.fromJson(
          json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddProductItemModelToJson(
        AddProductItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'price': instance.price,
      'images': instance.images,
      'category': instance.category,
    };

AddProductItemCategoryModel _$AddProductItemCategoryModelFromJson(
        Map<String, dynamic> json) =>
    AddProductItemCategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AddProductItemCategoryModelToJson(
        AddProductItemCategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
