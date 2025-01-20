// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryResponseModel _$AddCategoryResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddCategoryResponseModel(
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$AddCategoryResponseModelToJson(
        AddCategoryResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
    };
