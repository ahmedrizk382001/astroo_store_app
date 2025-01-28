import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/repo/admin_notifications_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_notification_event.dart';
part 'send_notification_state.dart';
part 'send_notification_bloc.freezed.dart';

class SendNotificationBloc
    extends Bloc<SendNotificationEvent, SendNotificationState> {
  SendNotificationBloc(this._adminNotificationsRepo) : super(_Initial()) {
    on<SendNewNotificationEvent>(_sendNotification);
  }

  final AdminNotificationsRepo _adminNotificationsRepo;

  FutureOr<void> _sendNotification(
    SendNewNotificationEvent event,
    Emitter<SendNotificationState> emit,
  ) async {
    emit(SendNotificationState.loading());
    var response =
        await _adminNotificationsRepo.sendNotification(body: event.body);

    response.when(
      success: (_) {
        emit(SendNotificationState.success());
      },
      failure: (error) {
        emit(SendNotificationState.error(error: error));
      },
    );
  }
}
