class TaskModel {
  final String id;
  final Donation donation;
  final User restaurant;
  final User volunteer;
  final String status;
  final DateTime claimedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? completedAt;

  TaskModel({
    required this.id,
    required this.donation,
    required this.restaurant,
    required this.volunteer,
    required this.status,
    required this.claimedAt,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['_id'],
      donation: Donation.fromJson(json['donation']),
      restaurant: User.fromJson(json['restaurant']),
      volunteer: User.fromJson(json['volunteer']),
      status: json['status'],
      claimedAt: DateTime.parse(json['claimedAt']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      completedAt: json['completedAt'] != null
          ? DateTime.parse(json['completedAt'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'donation': donation.toJson(),
      'restaurant': restaurant.toJson(),
      'volunteer': volunteer.toJson(),
      'status': status,
      'claimedAt': claimedAt.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
    };
  }
}

class Donation {
  final String id;
  final String title;
  final String category;

  final int quantity;
  final String unit;
  final String address;

  Donation({
    required this.id,
    required this.title,
    required this.quantity,
    required this.unit,
    required this.address,
    required this.category,
  });

  factory Donation.fromJson(Map<String, dynamic> json) {
    return Donation(
      id: json['_id'],
      title: json['title'],
      quantity: json['quantity'],
      unit: json['unit'],
      category: json['category'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'quantity': quantity,
      'unit': unit,
      'address': address,
    };
  }
}

class User {
  final String id;
  final String fullName;
  final String phone;

  User({required this.id, required this.fullName, required this.phone});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['_id'],
      fullName: json['fullName'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'_id': id, 'fullName': fullName, 'phone': phone};
  }
}
