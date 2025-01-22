import 'dart:async';
import 'dart:convert';
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

  String? extractValidImage(String rawImage) {
    // Remove any backslashes (escaped characters)
    String sanitizedImage = rawImage.replaceAll(r'\', '');

    // Check if it's a JSON-encoded list
    if (sanitizedImage.startsWith('[') && sanitizedImage.endsWith(']')) {
      try {
        // Decode the JSON string and return the first valid image
        List<dynamic> decodedImages = List.from(jsonDecode(sanitizedImage));
        return decodedImages.isNotEmpty ? decodedImages[0] as String : null;
      } catch (e) {
        print('Failed to decode image list: $sanitizedImage');
        return null;
      }
    } else {
      // If it's a valid URL, return it
      return sanitizedImage;
    }
  }
}
