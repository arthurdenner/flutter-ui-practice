String formatHour(num value) {
  final hour = value.toInt();

  return hour > 12 ? '${hour - 12}:00 PM' : '$hour:00 AM';
}
