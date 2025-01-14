import 'dart:async';
import 'package:astroo_store_app/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_number_event.dart';
part 'categories_number_state.dart';
part 'categories_number_bloc.freezed.dart';

class CategoriesNumberBloc
    extends Bloc<CategoriesNumberEvent, CategoriesNumberState> {
  CategoriesNumberBloc(this._dashboardRepo) : super(LoadingState()) {
    on<CategoriesNumberEvent>(_getCategoriesNumber);
  }

  final DashboardRepo _dashboardRepo;

  FutureOr<void> _getCategoriesNumber(
      CategoriesNumberEvent event, Emitter<CategoriesNumberState> emit) async {
    emit(CategoriesNumberState.loading());

    var response = await _dashboardRepo.getCategoriesNumber();

    response.when(
      success: (categoriesNumberModel) {
        emit(CategoriesNumberState.success(
            categoriessNum: categoriesNumberModel.categoriesNumber));
      },
      failure: (error) {
        emit(CategoriesNumberState.error(error: error));
      },
    );
  }
}
