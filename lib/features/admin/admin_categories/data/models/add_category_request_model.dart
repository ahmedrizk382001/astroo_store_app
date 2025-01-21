import 'package:json_annotation/json_annotation.dart';
part 'add_category_request_model.g.dart';

@JsonSerializable()
class AddCategoryRequsetModel {
  final String? name, image;

  Map<String, dynamic> toJson() => _$AddCategoryRequsetModelToJson(this);

  AddCategoryRequsetModel({required this.name, required this.image});
}
