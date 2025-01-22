part of 'get_admin_products_bloc.dart';

@freezed
class GetAdminProductsState with _$GetAdminProductsState {
  const factory GetAdminProductsState.loading() = LoadingState;
  const factory GetAdminProductsState.empty() = EmptyState;
  const factory GetAdminProductsState.success({required ProductsModel body}) =
      SuccessState;
  const factory GetAdminProductsState.error({required String error}) =
      ErrorState;
}
