import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/month_day.dart';

const monthDayConverter = MonthDayConverter();

class MonthDayConverter implements JsonConverter<MonthDay?, Object?> {
  const MonthDayConverter();

  @override
  MonthDay? fromJson(Object? json) {
    if (json is String) {
      return MonthDay.fromValue(json);
    }
    return null;
  }

  @override
  Object? toJson(MonthDay? object) {
    if (object == null) {
      return null;
    } else {
      return object.value;
    }
  }
}
