import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/repo/admin_notifications_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notifications_event.dart';
part 'get_notifications_state.dart';
part 'get_notifications_bloc.freezed.dart';

class GetNotificationsBloc
    extends Bloc<GetNotificationsEvent, GetNotificationsState> {
  GetNotificationsBloc(this._adminNotificationsRepo) : super(LoadingState()) {
    on<FetchNotificationsEvent>(_getAdminNotifications);
  }

  final AdminNotificationsRepo _adminNotificationsRepo;

  FutureOr<void> _getAdminNotifications(
    FetchNotificationsEvent event,
    Emitter<GetNotificationsState> emit,
  ) {
    emit(GetNotificationsState.loading());
    try {
      var reponse = _adminNotificationsRepo.getNotifications();
      if (reponse.isEmpty) {
        emit(GetNotificationsState.empty());
      } else {
        emit(GetNotificationsState.success(notificationsList: reponse));
      }
    } catch (e) {
      emit(GetNotificationsState.error(error: e.toString()));
    }
  }
}
