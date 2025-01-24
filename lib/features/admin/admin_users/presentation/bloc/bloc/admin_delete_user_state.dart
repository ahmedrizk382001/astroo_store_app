part of 'admin_delete_user_bloc.dart';

@freezed
class AdminDeleteUserState with _$AdminDeleteUserState {
  const factory AdminDeleteUserState.initial() = _Initial;
  const factory AdminDeleteUserState.loading({required String id}) =
      LoadingState;
  const factory AdminDeleteUserState.success() = SuccessState;
  const factory AdminDeleteUserState.error({required String error}) =
      ErrorState;
}
