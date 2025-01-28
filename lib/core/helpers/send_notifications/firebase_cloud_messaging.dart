import 'package:astroo_store_app/core/helpers/send_notifications/secrets/firebase_secrets.dart';
import 'package:astroo_store_app/features/admin/admin_notifications/data/models/notification_model.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:http/http.dart' as http;

class FirebaseCloudMessaging {
  FirebaseCloudMessaging._();
  static FirebaseCloudMessaging instance = FirebaseCloudMessaging._();

  static const String subscribeKey = 'astroo-store';

  static Future<void> requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await subscribeNotification();
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      await subscribeNotification();
    } else {
      await unSubscribeNotification();
    }

    debugPrint('User permission: ${settings.authorizationStatus}');
  }

  static Future<void> subscribeNotification() async {
    await FirebaseMessaging.instance.subscribeToTopic(subscribeKey);
    debugPrint('====🔔 Notification Subscribed 🔔=====');
  }

  /// unsubscribe notification

  static Future<void> unSubscribeNotification() async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(subscribeKey);
    debugPrint('====🔕 Notification Unsubscribed 🔕=====');
  }

  static Future<String?> getUserToken() async {
    final firebaseMessaging = FirebaseMessaging.instance;

    await firebaseMessaging.requestPermission();
    // get device token
    String? deviceToken = await firebaseMessaging.getToken();
    debugPrint(
        "===================Device FirebaseMessaging Token====================");
    debugPrint(deviceToken);
    debugPrint(
        "===================Device FirebaseMessaging Token====================");
    return deviceToken;
  }

  static Future<String?> getAccessToken() async {
    List<String> scopes = [
      "https://www.googleapis.com/auth/userinfo.email",
      "https://www.googleapis.com/auth/firebase.database",
      "https://www.googleapis.com/auth/firebase.messaging"
    ];

    try {
      http.Client client = await auth.clientViaServiceAccount(
          auth.ServiceAccountCredentials.fromJson(serviceAccountJson), scopes);

      auth.AccessCredentials credentials =
          await auth.obtainAccessCredentialsViaServiceAccount(
              auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
              scopes,
              client);

      client.close();
      debugPrint(
          "Access Token: ${credentials.accessToken.data}"); // Print Access Token
      return credentials.accessToken.data;
    } catch (e) {
      debugPrint("Error getting access token: $e");
      return null;
    }
  }

  static Future<Response> sendNotification({
    required NotificationModel notificationModel,
  }) async {
    try {
      var serverKeyAuthorization = await getAccessToken();

      Dio dio = Dio();
      dio.options.headers['Content-Type'] = 'application/json';
      dio.options.headers['Authorization'] = 'Bearer $serverKeyAuthorization';

      var response = await dio.post(
        urlEndPoint,
        data: _getNotificationBody(
          body: notificationModel,
        ),
      );

      // Print response status code and body for debugging
      debugPrint('Response Status Code: ${response.statusCode}');
      debugPrint('Response Data: ${response.data}');
      return response;
    } catch (e) {
      debugPrint("Error sending notification: $e");
      throw 'Error sending notification: $e';
    }
  }

  static Map<String, dynamic> _getNotificationBody({
    required NotificationModel body,
  }) {
    return {
      "message": {
        "topic": subscribeKey,
        "notification": {"title": body.header, "body": body.content},
        "data": {
          "id": body.productId,
        }
      }
    };
  }
}
