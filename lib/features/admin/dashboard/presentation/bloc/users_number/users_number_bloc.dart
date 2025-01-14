import 'dart:async';
import 'package:astroo_store_app/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_number_event.dart';
part 'users_number_state.dart';
part 'users_number_bloc.freezed.dart';

class UsersNumberBloc extends Bloc<UsersNumberEvent, UsersNumberState> {
  UsersNumberBloc(this._dashboardRepo) : super(LoadingState()) {
    on<UsersNumberEvent>(_getUsersNumber);
  }

  final DashboardRepo _dashboardRepo;

  FutureOr<void> _getUsersNumber(
      UsersNumberEvent event, Emitter<UsersNumberState> emit) async {
    emit(UsersNumberState.loading());

    var response = await _dashboardRepo.getUsersNumber();

    response.when(
      success: (usersNumberModel) {
        emit(UsersNumberState.success(usersNum: usersNumberModel.usersNumber));
      },
      failure: (error) {
        emit(UsersNumberState.error(error: error));
      },
    );
  }
}
