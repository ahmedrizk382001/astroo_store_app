// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryResponse _$AddCategoryResponseFromJson(Map<String, dynamic> json) =>
    AddCategoryResponse(
      data: AddCategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCategoryResponseToJson(
        AddCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AddCategoryData _$AddCategoryDataFromJson(Map<String, dynamic> json) =>
    AddCategoryData(
      addCategory:
          AddCategoryItem.fromJson(json['addCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCategoryDataToJson(AddCategoryData instance) =>
    <String, dynamic>{
      'addCategory': instance.addCategory,
    };

AddCategoryItem _$AddCategoryItemFromJson(Map<String, dynamic> json) =>
    AddCategoryItem(
      name: json['name'] as String,
      id: json['id'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$AddCategoryItemToJson(AddCategoryItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
    };
