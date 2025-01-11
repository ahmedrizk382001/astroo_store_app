import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/user_profile_model.dart';
import 'package:astroo_store_app/generated/l10n.dart';
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
      return ApiResult.failure(S.current.logged_error);
    }
  }

  Future<ApiResult<UserProfileModel>> getUserProfile(String token) async {
    try {
      var response = await _authDataSource.getUserProfile(token);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(S.current.logged_error);
    }
  }
}
