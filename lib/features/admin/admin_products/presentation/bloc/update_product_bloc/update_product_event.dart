part of 'update_product_bloc.dart';

@freezed
class UpdateProductEvent with _$UpdateProductEvent {
  const factory UpdateProductEvent.started() = _Started;
  const factory UpdateProductEvent.updateProduct(
      {required UpdateProductRequestModel body}) = EditProductEvent;
  const factory UpdateProductEvent.getProductById({required String id}) =
      GetProductByIdEvent;
}
