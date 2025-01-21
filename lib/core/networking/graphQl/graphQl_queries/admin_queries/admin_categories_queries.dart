import 'package:astroo_store_app/features/admin/admin_categories/data/models/add_category_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/update_category_request_model.dart';

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
      {required AddCategoryRequsetModel body}) {
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

  static Map<String, dynamic> updateCategory(
      {required UpdateCategoryRequestModel body}) {
    const String mutation = r'''
            mutation UpdateCategory($id: ID!, $name: String!, $image: String!){
                updateCategory(id: $id, changes:
                { name: $name , image: $image}
                ) {
                      id
                      name
                      image
                  }
                }
    ''';
    Map<String, dynamic> variables = {
      'id': body.id,
      'name': body.name,
      'image': body.image,
    };
    return {
      'query': mutation,
      'variables': variables,
    };
  }

  static Map<String, dynamic> deleteCategory({required String id}) {
    const String mutation = r'''
        mutation DeleteCategory($id: ID!){
            deleteCategory(id: $id)
        }
    ''';
    Map<String, dynamic> variables = {
      'id': id,
    };
    return {
      'query': mutation,
      'variables': variables,
    };
  }
}
