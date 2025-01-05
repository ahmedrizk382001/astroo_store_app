import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Email",
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Password",
          ),
        ],
      ),
    );
  }
}
