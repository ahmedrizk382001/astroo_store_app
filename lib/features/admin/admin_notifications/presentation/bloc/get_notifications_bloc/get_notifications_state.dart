part of 'get_notifications_bloc.dart';

@freezed
class GetNotificationsState with _$GetNotificationsState {
  const factory GetNotificationsState.loading() = LoadingState;
  const factory GetNotificationsState.empty() = EmptyState;
  const factory GetNotificationsState.success(
      {required List<NotificationModel> notificationsList}) = SuccessState;
  const factory GetNotificationsState.error({required String error}) =
      ErrorState;
}
