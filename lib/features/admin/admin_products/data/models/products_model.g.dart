// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    ProductsModel(
      data: ProductsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

ProductsDataModel _$ProductsDataModelFromJson(Map<String, dynamic> json) =>
    ProductsDataModel(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsDataModelToJson(ProductsDataModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

ProductItemModel _$ProductItemModelFromJson(Map<String, dynamic> json) =>
    ProductItemModel(
      title: json['title'] as String,
      id: json['id'] as String,
      price: json['price'] as num,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      category: ProductItemCategoryModel.fromJson(
          json['category'] as Map<String, dynamic>),
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProductItemModelToJson(ProductItemModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'description': instance.description,
      'price': instance.price,
      'images': instance.images,
      'category': instance.category,
    };

ProductItemCategoryModel _$ProductItemCategoryModelFromJson(
        Map<String, dynamic> json) =>
    ProductItemCategoryModel(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProductItemCategoryModelToJson(
        ProductItemCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
