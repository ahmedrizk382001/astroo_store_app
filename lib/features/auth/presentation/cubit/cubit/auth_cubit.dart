import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:astroo_store_app/features/auth/data/models/login_request_model.dart';
import 'package:astroo_store_app/features/auth/data/models/login_response_model.dart';
import 'package:astroo_store_app/features/auth/data/models/sign_up_request_model.dart';
import 'package:astroo_store_app/features/auth/data/repos/auth_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helpers/shared_pref/shared_pref.dart';
import '../../../data/models/sign_up_response_model.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepo) : super(AuthState.initial());

  final AuthRepo _authRepo;
  final SharedPref _sharedPref = SharedPref.instance;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final loginFormKey = GlobalKey<FormState>();
  final signUpFormKey = GlobalKey<FormState>();

  Future<void> login() async {
    emit(AuthState.loginLoading());

    var response = await _authRepo.login(
      loginRequestModel: LoginRequestModel(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(
      success: (result) async {
        var token = result.data.login.accessToken;

        if (token == null) {
          debugPrint("Access token is null");
          emit(AuthState.loginError(error: "Access token is null"));
          return;
        }

        debugPrint("Access token is =>>>>>>>>> $token");

        await _sharedPref.setSecuredString(SharedPrefKeys.accessToken, token);

        final user = await _authRepo.getUserProfile(token);

        await _sharedPref.setValue<String>(
          SharedPrefKeys.userRole,
          user.role ?? '',
        );

        await _sharedPref.setValue<int>(
          SharedPrefKeys.userId,
          user.id ?? 0,
        );

        emailController.text = '';
        passwordController.text = '';

        emit(AuthState.loginSuccess(loginResponseModel: result));
      },
      failure: (error) {
        emit(AuthState.loginError(error: error));
      },
    );
  }

  Future<void> signUp() async {
    emit(AuthState.signUpLoading());

    var response = await _authRepo.signUp(
        signUpRequestModel: SignUpRequestModel(
            avatar: '',
            name: nameController.text,
            email: emailController.text,
            password: passwordController.text));

    response.when(
      success: (result) async {
        nameController.text = '';
        emailController.text = '';
        passwordController.text = '';
        emit(AuthState.signUpSuccess(signUpResponseModel: result));

        // await login();
      },
      failure: (error) => emit(AuthState.signUpError(error: error)),
    );
  }
}
