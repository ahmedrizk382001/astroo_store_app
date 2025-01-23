import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_products/data/models/product_response_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_response_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/repo/admin_products_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_product_event.dart';
part 'update_product_state.dart';
part 'update_product_bloc.freezed.dart';

class UpdateProductBloc extends Bloc<UpdateProductEvent, UpdateProductState> {
  UpdateProductBloc(this._adminProductsRepo) : super(_Initial()) {
    on<EditProductEvent>(_updateProduct);
    on<GetProductByIdEvent>(_getProductById);
  }

  final AdminProductsRepo _adminProductsRepo;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  List<String> images = [];
  String? id;

  FutureOr<void> _getProductById(
    GetProductByIdEvent event,
    Emitter<UpdateProductState> emit,
  ) async {
    emit(UpdateProductState.getProductLoading());

    var response = await _adminProductsRepo.getProductById(id: event.id);

    response.when(
      success: (data) {
        nameController.text = data.data.product.title;
        descriptionController.text = data.data.product.description;
        priceController.text = data.data.product.price.toString();
        id = data.data.product.id;
        images.addAll(data.data.product.images);

        emit(UpdateProductState.getProductSuccess(body: data));
      },
      failure: (error) {
        emit(UpdateProductState.error(error: error));
      },
    );
  }

  FutureOr<void> _updateProduct(
    EditProductEvent event,
    Emitter<UpdateProductState> emit,
  ) async {
    emit(UpdateProductState.loading());

    var response = await _adminProductsRepo.updateProducts(body: event.body);

    response.when(
      success: (data) {
        emit(UpdateProductState.success());
      },
      failure: (error) {
        emit(UpdateProductState.error(error: error));
      },
    );
  }
}
