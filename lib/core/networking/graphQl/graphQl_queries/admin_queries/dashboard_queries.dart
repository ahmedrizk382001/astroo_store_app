class DashboardQueries {
  DashboardQueries._();

  static DashboardQueries instance = DashboardQueries._();

  static Map<String, dynamic> productsNumberQuery() {
    const String query = '''
        {
          products{
            title
          }
        }
    ''';
    return {
      'query': query,
    };
  }

  static Map<String, dynamic> categoriesNumberQuery() {
    const String query = '''
        {
          categories{
            name
          }
        }
    ''';
    return {
      'query': query,
    };
  }

  static Map<String, dynamic> usersNumberQuery() {
    const String query = '''
        {
          users{
            name
          }
        }
    ''';
    return {
      'query': query,
    };
  }
}
