import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_products/data/repo/admin_products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product_event.dart';
part 'delete_product_state.dart';
part 'delete_product_bloc.freezed.dart';

class DeleteProductBloc extends Bloc<DeleteProductEvent, DeleteProductState> {
  DeleteProductBloc(this._adminProductsRepo) : super(_Initial()) {
    on<RemoveProductEvent>(_deleteProduct);
  }

  final AdminProductsRepo _adminProductsRepo;

  FutureOr<void> _deleteProduct(
    RemoveProductEvent event,
    Emitter<DeleteProductState> emit,
  ) async {
    emit(DeleteProductState.loading(id: event.id));
    var response = await _adminProductsRepo.deleteProducts(id: event.id);

    response.when(
      success: (data) {
        emit(DeleteProductState.success());
      },
      failure: (error) {
        emit(DeleteProductState.error(error: error));
      },
    );
  }
}
