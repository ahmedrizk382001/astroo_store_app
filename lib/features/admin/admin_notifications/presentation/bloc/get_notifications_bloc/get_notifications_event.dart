part of 'get_notifications_bloc.dart';

@freezed
class GetNotificationsEvent with _$GetNotificationsEvent {
  const factory GetNotificationsEvent.started() = _Started;
  const factory GetNotificationsEvent.getNotifications(
      {required bool isLoading}) = FetchNotificationsEvent;
}
