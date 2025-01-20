import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/data_source/admin_categories_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';

class AdminCategoriesRepo {
  final AdminCategoriesDataSource _adminCategoriesDataSource;

  AdminCategoriesRepo(this._adminCategoriesDataSource);

  Future<ApiResult<CategoriesModel>> getAllCategories() async {
    try {
      var result = await _adminCategoriesDataSource.getAllCategories();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
