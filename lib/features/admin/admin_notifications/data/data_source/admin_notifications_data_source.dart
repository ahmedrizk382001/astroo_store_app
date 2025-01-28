import 'package:astroo_store_app/core/helpers/hive/hive_database.dart';
import 'package:astroo_store_app/core/helpers/send_notifications/firebase_cloud_messaging.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:dio/dio.dart';

class AdminNotificationsDataSource {
  final HiveDatabase hiveDatabase = HiveDatabase.instance;

  Future<void> addNotification({required NotificationModel body}) async {
    await hiveDatabase.notificationBox!.add(body);
  }

  List<NotificationModel> getNotifications() {
    return hiveDatabase.notificationBox!.values.toList().reversed.toList();
  }

  Future<Response> sendNotification({required NotificationModel body}) async {
    var response =
        await FirebaseCloudMessaging.sendNotification(notificationModel: body);
    return response;
  }
}
