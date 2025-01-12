import 'package:astroo_store_app/core/Routers/app_router.dart';
import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/shared/widgets/show_toast.dart';
import '../../../../../../generated/l10n.dart';
import '../../../cubit/cubit/auth_cubit.dart';
import '../../common/auth_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loginSuccess: (loginResponseModel) {
            var userRole =
                SharedPref.instance.getValue(SharedPrefKeys.userRole);

            ShowToast.showToastSuccessButtom(
                message: S.of(context).logged_successfully);
            if (userRole == "admin") {
              context.pushNamedAndRemoveUntil(Routers.adminHome);
            } else {
              context.pushNamedAndRemoveUntil(Routers.customerHome);
            }
          },
          loginError: (error) {
            ShowToast.showToastErrorButtom(message: S.of(context).logged_error);
          },
        );
      },
      builder: (context, state) {
        var authCubit = context.read<AuthCubit>();
        return state.maybeWhen(
          loginLoading: () => Center(
            child: CircularProgressIndicator(
              color: context.color.textColor,
            ),
          ),
          orElse: () => AuthButton(
            buttonText: S.of(context).login,
            onPressed: () {
              if (authCubit.loginFormKey.currentState!.validate()) {
                authCubit.login();
              }
            },
          ),
        );
      },
    );
  }
}
