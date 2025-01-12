part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loginLoading() = LoginLoadingState;
  const factory AuthState.loginSuccess(
      {required LoginResponseModel loginResponseModel}) = LoginSuccessState;
  const factory AuthState.loginError({required String error}) = LoginErrorState;

  const factory AuthState.signUpLoading() = SignUpLoadingState;
  const factory AuthState.signUpSuccess(
      {required SignUpResponseModel signUpResponseModel}) = SignUpSuccessState;
  const factory AuthState.signUpError({required String error}) =
      SignUpErrorState;
}
