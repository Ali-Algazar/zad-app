class DashboardModel {
  final MealsSaved mealsSaved;
  final KgDonated kgDonated;
  final TotalDonationsCount totalDonationsCount;
  final List<RecentActivity> recentActivities;

  DashboardModel({
    required this.mealsSaved,
    required this.kgDonated,
    required this.totalDonationsCount,
    required this.recentActivities,
  });

  factory DashboardModel.fromJson(Map<String, dynamic> json) {
    return DashboardModel(
      mealsSaved: MealsSaved.fromJson(json['mealsSaved']),
      kgDonated: KgDonated.fromJson(json['kgDonated']),
      totalDonationsCount: TotalDonationsCount.fromJson(
        json['totalDonationsCount'],
      ),
      recentActivities: List<RecentActivity>.from(
        (json['recentActivities'] ?? []).map((e) => RecentActivity.fromJson(e)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mealsSaved': mealsSaved.toJson(),
      'kgDonated': kgDonated.toJson(),
      'totalDonationsCount': totalDonationsCount.toJson(),
      'recentActivities': recentActivities.map((e) => e.toJson()).toList(),
    };
  }
}

class MealsSaved {
  final int total;
  final String growthPercent;

  MealsSaved({required this.total, required this.growthPercent});

  factory MealsSaved.fromJson(Map<String, dynamic> json) {
    return MealsSaved(
      total: json['total'] ?? 0,
      growthPercent: json['growthPercent'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'total': total, 'growthPercent': growthPercent};
  }
}

class KgDonated {
  final int total;
  final String growthPercent;

  KgDonated({required this.total, required this.growthPercent});

  factory KgDonated.fromJson(Map<String, dynamic> json) {
    return KgDonated(
      total: json['total'] ?? 0,
      growthPercent: json['growthPercent'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'total': total, 'growthPercent': growthPercent};
  }
}

class TotalDonationsCount {
  final int total;
  final String growthPercent;

  TotalDonationsCount({required this.total, required this.growthPercent});

  factory TotalDonationsCount.fromJson(Map<String, dynamic> json) {
    return TotalDonationsCount(
      total: json['total'] ?? 0,
      growthPercent: json['growthPercent'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {'total': total, 'growthPercent': growthPercent};
  }
}

class RecentActivity {
  final String id;
  final String title;
  final int quantity;
  final String unit;
  final String status;
  final DateTime createdAt;

  RecentActivity({
    required this.id,
    required this.title,
    required this.quantity,
    required this.unit,
    required this.status,
    required this.createdAt,
  });

  factory RecentActivity.fromJson(Map<String, dynamic> json) {
    return RecentActivity(
      id: json['_id'],
      title: json['title'],
      quantity: json['quantity'],
      unit: json['unit'],
      status: json['status'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'title': title,
      'quantity': quantity,
      'unit': unit,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
