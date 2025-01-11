part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loginLoading() = LoginLoadingState;
  const factory AuthState.loginSuccess(
      {required LoginResponseModel loginResponseModel}) = LoginSuccessState;
  const factory AuthState.loginError({required String error}) = LoginErrorState;

  const factory AuthState.getUserDataLoading() = GetUserDataLoadingState;
  const factory AuthState.getUserDataSuccess(
      {required UserProfileModel userProfileModel}) = GetUserDataSuccessState;
  const factory AuthState.getUserDataError({required String error}) =
      GetUserDataErrorState;
}
