// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_number_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersNumberModel _$UsersNumberModelFromJson(Map<String, dynamic> json) =>
    UsersNumberModel(
      data: UsersNumberData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersNumberModelToJson(UsersNumberModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

UsersNumberData _$UsersNumberDataFromJson(Map<String, dynamic> json) =>
    UsersNumberData(
      users: (json['users'] as List<dynamic>)
          .map((e) => UsersTitles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UsersNumberDataToJson(UsersNumberData instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

UsersTitles _$UsersTitlesFromJson(Map<String, dynamic> json) => UsersTitles(
      name: json['name'] as String,
    );

Map<String, dynamic> _$UsersTitlesToJson(UsersTitles instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
