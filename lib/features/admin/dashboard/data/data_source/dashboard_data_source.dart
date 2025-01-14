import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/graphQl/graphQl_queries/admin_queries/dashboard_queries.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/categories_number_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/products_number_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/users_number_model.dart';

class DashboardDataSource {
  final ApiService _apiService;

  DashboardDataSource(this._apiService);

  Future<ProductsNumberModel> getProductsNumber() async {
    var result = await _apiService
        .getProductsNumber(DashboardQueries.productsNumberQuery());
    return result;
  }

  Future<CategoriesNumberModel> getCategoriesNumber() async {
    var result = await _apiService
        .getCategoriesNumber(DashboardQueries.categoriesNumberQuery());
    return result;
  }

  Future<UsersNumberModel> getUsersNumber() async {
    var result =
        await _apiService.getUsersNumber(DashboardQueries.usersNumberQuery());
    return result;
  }
}
