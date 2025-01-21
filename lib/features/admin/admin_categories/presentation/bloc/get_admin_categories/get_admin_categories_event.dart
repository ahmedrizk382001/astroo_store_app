part of 'get_admin_categories_bloc.dart';

@freezed
class GetAdminCategoriesEvent with _$GetAdminCategoriesEvent {
  const factory GetAdminCategoriesEvent.started() = _Started;
  const factory GetAdminCategoriesEvent.fetchAdminCategories(
      {required bool isLoading}) = fetchAdminCategoriesEvent;
}
