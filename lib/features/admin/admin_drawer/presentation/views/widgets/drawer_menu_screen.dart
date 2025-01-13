import 'package:astroo_store_app/core/extensions/context_extension.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref.dart';
import 'package:astroo_store_app/core/helpers/shared_pref/shared_pref_keys.dart';
import 'package:astroo_store_app/core/utils/admin_drawer_list.dart';
import 'package:astroo_store_app/features/admin/admin_drawer/data/models/admin_drawer_item_model.dart';
import 'package:astroo_store_app/features/admin/admin_drawer/presentation/views/widgets/admin_drawer_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/Routers/routers.dart';
import '../../../../../../core/styles/images/app_images.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../../core/styles/fonts/app_text_styles.dart';

class DrawerMenuScreen extends StatelessWidget {
  const DrawerMenuScreen({super.key, required this.onPageChange});

  final void Function(Widget) onPageChange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.bluePinkDark,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: context.color.bluePinkDark,
        title: Text(
          S.of(context).app_name,
          style: AppTextStyles.font18Bold(context),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: adminDrawerList
                .map(
                  (model) => AdminDrawerItem(
                    adminDrawerItemModel: model,
                    onTap: () {
                      onPageChange(model.screen);
                    },
                  ),
                )
                .toList(),
          ),
          Spacer(),
          AdminDrawerItem(
            adminDrawerItemModel: AdminDrawerItemModel(
                title: "Logout",
                icon: Icons.logout_outlined,
                screen: SizedBox.shrink()),
            onTap: () async {
              var sharedPref = SharedPref.instance;
              await sharedPref.deleteAllSecuredData();
              await sharedPref.remove(SharedPrefKeys.userId);
              await sharedPref.remove(SharedPrefKeys.userRole);
              context.pushNamedAndRemoveUntil(Routers.login);
            },
          )
        ],
      ),
    );
  }
}
