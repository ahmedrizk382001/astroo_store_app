// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRequestModel _$UpdateCategoryRequestModelFromJson(
        Map<String, dynamic> json) =>
    UpdateCategoryRequestModel(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$UpdateCategoryRequestModelToJson(
        UpdateCategoryRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
