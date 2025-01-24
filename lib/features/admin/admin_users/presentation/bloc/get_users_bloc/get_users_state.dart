part of 'get_users_bloc.dart';

@freezed
class GetUsersState with _$GetUsersState {
  const factory GetUsersState.loading() = LoadingState;
  const factory GetUsersState.empty() = EmptyState;
  const factory GetUsersState.success({required GetUsersModel body}) =
      SuccessState;
  const factory GetUsersState.error({required String error}) = ErrorState;
}
