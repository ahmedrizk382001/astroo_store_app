import 'package:astroo_store_app/core/networking/api_constants.dart';
import 'package:astroo_store_app/features/admin/admin_categories/data/models/categories_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/categories_number_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/products_number_model.dart';
import 'package:astroo_store_app/features/admin/dashboard/data/models/users_number_model.dart';
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

  @POST(ApiConstants.graphQL)
  Future<ProductsNumberModel> getProductsNumber(
      @Body() Map<String, dynamic> productsReq);

  @POST(ApiConstants.graphQL)
  Future<CategoriesNumberModel> getCategoriesNumber(
      @Body() Map<String, dynamic> categoriesReq);

  @POST(ApiConstants.graphQL)
  Future<UsersNumberModel> getUsersNumber(
      @Body() Map<String, dynamic> usersReq);

  @POST(ApiConstants.graphQL)
  Future<CategoriesModel> getAllCategories(
      @Body() Map<String, dynamic> allCategoriesReq);
}
