import 'package:json_annotation/json_annotation.dart';
part 'update_product_request_model.g.dart';

@JsonSerializable()
class UpdateProductRequestModel {
  final String title, description, id;
  final double price;
  final List<String> images;

  UpdateProductRequestModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.images});

  Map<String, dynamic> toJson() => _$UpdateProductRequestModelToJson(this);
}
