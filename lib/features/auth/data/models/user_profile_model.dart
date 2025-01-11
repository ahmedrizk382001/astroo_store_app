/* {
    "id": 228,
    "email": "ahmed12@gmail.com",
    "password": "123456789",
    "name": "Ahmed",
    "role": "admin",
    "avatar": "https://api.lorem.space/image/face?w=150&h=220",
    "creationAt": "2025-01-10T23:14:10.000Z",
    "updatedAt": "2025-01-10T23:14:10.000Z"
} */

import 'package:json_annotation/json_annotation.dart';
part 'user_profile_model.g.dart';

@JsonSerializable()
class UserProfileModel {
  final String? id, email, name, role, avatar;

  UserProfileModel({this.id, this.email, this.name, this.role, this.avatar});

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
