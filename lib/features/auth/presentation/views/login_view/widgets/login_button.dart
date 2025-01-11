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
            ShowToast.showToastSuccessButtom(
                message: S.of(context).logged_successfully);
          },
          loginError: (error) {
            ShowToast.showToastErrorButtom(message: S.of(context).logged_error);
          },
        );
      },
      builder: (context, state) {
        var authCubit = context.read<AuthCubit>();
        return AuthButton(
          buttonText: S.of(context).login,
          onPressed: () {
            if (authCubit.formKey.currentState!.validate()) {
              authCubit.login();
            }
          },
        );
      },
    );
  }
}
