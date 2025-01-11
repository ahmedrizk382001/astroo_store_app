import 'package:astroo_store_app/features/auth/data/models/login_request_model.dart';

class AuthQueries {
  const AuthQueries._();

  static AuthQueries instance = AuthQueries._();

  static Map<String, dynamic> loginQuery(LoginRequestModel loginRequestModel) {
    String mutation = r"""
      mutation Login($email: String!, $password: String!){
        login(email: $email, password: $password) {
          access_token
          refresh_token
        }
      }""";

    Map<String, dynamic> variables = {
      "email": loginRequestModel.email,
      "password": loginRequestModel.password,
    };

    return {
      "query": mutation,
      "variables": variables,
    };
  }
}
