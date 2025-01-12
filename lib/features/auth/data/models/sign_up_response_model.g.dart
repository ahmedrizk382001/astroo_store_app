// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) =>
    SignUpResponseModel(
      data: SignUpDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponseModelToJson(
        SignUpResponseModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SignUpDataModel _$SignUpDataModelFromJson(Map<String, dynamic> json) =>
    SignUpDataModel(
      addUser:
          SignUpAddUserModel.fromJson(json['addUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpDataModelToJson(SignUpDataModel instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
    };

SignUpAddUserModel _$SignUpAddUserModelFromJson(Map<String, dynamic> json) =>
    SignUpAddUserModel(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$SignUpAddUserModelToJson(SignUpAddUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };
