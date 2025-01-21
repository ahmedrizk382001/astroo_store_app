// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadImageResponseModel _$UploadImageResponseModelFromJson(
        Map<String, dynamic> json) =>
    UploadImageResponseModel(
      originalName: json['originalname'] as String?,
      fileName: json['filename'] as String?,
      imageUrl: json['location'] as String?,
    );

Map<String, dynamic> _$UploadImageResponseModelToJson(
        UploadImageResponseModel instance) =>
    <String, dynamic>{
      'originalname': instance.originalName,
      'filename': instance.fileName,
      'location': instance.imageUrl,
    };
