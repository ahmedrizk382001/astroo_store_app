import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/repo/admin_categories_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_admin_categories_event.dart';
part 'get_admin_categories_state.dart';
part 'get_admin_categories_bloc.freezed.dart';

class GetAdminCategoriesBloc
    extends Bloc<GetAdminCategoriesEvent, GetAdminCategoriesState> {
  GetAdminCategoriesBloc(this._adminCategoriesRepo) : super(LoadingState()) {
    on<fetchAdminCategoriesEvent>(_fetchAdminCategories);
  }

  final AdminCategoriesRepo _adminCategoriesRepo;

  FutureOr<void> _fetchAdminCategories(
    fetchAdminCategoriesEvent event,
    Emitter<GetAdminCategoriesState> emit,
  ) async {
    if (event.isLoading) {
      emit(GetAdminCategoriesState.loading());
    }
    var results = await _adminCategoriesRepo.getAllCategories();

    results.when(
      success: (data) {
        if (data.getCategoriesList().isEmpty) {
          emit(GetAdminCategoriesState.empty());
        } else {
          debugPrint("${data.getCategoriesList().length}");
          emit(GetAdminCategoriesState.success(categoriesModel: data));
        }
      },
      failure: (error) {
        emit(GetAdminCategoriesState.error(error: error));
      },
    );
  }
}
