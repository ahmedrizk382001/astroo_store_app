import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_request_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/user_profile_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../../core/networking/graphQl/graphQl_queries/auth_queries/auth_queries.dart';
import '../models/login_request_model.dart';

class AuthDataSource {
  final ApiService _apiService;

  AuthDataSource(this._apiService);

  Future<LoginResponseModel> login(
      {required LoginRequestModel loginRequestModel}) async {
    var response =
        await _apiService.login(AuthQueries.loginQuery(loginRequestModel));

    debugPrint(" AuthDataSource success(login method)");

    return response;
  }

  Future<UserProfileModel> getUserProfile(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final response = await client.getUserProfile();
    return response;
  }

  Future<SignUpResponseModel> signUp(
      {required SignUpRequestModel signUpRequestModel}) async {
    var response =
        await _apiService.signUp(AuthQueries.signUpQuery(signUpRequestModel));

    return response;
  }
}
