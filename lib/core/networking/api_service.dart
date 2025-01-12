import 'package:astroo_store_app/core/networking/api_constants.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/user_profile_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.graphQL)
  Future<LoginResponseModel> login(@Body() Map<String, dynamic> loginReq);

  @GET(ApiConstants.userProfile)
  Future<UserProfileModel> getUserProfile();

  @POST(ApiConstants.graphQL)
  Future<SignUpResponseModel> signUp(@Body() Map<String, dynamic> signUpReq);
}
