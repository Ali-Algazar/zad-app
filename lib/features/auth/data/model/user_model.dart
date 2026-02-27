import 'package:hive_flutter/adapters.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String fullName;
  @HiveField(2)
  final String phone;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String governorate;
  @HiveField(5)
  final String role;
  @HiveField(6)
  final String level;

  @HiveField(7)
  final String fcmToken;
  @HiveField(8)
  final bool isVerified;

  UserModel({
    required this.id,
    required this.fullName,
    required this.phone,
    required this.email,
    required this.governorate,
    required this.role,
    required this.level,
    required this.fcmToken,
    required this.isVerified,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['_id'],
      fullName: json['fullName'],
      phone: json['phone'],
      email: json['email'],
      governorate: json['governorate'],
      role: json['role'],
      level: json['level'],
      fcmToken: json['fcmToken'] ?? '',
      isVerified: json['isVerified'] ?? false,
    );
  }
}
