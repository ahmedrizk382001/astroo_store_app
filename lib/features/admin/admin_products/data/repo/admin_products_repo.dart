import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/data_source/admin_products_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_response_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/product_response_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/products_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_response_model.dart';

class AdminProductsRepo {
  final AdminProductsDataSource _adminProductsDataSource;

  AdminProductsRepo(this._adminProductsDataSource);

  Future<ApiResult<ProductsModel>> getAllProducts() async {
    try {
      var response = await _adminProductsDataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<AddProductResponseModel>> addProducts(
      {required AddProductRequestModel body}) async {
    try {
      var response = await _adminProductsDataSource.addProducts(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<ProductResponseModel>> getProductById(
      {required String id}) async {
    try {
      var response = await _adminProductsDataSource.getProductById(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<UpdateProductResponseModel>> updateProducts(
      {required UpdateProductRequestModel body}) async {
    try {
      var response = await _adminProductsDataSource.updateProducts(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<void>> deleteProducts({required String id}) async {
    try {
      var response = await _adminProductsDataSource.deleteProduct(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
