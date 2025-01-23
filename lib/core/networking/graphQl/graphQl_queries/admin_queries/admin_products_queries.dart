import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_request_model.dart';
import 'package:astroo_store_app/features/admin/admin_products/data/models/update_product_request_model.dart';

class AdminProductsQueries {
  AdminProductsQueries._();

  static AdminProductsQueries instance = AdminProductsQueries._();

  static Map<String, dynamic> getAllProductsQuery() {
    final String query = '''
            {
              products{
                  id
                  title
                  price
                  images
                  description
                  category {
                    id
                    name
                    image
                  }
              }
            }
    ''';

    return {
      'query': query,
    };
  }

  static Map<String, dynamic> addProductQuery({
    required AddProductRequestModel body,
  }) {
    const String mutation = r'''
        mutation AddProduct($title: String!, $price: Float!, $description: String!, $categoryId: Float!, $images: [String!]!) {
            addProduct(
              data: {
                title: $title,
                price: $price,
                description: $description,
                categoryId: $categoryId,
                images: $images
              }
            ) {
              title
              price
              images
              id
              category {
                id
                name
                image
              }
            }
          }
      ''';

    Map<String, dynamic> variables = {
      'title': body.title,
      'price': body.price,
      'description': body.description,
      'categoryId': body.categoryId,
      'images': body.images, // Fixed the key to match $imagesList
    };

    return {
      'query': mutation,
      'variables': variables,
    };
  }

  static Map<String, dynamic> getProductByIdQuery({required String id}) {
    final String query = r'''
    query getProductById($id: ID!) {
      product(id: $id) {
        id
        title
        price
        images
        description
        category {
          id
          name
          image
        }
      }
    }
  ''';

    return {
      'query': query,
      'variables': {
        'id': id,
      }
    };
  }

  static Map<String, dynamic> updateProductQuery({
    required UpdateProductRequestModel body,
  }) {
    const String mutation = r'''
    mutation UpdateProduct(
      $id: ID!,
      $title: String!,
      $price: Float!,
      $description: String!,
      $images: [String!]!
    ) {
      updateProduct(
        id: $id,
        changes: {
          title: $title,
          price: $price,
          description: $description,
          images: $images
        }
      ) {
        id
        title
        price
        images
      }
    }
  ''';

    Map<String, dynamic> variables = {
      'id': body.id,
      'title': body.title,
      'price': body.price,
      'description': body.description,
      'images': body.images,
    };

    return {
      'query': mutation,
      'variables': variables,
    };
  }

  static Map<String, dynamic> deleteProduct({required String id}) {
    const String mutation = r'''
        mutation DeleteProduct($id: ID!){
            deleteProduct(id: $id)
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
