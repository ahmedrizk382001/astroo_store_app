import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/admin/admin_users/data/data_source/admin_users_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_users/data/models/get_users_model.dart';

class AdminUsersRepo {
  final AdminUsersDataSource _adminUsersDataSource;

  AdminUsersRepo(this._adminUsersDataSource);

  Future<ApiResult<GetUsersModel>> getUsers() async {
    try {
      var response = await _adminUsersDataSource.getUsers();

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<void>> deleteUser({required String id}) async {
    try {
      var response = await _adminUsersDataSource.deleteUser(id: id);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
