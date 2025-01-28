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
    final serviceAccountJson = {
      "type": "service_account",
      "project_id": "astroo-store-d14e1",
      "private_key_id": "7810581273007dfa9992e359ea51cb8f3ffb26cd",
      "private_key":
          "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCvLooQMeLUn8Gf\nBV1xRUW1mCQf/rBtYW/px8gjxxGNWexC0ufLQWj8XsR7oXCY8nkUkS5iDQbMO7wT\nVsy2OeXsovfDkgX/6jydpAE3GbJo0jZiRRyDySCRwz2q2hlP1m1KnTwKoCh1bm0A\nUfDgpMyfb8zoPaBf18lYznuI2+P//RJ2uykGL2V/So/5A0sqa9gKV4cGJ9bH0nR+\ntS5Z/whl44yQxaMquiRliu4CiCx3m/5SUh5rbBaEOINswxc+rSNgeSJ3mVsOKzqc\nPRjBlZR+hLIwX5JTu/sJCNDhtvKiSBF6t1pn82InQ4oLGgrnr0fadsk+mMvDkOXX\nHTPNFOMXAgMBAAECggEAT7RDCN9JrygItkuAmlrEPr08InqE1x9wBdPqEa0vJTr2\nrei7odTe6YRMrVtkmZIo2Ny9V8tJfn7nMX1aosZxAFudkxPLOwbeEXNfQiyk6eBK\n8icztBo8gVVtp2CYB6UuELa9bLA1+EgHvA+MIwmYOCpr9najkzfg2lEID9rMP9mq\nXpMoPDq2D9bmKrhR0asSwVKg/PwuZT+/6K3l9g6u+nSwJbvsA1bIBFf4z1dd3Q1j\nSnA4sSocSDaB8hcqXYmHs5T/+M+adyIg5FqyfAegNf62XxFiQcons5E3QTfJMDFY\nf9uyf1Hoq+qBnWGFkajQbp85MVAfrgZDm3heowxLgQKBgQDYd5uhAApWGz2FmhJM\nw7uVkIL2vlsDpu06jO1PXR+WzPuxckeEg5XnFB6GkwHnThFShp/10Ik31cdJcGlV\n68bzLJ+h8qnyreAZTA4V80oI8xLAQIN9CmySV8Zzi3gwcm7CpZFqoI8SkHqvMo6u\nVzJyKWJl5hWO3nYpK8Ot9THPNwKBgQDPLLukQhR83gqejvbK+X3TRi+Ml5DVy3yG\nm8p1VgStqxNGmtxFBNYDxNiNoSWNvWOWWc5ThSzl6FXoBjJ24djnk9iCjAws0kS1\nQMSLaShtvUi7XrMVwc/D7GenEJL6XrziXwulIOZhSyvZSMfHEKFbN4wjml5hd7E+\nFpTu2RS7IQKBgHrk1Oc/1Z5zEqeCBDeuvBW6mI+rHJLjNzWRgr0W+nMr5w0j+zRh\nXD53rqjqVx9RtAXtRm1ROkYHyX+JIVRVanrub6aK1S9gxaS3CBwwJm0USyX4um3H\n+EHRMWqx2MdwgC9jvj4R74gznGNQya5y9MHZevKtALo+1Eilfw+I8AFbAoGAAKHa\nUL4C4f6reaBmEGiCgcqNCpjL0Fs2nhKLo6AHk6AaBvUiBvPk004eexAq1Svmyeas\nQoT9hhYXbQXX0ZUO3GYPGxbiUqCxpPv1nZdMkEkrl6bKVR6qS6bFCjV6vVjcqrQv\njOl0yoc4MwmN0oWyeFzLCLDH6PQ8jjvzaGcxMQECgYEAosYXgG6JSimDjJleqMb/\nscC+rmXJRGEHV94MkIPfXx1+ju9/ljhulMRupoCWRtnYqw2aZ7l2UWCp+k86R5md\n27ljGEyX7zNN9dqiw7uwQ/tmn8o1d/qDhbFDgL9Ev30zdWTJN12cj0/3hpMfoc//\nQKgyiB0dkmX6+5qL/kPGylc=\n-----END PRIVATE KEY-----\n",
      "client_email":
          "firebase-adminsdk-lccn6@astroo-store-d14e1.iam.gserviceaccount.com",
      "client_id": "111896677320185043453",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url":
          "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url":
          "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-lccn6%40astroo-store-d14e1.iam.gserviceaccount.com",
      "universe_domain": "googleapis.com"
    };
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

      // change your project id
      const String urlEndPoint =
          "https://fcm.googleapis.com/v1/projects/astroo-store-d14e1/messages:send";

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
