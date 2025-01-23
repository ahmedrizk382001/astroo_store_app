import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/graphQl/graphQl_queries/admin_queries/admin_products_queries.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_response_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/product_response_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/products_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_response_model.dart';

class AdminProductsDataSource {
  final ApiService _apiService;

  AdminProductsDataSource(this._apiService);

  Future<ProductsModel> getAllProducts() async {
    var response = await _apiService
        .getAllProducts(AdminProductsQueries.getAllProductsQuery());
    return response;
  }

  Future<AddProductResponseModel> addProducts(
      {required AddProductRequestModel body}) async {
    var response = await _apiService
        .addProduct(AdminProductsQueries.addProductQuery(body: body));
    return response;
  }

  Future<ProductResponseModel> getProductById({required String id}) async {
    var response = await _apiService
        .getProductById(AdminProductsQueries.getProductByIdQuery(id: id));
    return response;
  }

  Future<UpdateProductResponseModel> updateProducts(
      {required UpdateProductRequestModel body}) async {
    var response = await _apiService
        .updateProduct(AdminProductsQueries.updateProductQuery(body: body));
    return response;
  }

  Future<void> deleteProduct({required String id}) async {
    var response = await _apiService
        .deleteProduct(AdminProductsQueries.deleteProduct(id: id));
    return response;
  }
}
