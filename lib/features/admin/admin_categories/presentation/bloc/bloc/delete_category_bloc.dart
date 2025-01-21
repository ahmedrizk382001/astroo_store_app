import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_categories/data/repo/admin_categories_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_category_event.dart';
part 'delete_category_state.dart';
part 'delete_category_bloc.freezed.dart';

class DeleteCategoryBloc
    extends Bloc<DeleteCategoryEvent, DeleteCategoryState> {
  DeleteCategoryBloc(this._adminCategoriesRepo) : super(_Initial()) {
    on<RemoveCategoryEvent>(_deleteCategory);
  }

  final AdminCategoriesRepo _adminCategoriesRepo;

  FutureOr<void> _deleteCategory(
      RemoveCategoryEvent event, Emitter<DeleteCategoryState> emit) async {
    emit(DeleteCategoryState.loading());

    var response = await _adminCategoriesRepo.deleteCategory(id: event.id);

    response.when(
      success: (_) {
        emit(DeleteCategoryState.success());
      },
      failure: (error) {
        emit(DeleteCategoryState.error(error: error));
      },
    );
  }
}
