import 'package:astroo_store_app/features/auth/data/models/login_request_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_request_model.dart';

class AuthQueries {
  const AuthQueries._();

  static AuthQueries instance = AuthQueries._();

  static Map<String, dynamic> loginQuery(LoginRequestModel loginRequestModel) {
    String mutation = r'''
      mutation Login($email: String!, $password: String!){
        login(email: $email, password: $password) {
          access_token
          refresh_token
        }
      }''';

    Map<String, dynamic> variables = {
      "email": loginRequestModel.email,
      "password": loginRequestModel.password,
    };

    return {
      "query": mutation,
      "variables": variables,
    };
  }

  static Map<String, dynamic> signUpQuery(
      SignUpRequestModel signUpRequestModel) {
    String mutation = r'''
      mutation AddUser($name: String!, $email: String!, $password: String!, $avatar: String!){
        addUser(
  	      data: {
            name: $name
            email: $email
            password: $password
            avatar: $avatar
  	      }
       ) {
  	        id
  	        name
  	        avatar
          }
      }''';

    Map<String, dynamic> variables = {
      "name": signUpRequestModel.name,
      "email": signUpRequestModel.email,
      "password": signUpRequestModel.password,
      "avatar": "https://api.lorem.space/image/face?w=150&h=220"
    };

    return {
      "query": mutation,
      "variables": variables,
    };
  }
}
