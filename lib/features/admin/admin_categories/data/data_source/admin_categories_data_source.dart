import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/graphQl/graphQl_queries/admin_queries/admin_categories_queries.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';

class AdminCategoriesDataSource {
  final ApiService _apiService;

  AdminCategoriesDataSource(this._apiService);

  Future<CategoriesModel> getAllCategories() async {
    var result = await _apiService
        .getAllCategories(AdminCategoriesQueries.getAllCategoriesQuery());
    return result;
  }
}
