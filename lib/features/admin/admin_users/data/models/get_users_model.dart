import 'package:json_annotation/json_annotation.dart';
part 'get_users_model.g.dart';

@JsonSerializable()
class GetUsersModel {
  final UsersDataModel data;

  GetUsersModel({required this.data});

  factory GetUsersModel.fromJson(Map<String, dynamic> json) =>
      _$GetUsersModelFromJson(json);

  List<UserDataModel> getUsersList() {
    if (data.users.isEmpty) {
      return [];
    } else {
      return data.users;
    }
  }
}

@JsonSerializable()
class UsersDataModel {
  final List<UserDataModel> users;

  UsersDataModel({required this.users});

  factory UsersDataModel.fromJson(Map<String, dynamic> json) =>
      _$UsersDataModelFromJson(json);
}

@JsonSerializable()
class UserDataModel {
  final String name, email, avatar, role, id;

  UserDataModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.avatar,
      required this.role});

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
