import 'package:hive_flutter/hive_flutter.dart';

part 'donation_model.g.dart';

@HiveType(typeId: 2)
class DonationModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String restaurant;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String category;
  @HiveField(4)
  final int quantity;
  @HiveField(5)
  final String unit;
  @HiveField(6)
  final DateTime expiryTime;
  @HiveField(7)
  final String specialInstructions;
  @HiveField(8)
  final String address;
  @HiveField(9)
  final String status;
  @HiveField(10)
  final Location location;
  @HiveField(11)
  final DateTime createdAt;
  @HiveField(12)
  final DateTime updatedAt;

  DonationModel({
    required this.id,
    required this.restaurant,
    required this.title,
    required this.category,
    required this.quantity,
    required this.unit,
    required this.expiryTime,
    required this.specialInstructions,
    required this.address,
    required this.status,
    required this.location,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DonationModel.fromJson(Map<String, dynamic> json) {
    return DonationModel(
      id: json['_id'],
      restaurant: json['restaurant'],
      title: json['title'],
      category: json['category'],
      quantity: json['quantity'],
      unit: json['unit'],
      expiryTime: DateTime.parse(json['expiryTime']),
      specialInstructions: json['specialInstructions'] ?? '',
      address: json['address'],
      status: json['status'],
      location: Location.fromJson(json['location']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'restaurant': restaurant,
      'title': title,
      'category': category,
      'quantity': quantity,
      'unit': unit,
      'expiryTime': expiryTime.toIso8601String(),
      'specialInstructions': specialInstructions,
      'address': address,
      'status': status,
      'location': location.toJson(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }
}

@HiveType(typeId: 3)
class Location {
  @HiveField(0)
  final String type;
  @HiveField(1)
  final List<double> coordinates;

  Location({required this.type, required this.coordinates});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      type: json['type'],
      coordinates: List<double>.from(
        (json['coordinates'] ?? []).map((e) => (e as num).toDouble()),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'coordinates': coordinates};
  }
}
