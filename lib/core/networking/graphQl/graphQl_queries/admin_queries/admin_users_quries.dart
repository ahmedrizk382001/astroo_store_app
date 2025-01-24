class AdminUsersQuries {
  AdminUsersQuries._();

  static AdminUsersQuries instance = AdminUsersQuries._();

  static Map<String, dynamic> getUser() {
    final String query = '''
            {
              users{
                name
                email
                avatar
                role
                id
              }
            }
    ''';

    return {
      'query': query,
    };
  }

  static Map<String, dynamic> deleteUser({required String id}) {
    const String mutation = r'''
        mutation DeleteUser($id: ID!){
            deleteUser(id: $id)
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
