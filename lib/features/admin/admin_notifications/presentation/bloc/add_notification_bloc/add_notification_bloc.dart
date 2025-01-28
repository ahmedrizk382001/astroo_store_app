import 'dart:async';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/repo/admin_notifications_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_notification_event.dart';
part 'add_notification_state.dart';
part 'add_notification_bloc.freezed.dart';

class AddNotificationBloc
    extends Bloc<AddNotificationEvent, AddNotificationState> {
  AddNotificationBloc(this._adminNotificationsRepo) : super(_Initial()) {
    on<CreateNotificationEvent>(_addNotification);
  }

  final AdminNotificationsRepo _adminNotificationsRepo;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController headerController = TextEditingController();
  TextEditingController contentController = TextEditingController();
  TextEditingController productIdController = TextEditingController();

  FutureOr<void> _addNotification(
    CreateNotificationEvent event,
    Emitter<AddNotificationState> emit,
  ) async {
    emit(AddNotificationState.loading());

    try {
      await _adminNotificationsRepo.addNotification(body: event.body);
      emit(AddNotificationState.success());
    } catch (e) {
      emit(AddNotificationState.error(error: e.toString()));
    }
  }
}
