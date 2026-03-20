String timeAgo(String date) {
  final DateTime parsedDate = DateTime.parse(date).toLocal();
  final Duration diff = DateTime.now().difference(parsedDate);

  if (diff.inMinutes < 1) {
    return "منذ ${diff.inSeconds} ثانية";
  } else if (diff.inHours < 1) {
    return "منذ ${diff.inMinutes} دقيقة";
  } else if (diff.inDays < 1) {
    return "منذ ${diff.inHours} ساعة";
  } else {
    return "منذ ${diff.inDays} يوم";
  }
}
