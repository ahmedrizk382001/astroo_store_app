import 'dart:async';
import 'package:astroo_store_app/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_number_event.dart';
part 'products_number_state.dart';
part 'products_number_bloc.freezed.dart';

class ProductsNumberBloc
    extends Bloc<ProductsNumberEvent, ProductsNumberState> {
  ProductsNumberBloc(this._dashboardRepo) : super(LoadingState()) {
    on<ProductsNumberEvent>(_getProductsNumber);
  }

  final DashboardRepo _dashboardRepo;

  FutureOr<void> _getProductsNumber(
      ProductsNumberEvent event, Emitter<ProductsNumberState> emit) async {
    emit(ProductsNumberState.loading());

    var response = await _dashboardRepo.getProductsNumber();

    response.when(
      success: (prdouctsNumberModel) {
        emit(ProductsNumberState.success(
            productsNum: prdouctsNumberModel.productsNumber));
      },
      failure: (error) {
        emit(ProductsNumberState.error(error: error));
      },
    );
  }
}
