import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel {
  final SignUpDataModel data;

  SignUpResponseModel({required this.data});

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
}

@JsonSerializable()
class SignUpDataModel {
  final SignUpAddUserModel addUser;

  SignUpDataModel({required this.addUser});

  factory SignUpDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataModelFromJson(json);
}

@JsonSerializable()
class SignUpAddUserModel {
  final String id, name, avatar;

  SignUpAddUserModel(
      {required this.id, required this.name, required this.avatar});

  factory SignUpAddUserModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpAddUserModelFromJson(json);
}
