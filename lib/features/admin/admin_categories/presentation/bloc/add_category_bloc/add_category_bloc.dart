import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/repo/admin_categories_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_event.dart';
part 'add_category_state.dart';
part 'add_category_bloc.freezed.dart';

class AddCategoryBloc extends Bloc<AddCategoryEvent, AddCategoryState> {
  AddCategoryBloc(this._adminCategoriesRepo) : super(_Initial()) {
    on<AddNewCategoryEvent>(_addProduct);
  }

  final AdminCategoriesRepo _adminCategoriesRepo;

  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FutureOr<void> _addProduct(
    AddNewCategoryEvent event,
    Emitter<AddCategoryState> emit,
  ) async {
    emit(AddCategoryState.loading());
    var response = await _adminCategoriesRepo.addCategory(body: event.body);

    response.when(
      success: (data) {
        emit(AddCategoryState.success());
      },
      failure: (error) {
        emit(AddCategoryState.error(error: error));
      },
    );
  }
}
