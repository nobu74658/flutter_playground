import 'package:flutter/material.dart';
import 'package:flutter_playground/extensions/time_of_day.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const timeOfDayConverter = TimeOfDayConverter();

class TimeOfDayConverter implements JsonConverter<TimeOfDay, Object> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(Object json) =>
      TimeOfDay(hour: (json as int) ~/ 60, minute: json % 60);

  @override
  Object toJson(TimeOfDay object) => object.toMinutes;
}
