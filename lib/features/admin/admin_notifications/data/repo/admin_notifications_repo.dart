import 'package:astroo_store_app/core/networking/api_result.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/data_source/admin_notifications_data_source.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AdminNotificationsRepo {
  AdminNotificationsRepo(this._adminCategoriesDataSource);

  final AdminNotificationsDataSource _adminCategoriesDataSource;

  Future<void> addNotification({required NotificationModel body}) async {
    try {
      await _adminCategoriesDataSource.addNotification(body: body);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  List<NotificationModel> getNotifications() {
    return _adminCategoriesDataSource.getNotifications();
  }

  Future<ApiResult<Response>> sendNotification(
      {required NotificationModel body}) async {
    try {
      var response =
          await _adminCategoriesDataSource.sendNotification(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
