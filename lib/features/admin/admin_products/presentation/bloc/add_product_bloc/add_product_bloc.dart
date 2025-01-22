import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/repo/admin_products_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';
part 'add_product_bloc.freezed.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  AddProductBloc(this._adminProductsRepo) : super(_Initial()) {
    on<AddNewProductEvent>(_addProduct);
  }

  final AdminProductsRepo _adminProductsRepo;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  FutureOr<void> _addProduct(
    AddNewProductEvent event,
    Emitter<AddProductState> emit,
  ) async {
    emit(AddProductState.loading());
    var response = await _adminProductsRepo.addProducts(body: event.body);
    response.when(
      success: (body) {
        debugPrint(
            "title: ${body.data.addProduct.title} || price: ${body.data.addProduct.price} || category title: ${body.data.addProduct.category.name}");
        emit(AddProductState.success());
      },
      failure: (error) {
        emit(AddProductState.error(error: error));
      },
    );
  }
}
