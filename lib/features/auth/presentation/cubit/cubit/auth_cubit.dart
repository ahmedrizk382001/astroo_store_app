import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:astroo_store_app/features/auth/data/models/login_request_model.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/user_profile_model.dart';
import 'package:astroo_store_app/features/auth/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers/shared_pref/shared_pref.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(AuthState.initial());

  final AuthRepo _authRepo;
  final SharedPref _sharedPref = SharedPref.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(AuthState.loginLoading());

    var response = await _authRepo.login(
        loginRequestModel: LoginRequestModel(
            email: emailController.text, password: passwordController.text));

    response.when(
      success: (result) async {
        var token = result.data.login.accessToken;

        debugPrint("Access token is =>>>>>>>>> $token");

        await _sharedPref.setSecuredString(SharedPrefKeys.accessToken, token);

        await getUserDate(token: token!);

        emit(AuthState.loginSuccess(loginResponseModel: result));
      },
      failure: (error) => emit(AuthState.loginError(error: error)),
    );
  }

  Future<void> getUserDate({required String token}) async {
    emit(AuthState.getUserDataLoading());
    final user = await _authRepo.getUserProfile(token);

    user.when(
      success: (result) async {
        await _sharedPref.setValue<String>(
            SharedPrefKeys.userRole, result.role ?? '');

        await _sharedPref.setValue<int>(SharedPrefKeys.userId, result.id ?? 0);

        emit(AuthState.getUserDataSuccess(userProfileModel: result));
      },
      failure: (error) => emit(AuthState.getUserDataError(error: error)),
    );
  }
}
