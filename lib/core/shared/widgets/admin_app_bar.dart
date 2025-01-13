import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../styles/fonts/app_text_styles.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdminAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppTextStyles.font18Bold(context),
      ),
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          ZoomDrawer.of(context)!.toggle();
        },
        icon: Icon(
          Icons.menu,
          color: context.color.textColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 56.h);
}
