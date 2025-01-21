import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/data_source/admin_categories_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_response.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_response_model.dart';

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

  Future<ApiResult<AddCategoryResponse>> addCategory(
      {required AddCategoryRequsetModel body}) async {
    try {
      var result = await _adminCategoriesDataSource.addCategory(body: body);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<UpdateCategoryResponse>> updateCategory(
      {required UpdateCategoryRequestModel body}) async {
    try {
      var result = await _adminCategoriesDataSource.updateCategory(body: body);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<void>> deleteCategory({required String id}) async {
    try {
      var result = await _adminCategoriesDataSource.deleteCategory(id: id);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
