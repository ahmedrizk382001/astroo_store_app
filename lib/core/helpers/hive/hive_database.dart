import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveDatabase {
  HiveDatabase._();

  static HiveDatabase instance = HiveDatabase._();

  Box<NotificationModel>? notificationBox;

  Future<void> setup() async {
    await Hive.initFlutter();

    Hive.registerAdapter<NotificationModel>(NotificationModelAdapter());

    notificationBox =
        await Hive.openBox<NotificationModel>('notifications_box');
  }

  Future<void> clearAllBox() async {
    await notificationBox!.clear();
  }
}
