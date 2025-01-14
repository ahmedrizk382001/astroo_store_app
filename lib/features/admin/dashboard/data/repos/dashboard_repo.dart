import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/categories_number_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/products_number_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/users_number_model.dart';

class DashboardRepo {
  final DashboardDataSource _dashboardDataSource;

  DashboardRepo(this._dashboardDataSource);

  Future<ApiResult<ProductsNumberModel>> getProductsNumber() async {
    try {
      var result = await _dashboardDataSource.getProductsNumber();

      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<CategoriesNumberModel>> getCategoriesNumber() async {
    try {
      var result = await _dashboardDataSource.getCategoriesNumber();

      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<UsersNumberModel>> getUsersNumber() async {
    try {
      var result = await _dashboardDataSource.getUsersNumber();

      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
