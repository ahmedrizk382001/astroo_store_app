import 'dart:async';

import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet {
  CustomBottomSheet._();

  static void customBottomSheet(BuildContext context,
          {required Widget child,
          Color? backgroundColor,
          FutureOr<void> Function()? whenComplete}) =>
      showModalBottomSheet(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.sizeOf(context).height * 0.7),
        context: context,
        builder: (context) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
              child: child,
            ),
          ),
        ),
        backgroundColor: backgroundColor ?? context.color.bluePinkDark,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        useSafeArea: true,
      ).whenComplete(
        whenComplete ?? () {},
      );
}
