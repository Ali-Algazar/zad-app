class EndPoints {
  static const String register = "auth/register";
  static const String login = "auth/login";
  static const String getMe = "auth/profile";
  static const String updateFcmToken = "auth/fcm-token";
  static const String createDonation = "donations";
  static const String nearbyDonations = "donations/nearby";
  static const String myOrders = "orders/my-orders";
  static String claimDonation(String id) => "orders/claim/$id";
  static String completeOrder(String id) => "orders/complete/$id";
  static const String getUserNotifications = "notifications";
  static const String markAllNotificationsRead = "notifications/mark-all-read";
  static String markNotificationAsRead(String id) => "notifications/$id/read";
  static const String submitComplaint = "complaints";
}
