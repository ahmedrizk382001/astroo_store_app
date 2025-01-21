// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryResponse _$UpdateCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryResponse(
      data: UpdateCategoryData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCategoryResponseToJson(
        UpdateCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UpdateCategoryData _$UpdateCategoryDataFromJson(Map<String, dynamic> json) =>
    UpdateCategoryData(
      updateCategory: UpdateCategoryItem.fromJson(
          json['updateCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateCategoryDataToJson(UpdateCategoryData instance) =>
    <String, dynamic>{
      'updateCategory': instance.updateCategory,
    };

UpdateCategoryItem _$UpdateCategoryItemFromJson(Map<String, dynamic> json) =>
    UpdateCategoryItem(
      name: json['name'] as String,
      id: json['id'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$UpdateCategoryItemToJson(UpdateCategoryItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
    };
