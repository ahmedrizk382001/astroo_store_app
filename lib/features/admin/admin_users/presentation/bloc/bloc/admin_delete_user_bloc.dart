import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_users/data/repo/admin_users_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_delete_user_event.dart';
part 'admin_delete_user_state.dart';
part 'admin_delete_user_bloc.freezed.dart';

class AdminDeleteUserBloc
    extends Bloc<AdminDeleteUserEvent, AdminDeleteUserState> {
  AdminDeleteUserBloc(this._adminUsersRepo) : super(_Initial()) {
    on<RemoveUserEvent>(_deleteUser);
  }

  final AdminUsersRepo _adminUsersRepo;

  FutureOr<void> _deleteUser(
    RemoveUserEvent event,
    Emitter<AdminDeleteUserState> emit,
  ) async {
    emit(AdminDeleteUserState.loading(id: event.id));

    var response = await _adminUsersRepo.deleteUser(id: event.id);

    response.when(
      success: (_) {
        emit(AdminDeleteUserState.success());
      },
      failure: (error) {
        emit(AdminDeleteUserState.error(error: error));
      },
    );
  }
}
