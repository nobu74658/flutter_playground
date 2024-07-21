import 'package:flutter_playground/extensions/month_day.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formatDate => DateFormat('yyyy年M月d日').format(this);
  String get monthDay => DateFormat('M月d日').format(this);
  MonthDay get toMonthDay => MonthDay(month, day);
}

extension DateTimeListExtension on List<DateTime> {
  bool isContainSameDay(DateTime day) => any(
        (date) =>
            date.year == day.year &&
            date.month == day.month &&
            date.day == day.day,
      );

  DateTime get mostPastDate =>
      fold(null, (previousValue, element) {
        if (previousValue == null) {
          return element;
        }
        if (element.isBefore(previousValue)) {
          return element;
        }
        return previousValue;
      }) ??
      DateTime.now();
}
