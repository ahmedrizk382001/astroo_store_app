// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUsersModel _$GetUsersModelFromJson(Map<String, dynamic> json) =>
    GetUsersModel(
      data: UsersDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUsersModelToJson(GetUsersModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UsersDataModel _$UsersDataModelFromJson(Map<String, dynamic> json) =>
    UsersDataModel(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersDataModelToJson(UsersDataModel instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    UserDataModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'role': instance.role,
      'id': instance.id,
    };
