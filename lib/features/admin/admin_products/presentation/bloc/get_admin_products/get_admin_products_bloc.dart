import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_products/data/models/products_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/repo/admin_products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_admin_products_event.dart';
part 'get_admin_products_state.dart';
part 'get_admin_products_bloc.freezed.dart';

class GetAdminProductsBloc
    extends Bloc<GetAdminProductsEvent, GetAdminProductsState> {
  GetAdminProductsBloc(this._adminProductsRepo) : super(LoadingState()) {
    on<GetAllProductsEvent>(_getAllProducts);
  }

  final AdminProductsRepo _adminProductsRepo;

  FutureOr<void> _getAllProducts(
    GetAllProductsEvent event,
    Emitter<GetAdminProductsState> emit,
  ) async {
    if (event.isLoading) {
      emit(GetAdminProductsState.loading());
    }
    var response = await _adminProductsRepo.getAllProducts();

    response.when(
      success: (data) {
        if (data.getCategoriesList().isEmpty) {
          emit(GetAdminProductsState.empty());
        } else {
          emit(GetAdminProductsState.success(body: data));
        }
      },
      failure: (error) {
        emit(GetAdminProductsState.error(error: error));
      },
    );
  }
}
