part of 'get_admin_categories_bloc.dart';

@freezed
class GetAdminCategoriesState with _$GetAdminCategoriesState {
  const factory GetAdminCategoriesState.loading() = LoadingState;
  const factory GetAdminCategoriesState.empty() = EmptyState;
  const factory GetAdminCategoriesState.success(
      {required CategoriesModel categoriesModel}) = SuccessState;
  const factory GetAdminCategoriesState.error({required String error}) =
      ErrorState;
}
