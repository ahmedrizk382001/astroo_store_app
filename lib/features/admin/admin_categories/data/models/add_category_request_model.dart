import 'package:json_annotation/json_annotation.dart';
part 'add_category_request_model.g.dart';

@JsonSerializable()
class AddCategoryResponseModel {
  final String? name, image;

  Map<String, dynamic> toJson() => _$AddCategoryResponseModelToJson(this);

  AddCategoryResponseModel({required this.name, required this.image});
}
