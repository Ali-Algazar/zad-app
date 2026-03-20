class DonationWithRestaurantModel {
  final String id;
  final Restaurant restaurant;
  final String title;
  final String category;
  final int quantity;
  final String unit;
  final DateTime expiryTime;
  final String specialInstructions;
  final String address;
  final String status;
  final Location location;
  final DateTime createdAt;
  final DateTime updatedAt;

  DonationWithRestaurantModel({
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

  factory DonationWithRestaurantModel.fromJson(Map<String, dynamic> json) {
    return DonationWithRestaurantModel(
      id: json['_id'],
      restaurant: Restaurant.fromJson(json['restaurant']),
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
      'restaurant': restaurant.toJson(),
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

class Restaurant {
  final String id;
  final String fullName;
  final String phone;
  final String governorate;

  Restaurant({
    required this.id,
    required this.fullName,
    required this.phone,
    required this.governorate,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['_id'],
      fullName: json['fullName'],
      phone: json['phone'],
      governorate: json['governorate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'fullName': fullName,
      'phone': phone,
      'governorate': governorate,
    };
  }
}

class Location {
  final String type;
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
