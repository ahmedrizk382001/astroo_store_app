import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/repo/admin_categories_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_category_event.dart';
part 'update_category_state.dart';
part 'update_category_bloc.freezed.dart';

class UpdateCategoryBloc
    extends Bloc<UpdateCategoryEvent, UpdateCategoryState> {
  UpdateCategoryBloc(this._adminCategoriesRepo) : super(_Initial()) {
    on<EditCategoryEvent>(_updateCategory);
  }

  final AdminCategoriesRepo _adminCategoriesRepo;

  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FutureOr<void> _updateCategory(
    EditCategoryEvent event,
    Emitter<UpdateCategoryState> emit,
  ) async {
    emit(UpdateCategoryState.loading());
    var response = await _adminCategoriesRepo.updateCategory(body: event.body);
    response.when(
      success: (data) {
        emit(UpdateCategoryState.success());
      },
      failure: (error) {
        emit(UpdateCategoryState.error(error: error));
      },
    );
  }
}
