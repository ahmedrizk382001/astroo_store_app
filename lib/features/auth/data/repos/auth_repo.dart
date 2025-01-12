import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_request_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/user_profile_model.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import '../models/login_request_model.dart';

class AuthRepo {
  final AuthDataSource _authDataSource;

  AuthRepo(this._authDataSource);

  Future<ApiResult<LoginResponseModel>> login(
      {required LoginRequestModel loginRequestModel}) async {
    try {
      var response =
          await _authDataSource.login(loginRequestModel: loginRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      debugPrint("Error in auth repo (login method)");
      return ApiResult.failure(S.current.logged_error);
    }
  }

  Future<UserProfileModel> getUserProfile(String token) async {
    var response = await _authDataSource.getUserProfile(token);
    return response;
  }

  Future<ApiResult<SignUpResponseModel>> signUp(
      {required SignUpRequestModel signUpRequestModel}) async {
    try {
      var response =
          await _authDataSource.signUp(signUpRequestModel: signUpRequestModel);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(S.current.signed_up_error);
    }
  }
}
