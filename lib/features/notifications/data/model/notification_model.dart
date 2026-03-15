import 'package:hive_flutter/hive_flutter.dart';

part 'notification_model.g.dart';

@HiveType(typeId: 4)
class NotificationModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String recipient;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String body;
  @HiveField(4)
  final String type;
  @HiveField(5)
  final String relatedId;
  @HiveField(6)
  final bool isRead;
  @HiveField(7)
  final DateTime createdAt;
  @HiveField(8)
  final DateTime updatedAt;

  NotificationModel({
    required this.id,
    required this.recipient,
    required this.title,
    required this.body,
    required this.type,
    required this.relatedId,
    required this.isRead,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['_id'],
      recipient: json['recipient'],
      title: json['title'],
      body: json['body'],
      type: json['type'],
      relatedId: json['relatedId'],
      isRead: json['isRead'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}
