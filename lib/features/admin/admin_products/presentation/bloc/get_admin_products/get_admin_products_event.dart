part of 'get_admin_products_bloc.dart';

@freezed
class GetAdminProductsEvent with _$GetAdminProductsEvent {
  const factory GetAdminProductsEvent.started() = _Started;
  const factory GetAdminProductsEvent.getAdminProducts(
      {required bool isLoading}) = GetAllProductsEvent;
}
