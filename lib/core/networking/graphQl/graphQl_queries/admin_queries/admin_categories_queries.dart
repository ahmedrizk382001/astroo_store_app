import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_request_model.dart';

class AdminCategoriesQueries {
  AdminCategoriesQueries._();

  static AdminCategoriesQueries instance = AdminCategoriesQueries._();

  static Map<String, dynamic> getAllCategoriesQuery() {
    const String query = '''
        {
          categories{
            name
            id
            image
          }
        }
    ''';
    return {
      'query': query,
    };
  }

  static Map<String, dynamic> addCategory(
      {required AddCategoryResponseModel body}) {
    const String mutation = r'''
        mutation AddCategory($name: String!, $image: String!){
            addCategory(
                data: { name: $name, image: $image }
            ) {
                id
                name
                image
              }
        }
    ''';
    Map<String, dynamic> variables = {
      'name': body.name,
      'image': body.image,
    };
    return {
      'query': mutation,
      'variables': variables,
    };
  }
}
