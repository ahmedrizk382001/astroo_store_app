import 'package:astroo_store_app/features/admin/admin_categories/presentation/views/admin_categories_view.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/presentation/views/admin_notifications_view.dart';
import 'package:astroo_store_app/features/admin/admin_products/presentation/views/admin_products_view.dart';
import 'package:astroo_store_app/features/admin/admin_users/presentation/views/admin_users_view.dart';
import 'package:astroo_store_app/features/admin/dashboard/presentation/views/dashboard_view.dart';
import 'package:flutter/material.dart';

import '../../features/admin/admin_drawer/data/models/admin_drawer_item_model.dart';

List<AdminDrawerItemModel> adminDrawerList = [
  AdminDrawerItemModel(
    title: "Dashboard",
    icon: Icons.dashboard_rounded,
    screen: DashboardView(),
  ),
  AdminDrawerItemModel(
    title: "Categories",
    icon: Icons.category_rounded,
    screen: AdminCategoriesView(),
  ),
  AdminDrawerItemModel(
    title: "Products",
    icon: Icons.production_quantity_limits_rounded,
    screen: AdminProductsView(),
  ),
  AdminDrawerItemModel(
    title: "Users",
    icon: Icons.people_alt_rounded,
    screen: AdminUsersView(),
  ),
  AdminDrawerItemModel(
    title: "Notifications",
    icon: Icons.notifications_active_rounded,
    screen: AdminNotificationsView(),
  ),
];
