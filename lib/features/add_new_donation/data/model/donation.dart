class DonationModel {
  final String title;
  final String category;
  final int quantity;
  final String unit;
  final DateTime expiryTime;
  final String? specialInstructions;
  final List<double> coordinates;
  final String address;

  DonationModel({
    required this.title,
    required this.category,
    required this.quantity,
    this.unit = "وجبة",
    required this.expiryTime,
    this.specialInstructions,
    required this.coordinates,
    required this.address,
  });

  factory DonationModel.fromJson(Map<String, dynamic> json) {
    return DonationModel(
      title: json['title'],
      category: json['category'],
      quantity: json['quantity'],
      unit: json['unit'] ?? "وجبة",
      expiryTime: DateTime.parse(json['expiryTime']),
      specialInstructions: json['specialInstructions'],
      coordinates: List<double>.from(json['coordinates']),
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "category": category,
      "quantity": quantity,
      "unit": unit,
      "expiryTime": expiryTime.toIso8601String(),
      "specialInstructions": specialInstructions,
      "coordinates": coordinates,
      "address": address,
    };
  }
}
