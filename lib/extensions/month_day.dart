class MonthDay {
  MonthDay(this.month, this.day);

  factory MonthDay.fromValue(String value) {
    final values = value.split('-');
    return MonthDay(int.tryParse(values[0]) ?? 0, int.tryParse(values[1]) ?? 0);
  }

  final int month;
  final int day;
  String get value => '$month-$day';
  DateTime get toDateTime => DateTime.now().copyWith(month: month, day: day);

  @override
  String toString() => '$month月$day日';
}
