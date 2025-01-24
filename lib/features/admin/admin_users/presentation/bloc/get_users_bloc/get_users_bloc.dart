import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_users/data/models/get_users_model.dart';
import 'package:astroo_store_app/features/admin/admin_users/data/repo/admin_users_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users_event.dart';
part 'get_users_state.dart';
part 'get_users_bloc.freezed.dart';

class GetUsersBloc extends Bloc<GetUsersEvent, GetUsersState> {
  GetUsersBloc(this._adminUsersRepo) : super(LoadingState()) {
    on<FetchUsersData>(_getUsers);
  }

  final AdminUsersRepo _adminUsersRepo;

  FutureOr<void> _getUsers(
    FetchUsersData event,
    Emitter<GetUsersState> emit,
  ) async {
    if (event.isLoading) {
      emit(GetUsersState.loading());
    }

    var response = await _adminUsersRepo.getUsers();

    response.when(
      success: (data) {
        if (data.data.users.isEmpty) {
          emit(GetUsersState.empty());
        } else {
          emit(GetUsersState.success(body: data));
        }
      },
      failure: (error) {
        emit(GetUsersState.error(error: error));
      },
    );
  }
}
