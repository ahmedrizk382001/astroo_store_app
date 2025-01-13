import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/features/admin/admin_drawer/presentation/views/widgets/drawer_menu_screen.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../../../../core/styles/colors/dark_theme_colors.dart';

class AdminDrawerView extends StatefulWidget {
  const AdminDrawerView({super.key});

  @override
  State<AdminDrawerView> createState() => _AdminDrawerViewState();
}

class _AdminDrawerViewState extends State<AdminDrawerView> {
  late ZoomDrawerController zoomDrawerController;
  Widget currentScreen = DashboardView();

  @override
  void initState() {
    zoomDrawerController = ZoomDrawerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        controller: zoomDrawerController,
        borderRadius: 24.r,
        showShadow: true,
        slideWidth: MediaQuery.sizeOf(context).width * 0.7,
        drawerShadowsBackgroundColor:
            DarkThemeColors.mainColor.withOpacity(0.6),
        menuBackgroundColor: context.color.bluePinkDark!,
        menuScreenOverlayColor: context.color.bluePinkDark!,
        menuScreen: Builder(
          builder: (context) {
            return DrawerMenuScreen(
              onPageChange: (screen) {
                currentScreen = screen;
                ZoomDrawer.of(context)!.close();
                setState(() {});
              },
            );
          },
        ),
        mainScreen: currentScreen);
  }
}
