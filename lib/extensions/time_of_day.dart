import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  String get toFormattedString =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

  int get toMinutes => hour * 60 + minute;
}
