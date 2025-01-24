import 'package:astroo_store_app/core/networking/api_service.dart';
import 'package:astroo_store_app/core/networking/graphQl/graphQl_queries/admin_queries/admin_users_quries.dart';
import 'package:astroo_store_app/features/admin/admin_users/data/models/get_users_model.dart';

class AdminUsersDataSource {
  final ApiService _apiService;

  AdminUsersDataSource(this._apiService);

  Future<GetUsersModel> getUsers() async {
    var response = await _apiService.getUsers(AdminUsersQuries.getUser());
    return response;
  }

  Future<void> deleteUser({required String id}) async {
    var response =
        await _apiService.deleteUser(AdminUsersQuries.deleteUser(id: id));
    return response;
  }
}
