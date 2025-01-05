import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/shared/animations/animation_do.dart';
import 'package:astroo_store_app/core/shared/widgets/custom_text_field.dart';
import 'package:astroo_store_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  bool isPasswordShown = false;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: animationDuration,
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).your_email,
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: S.of(context).password,
              suffixIcon: IconButton(
                  onPressed: () {
                    isPasswordShown = !isPasswordShown;
                    setState(() {});
                  },
                  icon: Icon(
                    isPasswordShown
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 20,
                    color: context.color.textColor,
                  )),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
