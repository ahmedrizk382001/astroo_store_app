part of 'add_category_bloc.dart';

@freezed
class AddCategoryEvent with _$AddCategoryEvent {
  const factory AddCategoryEvent.started() = _Started;
  const factory AddCategoryEvent.addNewCategory(
      {required AddCategoryRequsetModel body}) = AddNewCategoryEvent;
}
