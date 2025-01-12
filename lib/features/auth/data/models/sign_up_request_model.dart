import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_model.g.dart';

@JsonSerializable()
class SignUpRequestModel {
  final String name, email, password, avatar;

  SignUpRequestModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.avatar});

  Map<String, dynamic> toJson() => _$SignUpRequestModelToJson(this);
}
