import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/graphQl/graphQl_queries/admin_queries/admin_categories_queries.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_response.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_response_model.dart';

class AdminCategoriesDataSource {
  final ApiService _apiService;

  AdminCategoriesDataSource(this._apiService);

  Future<CategoriesModel> getAllCategories() async {
    var result = await _apiService
        .getAllCategories(AdminCategoriesQueries.getAllCategoriesQuery());
    return result;
  }

  Future<AddCategoryResponse> addCategory(
      {required AddCategoryRequsetModel body}) async {
    var result = await _apiService
        .addCategory(AdminCategoriesQueries.addCategory(body: body));
    return result;
  }

  Future<UpdateCategoryResponse> updateCategory(
      {required UpdateCategoryRequestModel body}) async {
    var result = await _apiService
        .updateCategory(AdminCategoriesQueries.updateCategory(body: body));
    return result;
  }

  Future<void> deleteCategory({required String id}) async {
    await _apiService
        .deleteCategory(AdminCategoriesQueries.deleteCategory(id: id));
  }
}
