extension IntExtension on int {
  String get toTimeString => toString().padLeft(2, '0');

  String get minuteToTimeString {
    final hour = this ~/ 60;
    final minute = this % 60;
    return '${hour.toTimeString}:${minute.toTimeString}';
  }

  String get toWeightString {
    if (this < 1000) {
      return '${this}g';
    } else {
      return '${(this / 1000).toStringAsFixed(1)}kg';
    }
  }
}
