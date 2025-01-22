import 'package:astroo_store_app/features/admin/admin_products/data/models/add_product_request_model.dart';

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
}
