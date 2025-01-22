import 'package:json_annotation/json_annotation.dart';
part 'add_product_request_model.g.dart';

@JsonSerializable()
class AddProductRequestModel {
  final String title, description;
  final double price, categoryId;
  final List<String> images;

  AddProductRequestModel(
      {required this.title,
      required this.description,
      required this.price,
      required this.categoryId,
      required this.images});

  Map<String, dynamic> toJson() => _$AddProductRequestModelToJson(this);
}
