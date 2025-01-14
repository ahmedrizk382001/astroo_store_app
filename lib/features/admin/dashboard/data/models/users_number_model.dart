import 'package:json_annotation/json_annotation.dart';
part 'users_number_model.g.dart';

@JsonSerializable()
class UsersNumberModel {
  final UsersNumberData data;

  UsersNumberModel({required this.data});

  factory UsersNumberModel.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberModelFromJson(json);

  String get usersNumber {
    if (data.users.isEmpty) {
      return '0';
    }
    return data.users.length.toString();
  }
}

@JsonSerializable()
class UsersNumberData {
  final List<UsersTitles> users;

  UsersNumberData({required this.users});

  factory UsersNumberData.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberDataFromJson(json);
}

@JsonSerializable()
class UsersTitles {
  final String name;

  UsersTitles({required this.name});

  factory UsersTitles.fromJson(Map<String, dynamic> json) =>
      _$UsersTitlesFromJson(json);
}
