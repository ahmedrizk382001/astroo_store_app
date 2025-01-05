import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLinearButton extends StatelessWidget {
  const CustomLinearButton({
    required this.onPressed,
    required this.child,
    this.height,
    this.width,
    super.key,
    this.padding,
  });
  final VoidCallback onPressed;
  final Widget child;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero, // Removes default padding for accurate gradient
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      color: Colors.transparent, // Transparent to allow gradient
      elevation: 0, // Optional: remove shadow if needed
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
            begin: const Alignment(0.46, -0.89),
            end: const Alignment(-0.46, 0.89),
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Container(
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
