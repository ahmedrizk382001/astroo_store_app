part of 'get_users_bloc.dart';

@freezed
class GetUsersEvent with _$GetUsersEvent {
  const factory GetUsersEvent.started() = _Started;
  const factory GetUsersEvent.getUsers({required bool isLoading}) =
      FetchUsersData;
}
