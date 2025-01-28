import 'package:hive_flutter/hive_flutter.dart';
part 'notification_model.g.dart';

@HiveType(typeId: 0)
class NotificationModel extends HiveObject {
  @HiveField(0)
  String header;
  @HiveField(1)
  String content;
  @HiveField(2)
  String productId;

  NotificationModel({
    required this.header,
    required this.content,
    required this.productId,
  });
}
