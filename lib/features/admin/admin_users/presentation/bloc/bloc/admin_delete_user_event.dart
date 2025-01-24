part of 'admin_delete_user_bloc.dart';

@freezed
class AdminDeleteUserEvent with _$AdminDeleteUserEvent {
  const factory AdminDeleteUserEvent.started() = _Started;
  const factory AdminDeleteUserEvent.deleteUser({required String id}) =
      RemoveUserEvent;
}
