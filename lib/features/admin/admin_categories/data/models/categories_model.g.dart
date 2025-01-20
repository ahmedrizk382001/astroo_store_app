// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) =>
    CategoriesModel(
      data: CategoriesDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesModelToJson(CategoriesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

CategoriesDataModel _$CategoriesDataModelFromJson(Map<String, dynamic> json) =>
    CategoriesDataModel(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesDataModelToJson(
        CategoriesDataModel instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

CategoryItemModel _$CategoryItemModelFromJson(Map<String, dynamic> json) =>
    CategoryItemModel(
      name: json['name'] as String,
      id: json['id'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$CategoryItemModelToJson(CategoryItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
    };
