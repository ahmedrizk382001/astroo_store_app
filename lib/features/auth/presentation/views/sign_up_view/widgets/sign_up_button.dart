import 'package:astroo_store_app/core/Routers/routers.dart';
import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/shared/widgets/show_toast.dart';
import '../../../../../../generated/l10n.dart';
import '../../../cubit/cubit/auth_cubit.dart';
import '../../common/auth_button.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          signUpSuccess: (signUpResponseModel) {
            ShowToast.showToastSuccessButtom(
                message: S.of(context).signed_up_successfully);
            context.pushNamedAndRemoveUntil(Routers.login);
          },
          signUpError: (error) {
            ShowToast.showToastErrorButtom(
                message: S.of(context).signed_up_error);
          },
        );
      },
      builder: (context, state) {
        var authCubit = context.read<AuthCubit>();
        return state.maybeWhen(
          signUpLoading: () => Center(
            child: CircularProgressIndicator(
              color: context.color.textColor,
            ),
          ),
          orElse: () {
            return AuthButton(
              buttonText: S.of(context).sign_up,
              onPressed: () {
                if (authCubit.signUpFormKey.currentState!.validate()) {
                  authCubit.signUp();
                }
              },
            );
          },
        );
      },
    );
  }
}
