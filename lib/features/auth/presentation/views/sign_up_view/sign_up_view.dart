import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/features/auth/presentation/views/common/auth_custom_painter.dart';
import 'package:astroo_store_app/features/auth/presentation/views/sign_up_view/widgets/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(double.infinity, 50.h),
        painter: AuthCustomPainter(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ])),
      ),
      body: SafeArea(child: SignUpBody()),
    );
  }
}
