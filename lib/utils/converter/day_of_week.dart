import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_playground/extensions/day_of_week.dart';

const dayOfWeekConverter = DayOfWeekConverter();

class DayOfWeekConverter implements JsonConverter<DayOfWeek, Object> {
  const DayOfWeekConverter();

  @override
  DayOfWeek fromJson(Object json) {
    if (json is int) {
      return DayOfWeek.fromValue(json);
    }
    return DayOfWeek.unknown;
  }

  @override
  Object toJson(DayOfWeek object) => object.value;
}
