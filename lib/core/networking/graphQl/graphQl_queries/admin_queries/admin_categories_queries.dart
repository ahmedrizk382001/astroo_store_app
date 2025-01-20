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
}
