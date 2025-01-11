import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/user_profile_model.dart';

import '../../../../core/networking/dio_factory.dart';
import '../../../../core/networking/graphQl/graphQl_queries/auth_queries.dart';
import '../models/login_request_model.dart';

class AuthDataSource {
  final ApiService _apiService;

  AuthDataSource(this._apiService);

  Future<LoginResponseModel> login(
      {required LoginRequestModel loginRequestModel}) async {
    var response =
        await _apiService.login(AuthQueries.loginQuery(loginRequestModel));

    return response;
  }

  Future<UserProfileModel> getUserProfile(String token) async {
    DioFactory.setTokenIntoHeaderAfterLogin("Bearer $token");
    return await _apiService.getUserProfile();
  }
}
